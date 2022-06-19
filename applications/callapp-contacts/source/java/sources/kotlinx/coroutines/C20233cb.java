package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.internal.C20296v;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010��\n\u0002\b\u0002\u001a\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016*\u0004\u0018\u00010\u0016H��\u001a\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0016*\u0004\u0018\u00010\u0016H��\"\u0016\u0010��\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0003\"\u0016\u0010\u0006\u001a\u00020\u00018��X\u0081\u0004¢\u0006\b\n��\u0012\u0004\b\u0007\u0010\u0003\"\u0016\u0010\b\u001a\u00020\t8\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\n\u0010\u0003\"\u0016\u0010\u000b\u001a\u00020\t8\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\f\u0010\u0003\"\u000e\u0010\r\u001a\u00020\u000eX\u0082T¢\u0006\u0002\n��\"\u000e\u0010\u000f\u001a\u00020\u000eX\u0082T¢\u0006\u0002\n��\"\u0016\u0010\u0010\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0011\u0010\u0003\"\u0016\u0010\u0012\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0013\u0010\u0003\"\u000e\u0010\u0014\u001a\u00020\u000eX\u0082T¢\u0006\u0002\n��¨\u0006\u0018"}, m4298d2 = {"COMPLETING_ALREADY", "Lkotlinx/coroutines/internal/Symbol;", "getCOMPLETING_ALREADY$annotations", "()V", "COMPLETING_RETRY", "getCOMPLETING_RETRY$annotations", "COMPLETING_WAITING_CHILDREN", "getCOMPLETING_WAITING_CHILDREN$annotations", "EMPTY_ACTIVE", "Lkotlinx/coroutines/Empty;", "getEMPTY_ACTIVE$annotations", "EMPTY_NEW", "getEMPTY_NEW$annotations", "FALSE", "", "RETRY", "SEALED", "getSEALED$annotations", "TOO_LATE_TO_CANCEL", "getTOO_LATE_TO_CANCEL$annotations", "TRUE", "boxIncomplete", "", "unboxState", "kotlinx-coroutines-core"}, m4297k = 2, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.cb */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/cb.class */
public final class C20233cb {

    /* renamed from: b */
    private static final C20296v f66688b = new C20296v("COMPLETING_ALREADY");

    /* renamed from: a */
    public static final C20296v f66687a = new C20296v("COMPLETING_WAITING_CHILDREN");

    /* renamed from: c */
    private static final C20296v f66689c = new C20296v("COMPLETING_RETRY");

    /* renamed from: d */
    private static final C20296v f66690d = new C20296v("TOO_LATE_TO_CANCEL");

    /* renamed from: e */
    private static final C20296v f66691e = new C20296v("SEALED");

    /* renamed from: f */
    private static final C20195be f66692f = new C20195be(false);

    /* renamed from: g */
    private static final C20195be f66693g = new C20195be(true);

    /* renamed from: a */
    public static final Object m929a(Object obj) {
        return obj instanceof AbstractC20213bq ? new C20214br((AbstractC20213bq) obj) : obj;
    }

    /* renamed from: b */
    public static final Object m927b(Object obj) {
        C20214br c20214br = (C20214br) (!(obj instanceof C20214br) ? null : obj);
        AbstractC20213bq abstractC20213bq = obj;
        if (c20214br != null) {
            abstractC20213bq = c20214br.f66661a;
            if (abstractC20213bq == null) {
                abstractC20213bq = obj;
            }
        }
        return abstractC20213bq;
    }

    /* renamed from: b */
    public static final /* synthetic */ C20195be m928b() {
        return f66693g;
    }
}
