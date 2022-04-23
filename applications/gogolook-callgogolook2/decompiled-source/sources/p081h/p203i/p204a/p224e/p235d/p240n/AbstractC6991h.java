package p081h.p203i.p204a.p224e.p235d.p240n;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Scope;
import java.util.Set;
import p081h.p203i.p204a.p224e.p235d.C6790c;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d;
import p081h.p203i.p204a.p224e.p235d.p240n.C6993i;
/* renamed from: h.i.a.e.d.n.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/h.class */
public abstract class AbstractC6991h<T extends IInterface> extends AbstractC6969d<T> implements C6805a.AbstractC6816f, C6993i.AbstractC6994a {

    /* renamed from: B */
    public final C6983e f17117B;

    /* renamed from: C */
    public final Set<Scope> f17118C;

    /* renamed from: D */
    public final Account f17119D;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractC6991h(android.content.Context r11, android.os.Looper r12, int r13, p081h.p203i.p204a.p224e.p235d.p240n.C6983e r14, p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6827b r15, p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6828c r16) {
        /*
            r10 = this;
            r0 = r11
            h.i.a.e.d.n.j r0 = p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6996j.m21349a(r0)
            r17 = r0
            h.i.a.e.d.c r0 = p081h.p203i.p204a.p224e.p235d.C6790c.m21910a()
            r18 = r0
            r0 = r15
            java.lang.Object r0 = p081h.p203i.p204a.p224e.p235d.p240n.C7021t.m21290a(r0)
            r0 = r15
            h.i.a.e.d.k.f$b r0 = (p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6827b) r0
            r15 = r0
            r0 = r16
            java.lang.Object r0 = p081h.p203i.p204a.p224e.p235d.p240n.C7021t.m21290a(r0)
            r0 = r10
            r1 = r11
            r2 = r12
            r3 = r17
            r4 = r18
            r5 = r13
            r6 = r14
            r7 = r15
            r8 = r16
            h.i.a.e.d.k.f$c r8 = (p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f.AbstractC6828c) r8
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6991h.<init>(android.content.Context, android.os.Looper, int, h.i.a.e.d.n.e, h.i.a.e.d.k.f$b, h.i.a.e.d.k.f$c):void");
    }

    public AbstractC6991h(Context context, Looper looper, AbstractC6996j jVar, C6790c cVar, int i, C6983e eVar, AbstractC6825f.AbstractC6827b bVar, AbstractC6825f.AbstractC6828c cVar2) {
        super(context, looper, jVar, cVar, i, m21366a(bVar), m21365a(cVar2), eVar.m21390g());
        this.f17117B = eVar;
        this.f17119D = eVar.m21399a();
        Set<Scope> d = eVar.m21393d();
        m21363b(d);
        this.f17118C = d;
    }

    @Nullable
    /* renamed from: a */
    public static AbstractC6969d.AbstractC6970a m21366a(AbstractC6825f.AbstractC6827b bVar) {
        if (bVar == null) {
            return null;
        }
        return new C6986e0(bVar);
    }

    @Nullable
    /* renamed from: a */
    public static AbstractC6969d.AbstractC6971b m21365a(AbstractC6825f.AbstractC6828c cVar) {
        if (cVar == null) {
            return null;
        }
        return new C6988f0(cVar);
    }

    /* renamed from: D */
    public final C6983e m21367D() {
        return this.f17117B;
    }

    @NonNull
    /* renamed from: a */
    public Set<Scope> m21364a(@NonNull Set<Scope> set) {
        return set;
    }

    /* renamed from: b */
    public final Set<Scope> m21363b(@NonNull Set<Scope> set) {
        m21364a(set);
        for (Scope scope : set) {
            if (!set.contains(scope)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return set;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d, p081h.p203i.p204a.p224e.p235d.p236k.C6805a.AbstractC6816f
    /* renamed from: h */
    public int mo16071h() {
        return super.mo16071h();
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: o */
    public final Account mo21362o() {
        return this.f17119D;
    }

    @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC6969d
    /* renamed from: t */
    public final Set<Scope> mo21361t() {
        return this.f17118C;
    }
}
