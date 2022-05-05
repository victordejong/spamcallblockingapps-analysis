package zendesk.support.request;

import java.io.Serializable;
import zendesk.suas.State;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateAndroidLifecycle.class */
class StateAndroidLifecycle implements Serializable {
    public static final int STARTED = 1;
    public static final int STOPPED = 2;
    private final int state;

    public StateAndroidLifecycle() {
        this.state = 1;
    }

    public StateAndroidLifecycle(int i) {
        this.state = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StateAndroidLifecycle fromState(State state) {
        StateAndroidLifecycle stateAndroidLifecycle = (StateAndroidLifecycle) state.getState(StateAndroidLifecycle.class);
        return stateAndroidLifecycle != null ? stateAndroidLifecycle : new StateAndroidLifecycle();
    }

    public int getState() {
        return this.state;
    }

    public String toString() {
        return "AndroidLifeCycle{state=" + this.state + '}';
    }
}
