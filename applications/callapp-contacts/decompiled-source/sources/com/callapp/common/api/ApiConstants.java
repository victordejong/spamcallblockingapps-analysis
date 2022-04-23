package com.callapp.common.api;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import okhttp3.internal.ws.WebSocketProtocol;
/* loaded from: classes-dex2jar.jar:com/callapp/common/api/ApiConstants.class */
public interface ApiConstants {

    /* renamed from: a  reason: collision with root package name */
    public static final Integer[] f10377a;

    /* renamed from: b  reason: collision with root package name */
    public static final Set<Integer> f10378b;

    /* renamed from: c  reason: collision with root package name */
    public static final Integer[] f10379c = {1, 4, 5, 6, 7, 9, 10};

    /* renamed from: d  reason: collision with root package name */
    public static final Integer[] f10380d;
    public static final Set<Integer> e;

    static {
        Integer[] numArr = {1004, Integer.valueOf((int) WebSocketProtocol.CLOSE_NO_STATUS_CODE), 1006, 1007, 1008, 1009, 1010, 1011, 1022};
        f10377a = numArr;
        f10378b = new HashSet(Arrays.asList(numArr));
        Integer[] numArr2 = {1, 2, 4, 5, 6, 7, 9, 8, 10};
        f10380d = numArr2;
        e = new HashSet(Arrays.asList(numArr2));
    }
}
