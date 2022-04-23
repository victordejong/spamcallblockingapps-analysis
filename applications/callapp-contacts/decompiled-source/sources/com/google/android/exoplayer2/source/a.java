package com.google.android.exoplayer2.source;

import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.al;
import com.google.android.exoplayer2.drm.c;
import com.google.android.exoplayer2.source.r;
import com.google.android.exoplayer2.source.s;
import com.google.android.exoplayer2.upstream.v;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/source/a.class */
public abstract class a implements r {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<r.b> f21532a = new ArrayList<>(1);

    /* renamed from: b  reason: collision with root package name */
    private final HashSet<r.b> f21533b = new HashSet<>(1);

    /* renamed from: c  reason: collision with root package name */
    private final s.a f21534c = new s.a();

    /* renamed from: d  reason: collision with root package name */
    private final c.a f21535d = new c.a();
    private Looper e;
    private al f;

    /* JADX INFO: Access modifiers changed from: protected */
    public final s.a a(int i, r.a aVar) {
        return this.f21534c.a(i, aVar, 0L);
    }

    public final s.a a(r.a aVar) {
        return this.f21534c.a(0, aVar, 0L);
    }

    protected void a() {
    }

    @Override // com.google.android.exoplayer2.source.r
    public final void a(Handler handler, c cVar) {
        com.google.android.exoplayer2.util.a.b(handler);
        com.google.android.exoplayer2.util.a.b(cVar);
        this.f21535d.a(handler, cVar);
    }

    @Override // com.google.android.exoplayer2.source.r
    public final void a(Handler handler, s sVar) {
        com.google.android.exoplayer2.util.a.b(handler);
        com.google.android.exoplayer2.util.a.b(sVar);
        this.f21534c.a(handler, sVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(al alVar) {
        this.f = alVar;
        Iterator<r.b> it2 = this.f21532a.iterator();
        while (it2.hasNext()) {
            it2.next().onSourceInfoRefreshed(this, alVar);
        }
    }

    @Override // com.google.android.exoplayer2.source.r
    public final void a(r.b bVar) {
        com.google.android.exoplayer2.util.a.b(this.e);
        boolean isEmpty = this.f21533b.isEmpty();
        this.f21533b.add(bVar);
        if (isEmpty) {
            a();
        }
    }

    @Override // com.google.android.exoplayer2.source.r
    public final void a(r.b bVar, v vVar) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.e;
        com.google.android.exoplayer2.util.a.a(looper == null || looper == myLooper);
        al alVar = this.f;
        this.f21532a.add(bVar);
        if (this.e == null) {
            this.e = myLooper;
            this.f21533b.add(bVar);
            a(vVar);
        } else if (alVar != null) {
            a(bVar);
            bVar.onSourceInfoRefreshed(this, alVar);
        }
    }

    @Override // com.google.android.exoplayer2.source.r
    public final void a(s sVar) {
        s.a aVar = this.f21534c;
        Iterator<s.a.C0436a> it2 = aVar.f21643c.iterator();
        while (it2.hasNext()) {
            s.a.C0436a next = it2.next();
            if (next.f21646b == sVar) {
                aVar.f21643c.remove(next);
            }
        }
    }

    protected abstract void a(v vVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public final c.a b(int i, r.a aVar) {
        return this.f21535d.a(i, aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final c.a b(r.a aVar) {
        return this.f21535d.a(0, aVar);
    }

    protected void b() {
    }

    @Override // com.google.android.exoplayer2.source.r
    public final void b(r.b bVar) {
        boolean isEmpty = this.f21533b.isEmpty();
        this.f21533b.remove(bVar);
        if ((!isEmpty) && this.f21533b.isEmpty()) {
            b();
        }
    }

    protected abstract void c();

    @Override // com.google.android.exoplayer2.source.r
    public final void c(r.b bVar) {
        this.f21532a.remove(bVar);
        if (this.f21532a.isEmpty()) {
            this.e = null;
            this.f = null;
            this.f21533b.clear();
            c();
            return;
        }
        b(bVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean d() {
        return !this.f21533b.isEmpty();
    }
}
