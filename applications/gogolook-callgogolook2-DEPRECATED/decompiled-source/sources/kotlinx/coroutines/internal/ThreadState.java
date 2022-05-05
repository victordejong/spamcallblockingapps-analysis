package kotlinx.coroutines.internal;

import androidx.media2.exoplayer.external.text.webvtt.WebvttCueParser;
import com.flurry.sdk.C3478n;
import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.p634w.AbstractC15049g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0002\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001J\u0006\u0010\u0010\u001a\u00020\u000eJ\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001R\u0018\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\bX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0012"}, m815d2 = {"Lkotlinx/coroutines/internal/ThreadState;", "", "context", "Lkotlin/coroutines/CoroutineContext;", C3478n.f5989a, "", "(Lkotlin/coroutines/CoroutineContext;I)V", "a", "", "[Ljava/lang/Object;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", WebvttCueParser.TAG_ITALIC, "append", "", C13032a.f29462d, "start", "take", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/ThreadState.class */
public final class ThreadState {

    /* renamed from: a */
    public Object[] f32928a;
    public final AbstractC15049g context;

    /* renamed from: i */
    public int f32929i;

    public ThreadState(AbstractC15049g gVar, int i) {
        this.context = gVar;
        this.f32928a = new Object[i];
    }

    public final void append(Object obj) {
        Object[] objArr = this.f32928a;
        int i = this.f32929i;
        this.f32929i = i + 1;
        objArr[i] = obj;
    }

    public final AbstractC15049g getContext() {
        return this.context;
    }

    public final void start() {
        this.f32929i = 0;
    }

    public final Object take() {
        Object[] objArr = this.f32928a;
        int i = this.f32929i;
        this.f32929i = i + 1;
        return objArr[i];
    }
}
