package p626l.p631e0;

import p626l.p641z.p643d.C15145g;
/* renamed from: l.e0.m */
/* loaded from: classes3-dex2jar.jar:l/e0/m.class */
public enum EnumC14954m implements AbstractC14941e {
    IGNORE_CASE(2, 0, 2, null),
    /* JADX INFO: Fake field, exist only in values array */
    MULTILINE(8, 0, 2, null),
    /* JADX INFO: Fake field, exist only in values array */
    LITERAL(16, 0, 2, null),
    /* JADX INFO: Fake field, exist only in values array */
    UNIX_LINES(1, 0, 2, null),
    /* JADX INFO: Fake field, exist only in values array */
    COMMENTS(4, 0, 2, null),
    /* JADX INFO: Fake field, exist only in values array */
    DOT_MATCHES_ALL(32, 0, 2, null),
    /* JADX INFO: Fake field, exist only in values array */
    CANON_EQ(128, 0, 2, null);
    

    /* renamed from: a */
    public final int f33001a;

    EnumC14954m(int i, int i2) {
        this.f33001a = i;
    }

    /* synthetic */ EnumC14954m(int i, int i2, int i3, C15145g gVar) {
        this(i, (i3 & 2) != 0 ? i : i2);
    }

    /* renamed from: a */
    public int m737a() {
        return this.f33001a;
    }
}
