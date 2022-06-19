package kotlin.p530f;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018�� \u00142\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0014B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\u0011\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0003H\u0096\u0002J\u0013\u0010\r\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0003H\u0016J\b\u0010\u0011\u001a\u00020\u000bH\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0014\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\b¨\u0006\u0015"}, m4298d2 = {"Lkotlin/ranges/IntRange;", "Lkotlin/ranges/IntProgression;", "Lkotlin/ranges/ClosedRange;", "", EventConstants.START, "endInclusive", "(II)V", "getEndInclusive", "()Ljava/lang/Integer;", "getStart", "contains", "", "value", "equals", "other", "", "hashCode", "isEmpty", "toString", "", "Companion", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.f.c */
/* loaded from: classes5-dex2jar.jar:kotlin/f/c.class */
public final class C18361c extends C18358a {

    /* renamed from: e */
    public static final C18362a f63466e = new C18362a(null);

    /* renamed from: f */
    private static final C18361c f63467f = new C18361c(1, 0);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m4298d2 = {"Lkotlin/ranges/IntRange$Companion;", "", "()V", "EMPTY", "Lkotlin/ranges/IntRange;", "getEMPTY", "()Lkotlin/ranges/IntRange;", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.f.c$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/f/c$a.class */
    public static final class C18362a {
        private C18362a() {
        }

        public /* synthetic */ C18362a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public C18361c(int i, int i2) {
        super(i, i2, 1);
    }

    @Override // kotlin.p530f.C18358a
    /* renamed from: a */
    public final boolean mo4058a() {
        return this.f63459a > this.f63460b;
    }

    @Override // kotlin.p530f.C18358a
    public final boolean equals(Object obj) {
        if (obj instanceof C18361c) {
            if (mo4058a() && ((C18361c) obj).mo4058a()) {
                return true;
            }
            C18361c c18361c = (C18361c) obj;
            return this.f63459a == c18361c.f63459a && this.f63460b == c18361c.f63460b;
        }
        return false;
    }

    @Override // kotlin.p530f.C18358a
    public final int hashCode() {
        if (mo4058a()) {
            return -1;
        }
        return (this.f63459a * 31) + this.f63460b;
    }

    @Override // kotlin.p530f.C18358a
    public final String toString() {
        return this.f63459a + ".." + this.f63460b;
    }
}
