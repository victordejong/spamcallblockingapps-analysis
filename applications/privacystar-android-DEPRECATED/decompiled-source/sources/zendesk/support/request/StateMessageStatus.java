package zendesk.support.request;

import java.io.Serializable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/support/request/StateMessageStatus.class */
public class StateMessageStatus implements Serializable {
    static final int DELIVERED = 2;
    static final int ERROR = 1;
    static final int PENDING = 3;
    private final String errorResponse;
    private final int status;

    private StateMessageStatus(int i, String str) {
        this.status = i;
        this.errorResponse = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StateMessageStatus delivered() {
        return new StateMessageStatus(2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StateMessageStatus error(String str) {
        return new StateMessageStatus(1, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static StateMessageStatus pending() {
        return new StateMessageStatus(3, null);
    }

    String getErrorResponse() {
        return this.errorResponse;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getStatus() {
        return this.status;
    }

    public String toString() {
        String str;
        switch (this.status) {
            case 1:
                str = "Error";
                break;
            case 2:
                str = "Delivered";
                break;
            case 3:
                str = "Pending";
                break;
            default:
                str = "Unknown";
                break;
        }
        return "MessageState{status=" + str + ", errorResponse=" + this.errorResponse + '}';
    }
}
