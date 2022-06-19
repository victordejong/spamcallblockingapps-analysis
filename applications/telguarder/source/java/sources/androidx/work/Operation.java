package androidx.work;

import androidx.lifecycle.LiveData;
import com.google.common.util.concurrent.ListenableFuture;
/* loaded from: classes-dex2jar.jar:androidx/work/Operation.class */
public interface Operation {
    public static final State.SUCCESS SUCCESS = new State.SUCCESS();
    public static final State.IN_PROGRESS IN_PROGRESS = new State.IN_PROGRESS();

    /* loaded from: classes-dex2jar.jar:androidx/work/Operation$State.class */
    public static abstract class State {

        /* loaded from: classes-dex2jar.jar:androidx/work/Operation$State$FAILURE.class */
        public static final class FAILURE extends State {
            private final Throwable mThrowable;

            public FAILURE(Throwable th) {
                this.mThrowable = th;
            }

            public Throwable getThrowable() {
                return this.mThrowable;
            }

            public String toString() {
                return String.format("FAILURE (%s)", this.mThrowable.getMessage());
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/work/Operation$State$IN_PROGRESS.class */
        public static final class IN_PROGRESS extends State {
            private IN_PROGRESS() {
            }

            public String toString() {
                return "IN_PROGRESS";
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/work/Operation$State$SUCCESS.class */
        public static final class SUCCESS extends State {
            private SUCCESS() {
            }

            public String toString() {
                return "SUCCESS";
            }
        }

        State() {
        }
    }

    ListenableFuture<State.SUCCESS> getResult();

    LiveData<State> getState();
}
