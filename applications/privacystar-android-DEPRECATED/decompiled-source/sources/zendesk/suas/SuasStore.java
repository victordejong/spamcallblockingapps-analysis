package zendesk.suas;

import android.support.annotation.NonNull;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import zendesk.suas.CombinedReducer;
import zendesk.suas.Listeners;
/* loaded from: classes3-dex2jar.jar:zendesk/suas/SuasStore.class */
class SuasStore implements Store {
    private final Filter defaultFilter;
    private final Executor executor;
    private final CombinedMiddleware middleware;
    private final CombinedReducer reducer;
    private State state;
    private final AtomicBoolean isReducing = new AtomicBoolean(false);
    private final Set<Listener<Action<?>>> actionListener = Collections.synchronizedSet(new HashSet());
    private final Map<Listener, Listeners.StateListener> listenerStateListenerMap = new ConcurrentHashMap();

    /* loaded from: classes3-dex2jar.jar:zendesk/suas/SuasStore$ActionListenerSubscription.class */
    private class ActionListenerSubscription implements Subscription {
        private final Listener<Action<?>> listener;

        private ActionListenerSubscription(Listener<Action<?>> listener) {
            this.listener = listener;
        }

        @Override // zendesk.suas.Subscription
        public void addListener() {
            SuasStore.this.actionListener.add(this.listener);
        }

        @Override // zendesk.suas.Subscription
        public void informWithCurrentState() {
        }

        @Override // zendesk.suas.Subscription
        public void removeListener() {
            SuasStore.this.removeListener(this.listener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:zendesk/suas/SuasStore$DefaultSubscription.class */
    public class DefaultSubscription implements Subscription {
        private final Listener listener;
        private final Listeners.StateListener stateListener;

        DefaultSubscription(Listeners.StateListener stateListener, Listener listener) {
            this.stateListener = stateListener;
            this.listener = listener;
        }

        @Override // zendesk.suas.Subscription
        public void addListener() {
            SuasStore.this.listenerStateListenerMap.put(this.listener, this.stateListener);
        }

        @Override // zendesk.suas.Subscription
        public void informWithCurrentState() {
            this.stateListener.update(null, SuasStore.this.getState(), true);
        }

        @Override // zendesk.suas.Subscription
        public void removeListener() {
            SuasStore.this.removeListener(this.listener);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SuasStore(State state, CombinedReducer combinedReducer, CombinedMiddleware combinedMiddleware, Filter<Object> filter, Executor executor) {
        this.state = state;
        this.reducer = combinedReducer;
        this.middleware = combinedMiddleware;
        this.defaultFilter = filter;
        this.executor = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyActionListener(Action<?> action) {
        for (Listener<Action<?>> listener : this.actionListener) {
            listener.update(action);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyListener(State state, State state2, Collection<String> collection) {
        for (Listeners.StateListener stateListener : this.listenerStateListenerMap.values()) {
            if (stateListener.getStateKey() == null || collection.contains(stateListener.getStateKey())) {
                stateListener.update(state, state2, false);
            }
        }
    }

    private Subscription registerListener(Listener listener, Listeners.StateListener stateListener) {
        DefaultSubscription defaultSubscription = new DefaultSubscription(stateListener, listener);
        defaultSubscription.addListener();
        return defaultSubscription;
    }

    @Override // zendesk.suas.Store
    public Subscription addActionListener(Listener<Action<?>> listener) {
        ActionListenerSubscription actionListenerSubscription = new ActionListenerSubscription(listener);
        actionListenerSubscription.addListener();
        return actionListenerSubscription;
    }

    @Override // zendesk.suas.Store
    public <E> Subscription addListener(@NonNull Class<E> cls, @NonNull Filter<E> filter, @NonNull Listener<E> listener) {
        return registerListener(listener, Listeners.create(cls, filter, listener));
    }

    @Override // zendesk.suas.Store
    public <E> Subscription addListener(@NonNull Class<E> cls, @NonNull Listener<E> listener) {
        return registerListener(listener, Listeners.create(cls, this.defaultFilter, listener));
    }

    @Override // zendesk.suas.Store
    public <E> Subscription addListener(@NonNull String str, @NonNull Class<E> cls, @NonNull Filter<E> filter, @NonNull Listener<E> listener) {
        return registerListener(listener, Listeners.create(str, cls, filter, listener));
    }

    @Override // zendesk.suas.Store
    public <E> Subscription addListener(@NonNull String str, @NonNull Class<E> cls, @NonNull Listener<E> listener) {
        return registerListener(listener, Listeners.create(str, cls, this.defaultFilter, listener));
    }

    @Override // zendesk.suas.Store
    public <E> Subscription addListener(@NonNull String str, @NonNull Filter<E> filter, @NonNull Listener<E> listener) {
        return registerListener(listener, Listeners.create(str, filter, listener));
    }

    @Override // zendesk.suas.Store
    public <E> Subscription addListener(@NonNull String str, @NonNull Listener<E> listener) {
        return registerListener(listener, Listeners.create(str, this.defaultFilter, listener));
    }

    @Override // zendesk.suas.Store
    public Subscription addListener(@NonNull Filter<State> filter, @NonNull Listener<State> listener) {
        return registerListener(listener, Listeners.create(filter, listener));
    }

    @Override // zendesk.suas.Store
    public <E> Subscription addListener(@NonNull Filter<State> filter, @NonNull StateSelector<E> stateSelector, @NonNull Listener<E> listener) {
        return registerListener(listener, Listeners.create(stateSelector, filter, listener));
    }

    @Override // zendesk.suas.Store
    public Subscription addListener(@NonNull Listener<State> listener) {
        return registerListener(listener, Listeners.create(this.defaultFilter, listener));
    }

    @Override // zendesk.suas.Store
    public <E> Subscription addListener(@NonNull StateSelector<E> stateSelector, @NonNull Listener<E> listener) {
        return registerListener(listener, Listeners.create(stateSelector, this.defaultFilter, listener));
    }

    @Override // zendesk.suas.Dispatcher
    public void dispatch(@NonNull final Action action) {
        synchronized (this) {
            this.executor.execute(new Runnable() { // from class: zendesk.suas.SuasStore.1
                @Override // java.lang.Runnable
                public void run() {
                    SuasStore.this.notifyActionListener(action);
                    SuasStore.this.middleware.onAction(action, SuasStore.this, SuasStore.this, new Continuation() { // from class: zendesk.suas.SuasStore.1.1
                        @Override // zendesk.suas.Continuation
                        public void next(@NonNull Action<?> action2) {
                            if (SuasStore.this.isReducing.compareAndSet(false, true)) {
                                State state = SuasStore.this.getState();
                                CombinedReducer.ReduceResult reduce = SuasStore.this.reducer.reduce(SuasStore.this.getState(), action2);
                                SuasStore.this.state = reduce.getNewState();
                                SuasStore.this.isReducing.set(false);
                                SuasStore.this.notifyListener(state, SuasStore.this.getState(), reduce.getUpdatedKeys());
                                return;
                            }
                            throw new RuntimeException("You must not dispatch actions in your reducer. Seriously. (╯°□°）╯︵ ┻━┻");
                        }
                    });
                }
            });
        }
    }

    @Override // zendesk.suas.GetState
    @NonNull
    public State getState() {
        return this.state.copy();
    }

    @Override // zendesk.suas.Store
    public void removeListener(@NonNull Listener listener) {
        this.listenerStateListenerMap.remove(listener);
        this.actionListener.remove(listener);
    }

    @Override // zendesk.suas.Store
    public void reset(@NonNull State state) {
        State state2 = getState();
        this.state = State.mergeStates(this.reducer.getEmptyState(), state);
        notifyListener(state2, this.state, this.reducer.getAllKeys());
    }
}
