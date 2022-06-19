package com.callapp.common.api;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import okhttp3.internal.p578ws.WebSocketProtocol;
/* loaded from: classes-dex2jar.jar:com/callapp/common/api/ApiConstants.class */
public interface ApiConstants {

    /* renamed from: a */
    public static final Integer[] f19114a;

    /* renamed from: b */
    public static final Set<Integer> f19115b;

    /* renamed from: c */
    public static final Integer[] f19116c = {1, 4, 5, 6, 7, 9, 10};

    /* renamed from: d */
    public static final Integer[] f19117d;

    /* renamed from: e */
    public static final Set<Integer> f19118e;

    static {
        Integer[] numArr = {1004, Integer.valueOf((int) WebSocketProtocol.CLOSE_NO_STATUS_CODE), 1006, 1007, 1008, 1009, 1010, 1011, 1022};
        f19114a = numArr;
        f19115b = new HashSet(Arrays.asList(numArr));
        Integer[] numArr2 = {1, 2, 4, 5, 6, 7, 9, 8, 10};
        f19117d = numArr2;
        f19118e = new HashSet(Arrays.asList(numArr2));
    }
}
