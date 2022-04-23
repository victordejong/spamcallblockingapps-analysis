package androidx.media2.exoplayer.external.source;

import androidx.media2.exoplayer.external.al;
import androidx.media2.exoplayer.external.source.t;
import androidx.media2.exoplayer.external.upstream.b;
import androidx.media2.exoplayer.external.upstream.w;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/MergingMediaSource.class */
public final class MergingMediaSource extends d<Integer> {

    /* renamed from: a  reason: collision with root package name */
    private final t[] f3486a;

    /* renamed from: b  reason: collision with root package name */
    private final al[] f3487b;

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<t> f3488c;

    /* renamed from: d  reason: collision with root package name */
    private final g f3489d;
    private int e;
    private IllegalMergeException f;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/MergingMediaSource$IllegalMergeException.class */
    public static final class IllegalMergeException extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final int f3490a;

        public IllegalMergeException(int i) {
            this.f3490a = i;
        }
    }

    public MergingMediaSource(g gVar, t... tVarArr) {
        this.f3486a = tVarArr;
        this.f3489d = gVar;
        this.f3488c = new ArrayList<>(Arrays.asList(tVarArr));
        this.e = -1;
        this.f3487b = new al[tVarArr.length];
    }

    public MergingMediaSource(t... tVarArr) {
        this(new k(), tVarArr);
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final s a(t.a aVar, b bVar, long j) {
        int length = this.f3486a.length;
        s[] sVarArr = new s[length];
        int a2 = this.f3487b[0].a(aVar.f3748a);
        for (int i = 0; i < length; i++) {
            sVarArr[i] = this.f3486a[i].a(aVar.a(this.f3487b[i].a(a2)), bVar, j);
        }
        return new ae(this.f3489d, sVarArr);
    }

    @Override // androidx.media2.exoplayer.external.source.d
    protected final /* synthetic */ t.a a(Integer num, t.a aVar) {
        if (num.intValue() == 0) {
            return aVar;
        }
        return null;
    }

    @Override // androidx.media2.exoplayer.external.source.t
    public final void a(s sVar) {
        ae aeVar = (ae) sVar;
        int i = 0;
        while (true) {
            t[] tVarArr = this.f3486a;
            if (i < tVarArr.length) {
                tVarArr[i].a(aeVar.f3539a[i]);
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media2.exoplayer.external.source.d, androidx.media2.exoplayer.external.source.b
    public final void a(w wVar) {
        super.a(wVar);
        for (int i = 0; i < this.f3486a.length; i++) {
            a((MergingMediaSource) Integer.valueOf(i), this.f3486a[i]);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.d
    protected final /* synthetic */ void a(Integer num, t tVar, al alVar) {
        IllegalMergeException illegalMergeException;
        Integer num2 = num;
        if (this.f == null) {
            if (this.e == -1) {
                this.e = alVar.c();
            } else if (alVar.c() != this.e) {
                illegalMergeException = new IllegalMergeException(0);
                this.f = illegalMergeException;
            }
            illegalMergeException = null;
            this.f = illegalMergeException;
        }
        if (this.f == null) {
            this.f3488c.remove(tVar);
            this.f3487b[num2.intValue()] = alVar;
            if (this.f3488c.isEmpty()) {
                a(this.f3487b[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media2.exoplayer.external.source.d, androidx.media2.exoplayer.external.source.b
    public final void c() {
        super.c();
        Arrays.fill(this.f3487b, (Object) null);
        this.e = -1;
        this.f = null;
        this.f3488c.clear();
        Collections.addAll(this.f3488c, this.f3486a);
    }

    @Override // androidx.media2.exoplayer.external.source.b, androidx.media2.exoplayer.external.source.t
    public final Object e() {
        t[] tVarArr = this.f3486a;
        if (tVarArr.length > 0) {
            return tVarArr[0].e();
        }
        return null;
    }

    @Override // androidx.media2.exoplayer.external.source.d, androidx.media2.exoplayer.external.source.t
    public final void f() throws IOException {
        IllegalMergeException illegalMergeException = this.f;
        if (illegalMergeException == null) {
            super.f();
            return;
        }
        throw illegalMergeException;
    }
}
