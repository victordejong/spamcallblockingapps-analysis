package org.mistergroup.shouldianswer.model;

import java.util.NoSuchElementException;
import kotlin.p081e.p083b.C1691e;
/* renamed from: org.mistergroup.shouldianswer.model.af */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/af.class */
public enum EnumC2393af {
    UNKNOWN(0),
    NONE(1),
    PASSIVE(2),
    ACTIVE(3);
    

    /* renamed from: e */
    public static final C2394a f6917e = new C2394a(null);

    /* renamed from: g */
    private final int f6919g;

    /* renamed from: org.mistergroup.shouldianswer.model.af$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/af$a.class */
    public static final class C2394a {
        private C2394a() {
        }

        public /* synthetic */ C2394a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final EnumC2393af m1316a(int i) {
            EnumC2393af[] values;
            for (EnumC2393af enumC2393af : EnumC2393af.values()) {
                if (enumC2393af.m1317a() == i) {
                    return enumC2393af;
                }
            }
            throw new NoSuchElementException("Array contains no element matching the predicate.");
        }
    }

    EnumC2393af(int i) {
        this.f6919g = i;
    }

    /* renamed from: a */
    public final int m1317a() {
        return this.f6919g;
    }
}
