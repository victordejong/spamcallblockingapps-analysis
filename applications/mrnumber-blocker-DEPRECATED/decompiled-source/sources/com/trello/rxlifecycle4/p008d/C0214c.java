package com.trello.rxlifecycle4.p008d;

import com.trello.rxlifecycle4.C0211c;
import com.trello.rxlifecycle4.b;
import i.c.b0.b.v;
import p033i.p064c.p066b0.p072d.AbstractC0493o;
/* renamed from: com.trello.rxlifecycle4.d.c */
/* loaded from: classes2-dex2jar.jar:com/trello/rxlifecycle4/d/c.class */
public class C0214c {

    /* renamed from: a */
    private static final AbstractC0493o<EnumC0212a, EnumC0212a> f456a = new a();

    /* renamed from: b */
    private static final AbstractC0493o<EnumC0213b, EnumC0213b> f457b = new b();

    /* renamed from: com.trello.rxlifecycle4.d.c$c */
    /* loaded from: classes2-dex2jar.jar:com/trello/rxlifecycle4/d/c$c.class */
    static /* synthetic */ class C0215c {

        /* renamed from: a */
        static final /* synthetic */ int[] f458a;

        /* renamed from: b */
        static final /* synthetic */ int[] f459b;

        static {
            int[] iArr = new int[EnumC0213b.values().length];
            f459b = iArr;
            iArr[EnumC0213b.ATTACH.ordinal()] = 1;
            f459b[EnumC0213b.CREATE.ordinal()] = 2;
            f459b[EnumC0213b.CREATE_VIEW.ordinal()] = 3;
            f459b[EnumC0213b.START.ordinal()] = 4;
            f459b[EnumC0213b.RESUME.ordinal()] = 5;
            f459b[EnumC0213b.PAUSE.ordinal()] = 6;
            f459b[EnumC0213b.STOP.ordinal()] = 7;
            f459b[EnumC0213b.DESTROY_VIEW.ordinal()] = 8;
            f459b[EnumC0213b.DESTROY.ordinal()] = 9;
            f459b[EnumC0213b.DETACH.ordinal()] = 10;
            int[] iArr2 = new int[EnumC0212a.values().length];
            f458a = iArr2;
            iArr2[EnumC0212a.CREATE.ordinal()] = 1;
            f458a[EnumC0212a.START.ordinal()] = 2;
            f458a[EnumC0212a.RESUME.ordinal()] = 3;
            f458a[EnumC0212a.PAUSE.ordinal()] = 4;
            f458a[EnumC0212a.STOP.ordinal()] = 5;
            f458a[EnumC0212a.DESTROY.ordinal()] = 6;
        }
    }

    /* renamed from: a */
    public static <T> b<T> m684a(v<EnumC0212a> vVar) {
        return C0211c.m686b(vVar, f456a);
    }

    /* renamed from: b */
    public static <T> b<T> m683b(v<EnumC0213b> vVar) {
        return C0211c.m686b(vVar, f457b);
    }
}
