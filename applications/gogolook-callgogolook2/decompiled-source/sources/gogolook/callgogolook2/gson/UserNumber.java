package gogolook.callgogolook2.gson;

import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/UserNumber.class */
public class UserNumber {
    public static final String DISPLAY_STATUS = "display_status";
    public static final String PAID_STATUS = "paid_status";
    public static final String PROCESS_STATUS = "process_status";
    public static final String VERSION = "version";
    public static UserNumber sInstance;
    public ArrayList<UserNumber> mUserNumberList;
    public String name = "";
    public String number = "";
    public int display_status = 0;
    public int version = 3;
    public int process_status = -1;
    public int paid_status = 1;

    /* renamed from: b */
    public static UserNumber m28148b() {
        if (sInstance == null) {
            sInstance = new UserNumber();
        }
        return sInstance;
    }

    /* renamed from: a */
    public ArrayList<UserNumber> m28149a() {
        return this.mUserNumberList;
    }
}
