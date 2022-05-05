package zendesk.support.request;

import java.io.Serializable;
import zendesk.suas.State;
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateProgress.class */
class StateProgress implements Serializable {
    private final int runningRequests;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateProgress() {
        this.runningRequests = 0;
    }

    StateProgress(int i) {
        this.runningRequests = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StateProgress fomState(State state) {
        StateProgress stateProgress = (StateProgress) state.getState(StateProgress.class);
        return stateProgress != null ? stateProgress : new StateProgress();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateProgress decrement() {
        return this.runningRequests > 0 ? new StateProgress(this.runningRequests - 1) : new StateProgress(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getRunningRequests() {
        return this.runningRequests;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StateProgress increment() {
        return new StateProgress(this.runningRequests + 1);
    }

    public String toString() {
        return "Progress{runningRequests=" + this.runningRequests + '}';
    }
}
