package junit.framework;
/* loaded from: classes2-dex2jar.jar:junit/framework/AssertionFailedError.class */
public class AssertionFailedError extends AssertionError {
    private static final long serialVersionUID = 1;

    public AssertionFailedError() {
    }

    public AssertionFailedError(String str) {
        super(defaultString(str));
    }

    private static String defaultString(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }
}
