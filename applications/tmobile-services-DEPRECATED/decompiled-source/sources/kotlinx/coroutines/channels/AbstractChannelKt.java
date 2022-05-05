package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.internal.Symbol;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n��\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a%\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002\"\u0004\b��\u0010��*\u0004\u0018\u00010\u0001H\u0082\bø\u0001��¢\u0006\u0004\b\u0003\u0010\u0004\u001a'\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002\"\u0004\b��\u0010��*\u0006\u0012\u0002\b\u00030\u0005H\u0082\bø\u0001��¢\u0006\u0004\b\u0003\u0010\u0006\"\u001c\u0010\u0007\u001a\u00020\u00018��@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u0007\u0010\b\u0012\u0004\b\t\u0010\n\"\u001c\u0010\u000b\u001a\u00020\u00018��@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u000b\u0010\b\u0012\u0004\b\f\u0010\n\"\u001c\u0010\r\u001a\u00020\u00018��@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\r\u0010\b\u0012\u0004\b\u000e\u0010\n\"\u001c\u0010\u000f\u001a\u00020\u00018��@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u000f\u0010\b\u0012\u0004\b\u0010\u0010\n\"\u001c\u0010\u0011\u001a\u00020\u00018��@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b\u0011\u0010\b\u0012\u0004\b\u0012\u0010\n\"\u0016\u0010\u0014\u001a\u00020\u00138��@��X\u0080T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015\"\u0016\u0010\u0016\u001a\u00020\u00138��@��X\u0080T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0015\"\u0016\u0010\u0017\u001a\u00020\u00138��@��X\u0080T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0015*(\b��\u0010\u001b\"\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0012\u0004\u0012\u00020\u001a0\u00182\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0019\u0012\u0004\u0012\u00020\u001a0\u0018\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"E", "", "Lkotlinx/coroutines/channels/ValueOrClosed;", "toResult", "(Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/Closed;", "(Lkotlinx/coroutines/channels/Closed;)Ljava/lang/Object;", "ENQUEUE_FAILED", "Ljava/lang/Object;", "getENQUEUE_FAILED$annotations", "()V", "HANDLER_INVOKED", "getHANDLER_INVOKED$annotations", "OFFER_FAILED", "getOFFER_FAILED$annotations", "OFFER_SUCCESS", "getOFFER_SUCCESS$annotations", "POLL_FAILED", "getPOLL_FAILED$annotations", "", "RECEIVE_NULL_ON_CLOSE", "I", "RECEIVE_RESULT", "RECEIVE_THROWS_ON_CLOSE", "Lkotlin/Function1;", "", "", "Handler", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/AbstractChannelKt.class */
public final class AbstractChannelKt {
    @JvmField
    @NotNull

    /* renamed from: a */
    public static final Object f21298a = new Symbol("OFFER_SUCCESS");
    @JvmField
    @NotNull

    /* renamed from: b */
    public static final Object f21299b = new Symbol("OFFER_FAILED");
    @JvmField
    @NotNull

    /* renamed from: c */
    public static final Object f21300c = new Symbol("POLL_FAILED");
    @JvmField
    @NotNull

    /* renamed from: d */
    public static final Object f21301d = new Symbol("ENQUEUE_FAILED");
    @JvmField
    @NotNull

    /* renamed from: e */
    public static final Object f21302e = new Symbol("ON_CLOSE_HANDLER_INVOKED");
}
