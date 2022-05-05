package zendesk.support.request;

import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import java.util.LinkedList;
import java.util.concurrent.atomic.AtomicBoolean;
import zendesk.suas.Action;
import zendesk.suas.Continuation;
import zendesk.suas.Dispatcher;
import zendesk.suas.GetState;
import zendesk.suas.Middleware;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/AsyncMiddleware.class */
public class AsyncMiddleware implements Middleware {
    private static final String ACTION_TYPE = "async_action";
    private static final String LOG_TAG = "AsyncMiddleware";
    private final Queue queue;

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AsyncMiddleware$AsyncAction.class */
    interface AsyncAction {
        void actionQueued(Dispatcher dispatcher, GetState getState);

        void execute(Dispatcher dispatcher, GetState getState, Callback callback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AsyncMiddleware$Callback.class */
    public interface Callback {
        void done();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AsyncMiddleware$Item.class */
    public interface Item {
        void execute(Callback callback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AsyncMiddleware$Queue.class */
    public static class Queue {
        private final Callback dispatchCallback;
        private final AtomicBoolean isRunning;
        private final java.util.Queue<Item> items;

        /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AsyncMiddleware$Queue$QueueCallback.class */
        private class QueueCallback implements Callback {
            private QueueCallback() {
            }

            @Override // zendesk.support.request.AsyncMiddleware.Callback
            public void done() {
                synchronized (Queue.this.items) {
                    Item item = (Item) Queue.this.items.poll();
                }
                Queue.this.dispatchInternal();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Queue() {
            this.items = new LinkedList();
            this.isRunning = new AtomicBoolean(false);
            this.dispatchCallback = new QueueCallback();
        }

        @VisibleForTesting
        Queue(LinkedList<Item> linkedList) {
            this.items = linkedList;
            this.isRunning = new AtomicBoolean(false);
            this.dispatchCallback = new QueueCallback();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dispatchInternal() {
            Item item;
            synchronized (this.items) {
                if (!this.items.isEmpty()) {
                    item = this.items.peek();
                } else {
                    this.isRunning.set(false);
                    item = null;
                }
            }
            if (item != null) {
                item.execute(this.dispatchCallback);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void dispatch(Item item) {
            if (item != null) {
                synchronized (this.items) {
                    this.items.add(item);
                }
                if (this.isRunning.compareAndSet(false, true)) {
                    dispatchInternal();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean isRunning() {
            return this.isRunning.get();
        }
    }

    /* loaded from: classes3-dex2jar.jar:zendesk/support/request/AsyncMiddleware$QueueItem.class */
    private static class QueueItem implements Item {
        private final AsyncAction asyncAction;
        private final Dispatcher dispatcher;
        private final GetState getState;

        private QueueItem(AsyncAction asyncAction, GetState getState, Dispatcher dispatcher) {
            this.asyncAction = asyncAction;
            this.getState = getState;
            this.dispatcher = dispatcher;
        }

        @Override // zendesk.support.request.AsyncMiddleware.Item
        public void execute(Callback callback) {
            this.asyncAction.execute(this.dispatcher, this.getState, callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AsyncMiddleware(Queue queue) {
        this.queue = queue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Action createAction(AsyncAction asyncAction) {
        return new Action(ACTION_TYPE, asyncAction);
    }

    @Override // zendesk.suas.Middleware
    public void onAction(@NonNull Action<?> action, @NonNull GetState getState, @NonNull Dispatcher dispatcher, @NonNull Continuation continuation) {
        AsyncAction asyncAction = (AsyncAction) action.getData(AsyncAction.class);
        if (asyncAction != null) {
            asyncAction.actionQueued(dispatcher, getState);
            this.queue.dispatch(new QueueItem(asyncAction, getState, dispatcher));
            return;
        }
        continuation.next(action);
    }
}
