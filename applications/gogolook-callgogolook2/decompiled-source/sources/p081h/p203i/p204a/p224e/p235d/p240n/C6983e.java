package p081h.p203i.p204a.p224e.p235d.p240n;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import androidx.collection.ArraySet;
import com.google.android.gms.common.api.Scope;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p290p.C9109a;
/* renamed from: h.i.a.e.d.n.e */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/e.class */
public final class C6983e {

    /* renamed from: a */
    public final Account f17095a;

    /* renamed from: b */
    public final Set<Scope> f17096b;

    /* renamed from: c */
    public final Set<Scope> f17097c;

    /* renamed from: d */
    public final Map<C6805a<?>, C6985b> f17098d;

    /* renamed from: e */
    public final String f17099e;

    /* renamed from: f */
    public final String f17100f;

    /* renamed from: g */
    public final C9109a f17101g;

    /* renamed from: h */
    public final boolean f17102h;

    /* renamed from: i */
    public Integer f17103i;

    /* renamed from: h.i.a.e.d.n.e$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/e$a.class */
    public static final class C6984a {

        /* renamed from: a */
        public Account f17104a;

        /* renamed from: b */
        public ArraySet<Scope> f17105b;

        /* renamed from: c */
        public Map<C6805a<?>, C6985b> f17106c;

        /* renamed from: e */
        public View f17108e;

        /* renamed from: f */
        public String f17109f;

        /* renamed from: g */
        public String f17110g;

        /* renamed from: i */
        public boolean f17112i;

        /* renamed from: d */
        public int f17107d = 0;

        /* renamed from: h */
        public C9109a f17111h = C9109a.f20786i;

        /* renamed from: a */
        public final C6984a m21384a(Account account) {
            this.f17104a = account;
            return this;
        }

        /* renamed from: a */
        public final C6984a m21383a(String str) {
            this.f17110g = str;
            return this;
        }

        /* renamed from: a */
        public final C6984a m21382a(Collection<Scope> collection) {
            if (this.f17105b == null) {
                this.f17105b = new ArraySet<>();
            }
            this.f17105b.addAll(collection);
            return this;
        }

        /* renamed from: a */
        public final C6983e m21385a() {
            return new C6983e(this.f17104a, this.f17105b, this.f17106c, this.f17107d, this.f17108e, this.f17109f, this.f17110g, this.f17111h, this.f17112i);
        }

        /* renamed from: b */
        public final C6984a m21381b(String str) {
            this.f17109f = str;
            return this;
        }
    }

    /* renamed from: h.i.a.e.d.n.e$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/e$b.class */
    public static final class C6985b {

        /* renamed from: a */
        public final Set<Scope> f17113a;
    }

    public C6983e(Account account, Set<Scope> set, Map<C6805a<?>, C6985b> map, int i, View view, String str, String str2, C9109a aVar, boolean z) {
        this.f17095a = account;
        this.f17096b = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.f17098d = map == null ? Collections.EMPTY_MAP : map;
        this.f17099e = str;
        this.f17100f = str2;
        this.f17101g = aVar;
        this.f17102h = z;
        HashSet hashSet = new HashSet(this.f17096b);
        for (C6985b bVar : this.f17098d.values()) {
            hashSet.addAll(bVar.f17113a);
        }
        this.f17097c = Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: a */
    public static C6983e m21398a(Context context) {
        return new AbstractC6825f.C6826a(context).m21818b();
    }

    @Nullable
    /* renamed from: a */
    public final Account m21399a() {
        return this.f17095a;
    }

    /* renamed from: a */
    public final Set<Scope> m21397a(C6805a<?> aVar) {
        C6985b bVar = this.f17098d.get(aVar);
        if (bVar == null || bVar.f17113a.isEmpty()) {
            return this.f17096b;
        }
        HashSet hashSet = new HashSet(this.f17096b);
        hashSet.addAll(bVar.f17113a);
        return hashSet;
    }

    /* renamed from: a */
    public final void m21396a(Integer num) {
        this.f17103i = num;
    }

    @Nullable
    @Deprecated
    /* renamed from: b */
    public final String m21395b() {
        Account account = this.f17095a;
        if (account != null) {
            return account.name;
        }
        return null;
    }

    /* renamed from: c */
    public final Account m21394c() {
        Account account = this.f17095a;
        return account != null ? account : new Account("<<default account>>", "com.google");
    }

    /* renamed from: d */
    public final Set<Scope> m21393d() {
        return this.f17097c;
    }

    @Nullable
    /* renamed from: e */
    public final Integer m21392e() {
        return this.f17103i;
    }

    /* renamed from: f */
    public final Map<C6805a<?>, C6985b> m21391f() {
        return this.f17098d;
    }

    @Nullable
    /* renamed from: g */
    public final String m21390g() {
        return this.f17100f;
    }

    @Nullable
    /* renamed from: h */
    public final String m21389h() {
        return this.f17099e;
    }

    /* renamed from: i */
    public final Set<Scope> m21388i() {
        return this.f17096b;
    }

    @Nullable
    /* renamed from: j */
    public final C9109a m21387j() {
        return this.f17101g;
    }

    /* renamed from: k */
    public final boolean m21386k() {
        return this.f17102h;
    }
}
