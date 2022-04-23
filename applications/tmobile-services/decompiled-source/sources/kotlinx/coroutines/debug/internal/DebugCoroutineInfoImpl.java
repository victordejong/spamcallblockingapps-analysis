package kotlinx.coroutines.debug.internal;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\b��\u0018��B#\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0015\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b1\u00102J\u0015\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0013\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\u000f\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u00062\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\nH��¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0012\u001a\u00020\f*\b\u0012\u0004\u0012\u00020\u00020\u00102\b\u0010\u000b\u001a\u0004\u0018\u00010\u0011H\u0082Pø\u0001��¢\u0006\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0015\u0010\u001d\u001a\u0004\u0018\u00010\u00158F@\u0006¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u001b\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u0019\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u00018F@\u0006¢\u0006\u0006\u001a\u0004\b#\u0010\u0004R(\u0010)\u001a\u0004\u0018\u00010\u00112\b\u0010$\u001a\u0004\u0018\u00010\u00118@@@X\u0080\u000e¢\u0006\f\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0018\u0010+\u001a\u0004\u0018\u00010*8��@��X\u0081\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010.\u001a\u00020-8��@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0013\u0010\t\u001a\u00020\u00068F@\u0006¢\u0006\u0006\u001a\u0004\b0\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u00063"}, d2 = {"Lkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl;", "", "Ljava/lang/StackTraceElement;", "creationStackTrace", "()Ljava/util/List;", "lastObservedStackTrace", "", "toString", "()Ljava/lang/String;", "state", "Lkotlin/coroutines/Continuation;", "frame", "", "updateState$kotlinx_coroutines_core", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V", "updateState", "Lkotlin/sequences/SequenceScope;", "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "yieldFrames", "(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Ljava/lang/ref/WeakReference;", "Lkotlin/coroutines/CoroutineContext;", "_context", "Ljava/lang/ref/WeakReference;", "_lastObservedFrame", "_state", "Ljava/lang/String;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/debug/internal/StackTraceFrame;", "creationStackBottom", "Lkotlinx/coroutines/debug/internal/StackTraceFrame;", "getCreationStackBottom", "()Lkotlinx/coroutines/debug/internal/StackTraceFrame;", "getCreationStackTrace", FirebaseAnalytics.Param.VALUE, "getLastObservedFrame$kotlinx_coroutines_core", "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;", "setLastObservedFrame$kotlinx_coroutines_core", "(Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)V", "lastObservedFrame", "Ljava/lang/Thread;", "lastObservedThread", "Ljava/lang/Thread;", "", "sequenceNumber", "J", "getState", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/debug/internal/StackTraceFrame;J)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl.class */
public final class DebugCoroutineInfoImpl {

    /* renamed from: a */
    private final WeakReference<CoroutineContext> f22260a;

    /* renamed from: b */
    private String f22261b;

    /* renamed from: c */
    private WeakReference<CoroutineStackFrame> f22262c;
    @JvmField

    /* renamed from: d */
    public final long f22263d;

    @Nullable
    /* renamed from: a */
    public final CoroutineContext m757a() {
        return this.f22260a.get();
    }

    @Nullable
    /* renamed from: b */
    public final CoroutineStackFrame m756b() {
        WeakReference<CoroutineStackFrame> weakReference = this.f22262c;
        return weakReference != null ? weakReference.get() : null;
    }

    @NotNull
    /* renamed from: c */
    public final String m755c() {
        return this.f22261b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0110  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x00b2 -> B:28:0x00f7). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00e0 -> B:27:0x00ea). Please submit an issue!!! */
    @org.jetbrains.annotations.Nullable
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m754d(@org.jetbrains.annotations.NotNull kotlin.sequences.SequenceScope<? super java.lang.StackTraceElement> r6, @org.jetbrains.annotations.Nullable kotlin.coroutines.jvm.internal.CoroutineStackFrame r7, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl.m754d(kotlin.sequences.SequenceScope, kotlin.coroutines.jvm.internal.CoroutineStackFrame, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @NotNull
    public String toString() {
        return "DebugCoroutineInfo(state=" + m755c() + ",context=" + m757a() + ')';
    }
}
