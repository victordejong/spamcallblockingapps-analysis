package androidx.media2.exoplayer.external.upstream;

import androidx.media2.exoplayer.external.util.ac;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/d.class */
public abstract class d implements f {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f4052a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<w> f4053b = new ArrayList<>(1);

    /* renamed from: c  reason: collision with root package name */
    private int f4054c;

    /* renamed from: d  reason: collision with root package name */
    private h f4055d;

    public d(boolean z) {
        this.f4052a = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(int i) {
        ac.a(this.f4055d);
        for (int i2 = 0; i2 < this.f4054c; i2++) {
            this.f4053b.get(i2).a(this.f4052a, i);
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public final void a(w wVar) {
        if (!this.f4053b.contains(wVar)) {
            this.f4053b.add(wVar);
            this.f4054c++;
        }
    }

    @Override // androidx.media2.exoplayer.external.upstream.f
    public Map b() {
        return Collections.emptyMap();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(h hVar) {
        this.f4055d = hVar;
        for (int i = 0; i < this.f4054c; i++) {
            this.f4053b.get(i).a(this.f4052a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void d() {
        for (int i = 0; i < this.f4054c; i++) {
            this.f4053b.get(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e() {
        ac.a(this.f4055d);
        for (int i = 0; i < this.f4054c; i++) {
            this.f4053b.get(i).b(this.f4052a);
        }
        this.f4055d = null;
    }
}
