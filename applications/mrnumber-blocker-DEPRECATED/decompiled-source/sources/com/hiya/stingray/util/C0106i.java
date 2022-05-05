package com.hiya.stingray.util;
/* renamed from: com.hiya.stingray.util.i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/i.class */
public class C0106i {

    /* renamed from: com.hiya.stingray.util.i$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/i$a.class */
    public enum EnumC0107a {
        INCOMING,
        OUTGOING,
        UNKNOWN
    }

    /* renamed from: com.hiya.stingray.util.i$b */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/i$b.class */
    public enum EnumC0108b {
        MISSED,
        UNRECOGNIZED,
        REJECTED
    }

    /* renamed from: a */
    public static EnumC0107a m965a(int i) {
        return i == 2 ? EnumC0107a.OUTGOING : EnumC0107a.INCOMING;
    }

    /* renamed from: b */
    public static EnumC0108b m964b(int i) {
        return i == 3 ? EnumC0108b.MISSED : i == 5 ? EnumC0108b.REJECTED : EnumC0108b.UNRECOGNIZED;
    }
}
