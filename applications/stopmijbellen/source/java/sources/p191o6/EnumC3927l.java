package p191o6;

import com.google.protobuf.C1895k;
/* renamed from: o6.l */
/* loaded from: classes-dex2jar.jar:o6/l.class */
public enum EnumC3927l implements C1895k.AbstractC1896a {
    SESSION_VERBOSITY_NONE(0),
    GAUGES_AND_SYSTEM_EVENTS(1);
    

    /* renamed from: a */
    public final int f12415a;

    /* renamed from: o6.l$a */
    /* loaded from: classes-dex2jar.jar:o6/l$a.class */
    public static final class C3928a implements C1895k.AbstractC1897b {

        /* renamed from: a */
        public static final C1895k.AbstractC1897b f12416a = new C3928a();
    }

    EnumC3927l(int i) {
        this.f12415a = i;
    }

    /* renamed from: a */
    public static EnumC3927l m1623a(int i) {
        if (i != 0) {
            if (i == 1) {
                return GAUGES_AND_SYSTEM_EVENTS;
            }
            return null;
        }
        return SESSION_VERBOSITY_NONE;
    }

    @Override // com.google.protobuf.C1895k.AbstractC1896a
    /* renamed from: y */
    public final int mo1622y() {
        return this.f12415a;
    }
}
