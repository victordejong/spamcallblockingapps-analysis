package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.internal.v;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010��\n\u0002\b\u0002\u001a\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016*\u0004\u0018\u00010\u0016H��\u001a\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0016*\u0004\u0018\u00010\u0016H��\"\u0016\u0010��\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0003\"\u0016\u0010\u0006\u001a\u00020\u00018��X\u0081\u0004¢\u0006\b\n��\u0012\u0004\b\u0007\u0010\u0003\"\u0016\u0010\b\u001a\u00020\t8\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\n\u0010\u0003\"\u0016\u0010\u000b\u001a\u00020\t8\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\f\u0010\u0003\"\u000e\u0010\r\u001a\u00020\u000eX\u0082T¢\u0006\u0002\n��\"\u000e\u0010\u000f\u001a\u00020\u000eX\u0082T¢\u0006\u0002\n��\"\u0016\u0010\u0010\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0011\u0010\u0003\"\u0016\u0010\u0012\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0013\u0010\u0003\"\u000e\u0010\u0014\u001a\u00020\u000eX\u0082T¢\u0006\u0002\n��¨\u0006\u0018"}, d2 = {"COMPLETING_ALREADY", "Lkotlinx/coroutines/internal/Symbol;", "getCOMPLETING_ALREADY$annotations", "()V", "COMPLETING_RETRY", "getCOMPLETING_RETRY$annotations", "COMPLETING_WAITING_CHILDREN", "getCOMPLETING_WAITING_CHILDREN$annotations", "EMPTY_ACTIVE", "Lkotlinx/coroutines/Empty;", "getEMPTY_ACTIVE$annotations", "EMPTY_NEW", "getEMPTY_NEW$annotations", "FALSE", "", "RETRY", "SEALED", "getSEALED$annotations", "TOO_LATE_TO_CANCEL", "getTOO_LATE_TO_CANCEL$annotations", "TRUE", "boxIncomplete", "", "unboxState", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/cb.class */
public final class cb {

    /* renamed from: b  reason: collision with root package name */
    private static final v f38777b = new v("COMPLETING_ALREADY");

    /* renamed from: a  reason: collision with root package name */
    public static final v f38776a = new v("COMPLETING_WAITING_CHILDREN");

    /* renamed from: c  reason: collision with root package name */
    private static final v f38778c = new v("COMPLETING_RETRY");

    /* renamed from: d  reason: collision with root package name */
    private static final v f38779d = new v("TOO_LATE_TO_CANCEL");
    private static final v e = new v("SEALED");
    private static final be f = new be(false);
    private static final be g = new be(true);

    public static final Object a(Object obj) {
        return obj instanceof bq ? new br((bq) obj) : obj;
    }

    public static final Object b(Object obj) {
        br brVar = (br) (!(obj instanceof br) ? null : obj);
        Object obj2 = obj;
        if (brVar != null) {
            obj2 = brVar.f38753a;
            if (obj2 == null) {
                obj2 = obj;
            }
        }
        return obj2;
    }

    public static final /* synthetic */ be b() {
        return g;
    }
}
