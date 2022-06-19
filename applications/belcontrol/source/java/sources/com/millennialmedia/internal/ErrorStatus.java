package com.millennialmedia.internal;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/ErrorStatus.class */
public abstract class ErrorStatus {
    public static final int ADAPTER_NOT_FOUND = 1;
    public static final int DISPLAY_FAILED = 4;
    public static final int INIT_FAILED = 3;
    public static final int LOAD_FAILED = 5;
    public static final int LOAD_TIMED_OUT = 6;
    public static final int NO_NETWORK = 2;
    public static final int UNKNOWN = 7;
    public static final Map<Integer, String> errorCodes;
    private Throwable cause;
    private String description;
    private int errorCode;

    static {
        HashMap hashMap = new HashMap();
        errorCodes = hashMap;
        hashMap.put(1, "ADAPTER_NOT_FOUND");
        hashMap.put(2, "NO_NETWORK");
        hashMap.put(3, "INIT_FAILED");
        hashMap.put(4, "DISPLAY_FAILED");
        hashMap.put(5, "LOAD_FAILED");
        hashMap.put(6, "LOAD_TIMED_OUT");
        hashMap.put(7, "UNKNOWN");
    }

    public ErrorStatus(int i) {
        this(i, null);
    }

    public ErrorStatus(int i, String str) {
        this(i, str, null);
    }

    public ErrorStatus(int i, String str, Throwable th) {
        this.errorCode = i;
        this.description = str;
        this.cause = th;
    }

    public String getDescription() {
        return this.description;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        sb.append(this.errorCode);
        sb.append("]: [");
        sb.append(errorCodes.get(Integer.valueOf(this.errorCode)));
        sb.append("] ");
        String str2 = this.description;
        if (str2 == null) {
            str2 = "No additional details available.";
        }
        sb.append(str2);
        if (this.cause != null) {
            str = " caused by " + this.cause.getMessage();
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }
}
