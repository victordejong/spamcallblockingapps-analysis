package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import p081h.p203i.p384e.AbstractC10102h;
import p081h.p203i.p384e.AbstractC10103i;
import p081h.p203i.p384e.AbstractC10104j;
import p081h.p203i.p384e.AbstractC10111q;
import p081h.p203i.p384e.AbstractC10112r;
import p081h.p203i.p384e.AbstractC10117u;
import p081h.p203i.p384e.p386w.C10123a;
import p081h.p203i.p384e.p386w.C10157k;
import p081h.p203i.p384e.p390x.C10173a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/TreeTypeAdapter.class */
public final class TreeTypeAdapter<T> extends TypeAdapter<T> {

    /* renamed from: a */
    public final AbstractC10112r<T> f7876a;

    /* renamed from: b */
    public final AbstractC10103i<T> f7877b;

    /* renamed from: c */
    public final Gson f7878c;

    /* renamed from: d */
    public final C10173a<T> f7879d;

    /* renamed from: e */
    public final AbstractC10117u f7880e;

    /* renamed from: f */
    public final TreeTypeAdapter<T>.C3697b f7881f = new C3697b();

    /* renamed from: g */
    public TypeAdapter<T> f7882g;

    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory.class */
    public static final class SingleTypeFactory implements AbstractC10117u {

        /* renamed from: a */
        public final C10173a<?> f7883a;

        /* renamed from: b */
        public final boolean f7884b;

        /* renamed from: c */
        public final Class<?> f7885c;

        /* renamed from: d */
        public final AbstractC10112r<?> f7886d;

        /* renamed from: e */
        public final AbstractC10103i<?> f7887e;

        public SingleTypeFactory(Object obj, C10173a<?> aVar, boolean z, Class<?> cls) {
            AbstractC10103i<?> iVar = null;
            this.f7886d = obj instanceof AbstractC10112r ? (AbstractC10112r) obj : null;
            this.f7887e = obj instanceof AbstractC10103i ? (AbstractC10103i) obj : iVar;
            C10123a.m13354a((this.f7886d == null && this.f7887e == null) ? false : true);
            this.f7883a = aVar;
            this.f7884b = z;
            this.f7885c = cls;
        }

        @Override // p081h.p203i.p384e.AbstractC10117u
        public <T> TypeAdapter<T> create(Gson gson, C10173a<T> aVar) {
            C10173a<?> aVar2 = this.f7883a;
            return aVar2 != null ? aVar2.equals(aVar) || (this.f7884b && this.f7883a.m13276b() == aVar.m13280a()) : this.f7885c.isAssignableFrom(aVar.m13280a()) ? new TreeTypeAdapter(this.f7886d, this.f7887e, gson, aVar, this) : null;
        }
    }

    /* renamed from: com.google.gson.internal.bind.TreeTypeAdapter$b */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/TreeTypeAdapter$b.class */
    public final class C3697b implements AbstractC10111q, AbstractC10102h {
        public C3697b(TreeTypeAdapter treeTypeAdapter) {
        }
    }

    public TreeTypeAdapter(AbstractC10112r<T> rVar, AbstractC10103i<T> iVar, Gson gson, C10173a<T> aVar, AbstractC10117u uVar) {
        this.f7876a = rVar;
        this.f7877b = iVar;
        this.f7878c = gson;
        this.f7879d = aVar;
        this.f7880e = uVar;
    }

    /* renamed from: a */
    public static AbstractC10117u m30941a(C10173a<?> aVar, Object obj) {
        return new SingleTypeFactory(obj, aVar, aVar.m13276b() == aVar.m13280a(), null);
    }

    /* renamed from: a */
    public final TypeAdapter<T> m30942a() {
        TypeAdapter<T> typeAdapter = this.f7882g;
        if (typeAdapter == null) {
            typeAdapter = this.f7878c.m30996a(this.f7880e, this.f7879d);
            this.f7882g = typeAdapter;
        }
        return typeAdapter;
    }

    @Override // com.google.gson.TypeAdapter
    public T read(C10174a aVar) throws IOException {
        if (this.f7877b == null) {
            return m30942a().read(aVar);
        }
        AbstractC10104j a = C10157k.m13302a(aVar);
        if (a.m13376t()) {
            return null;
        }
        return this.f7877b.mo13381a(a, this.f7879d.m13276b(), this.f7881f);
    }

    @Override // com.google.gson.TypeAdapter
    public void write(C10177c cVar, T t) throws IOException {
        AbstractC10112r<T> rVar = this.f7876a;
        if (rVar == null) {
            m30942a().write(cVar, t);
        } else if (t == null) {
            cVar.mo13214k();
        } else {
            C10157k.m13303a(rVar.m13356a(t, this.f7879d.m13276b(), this.f7881f), cVar);
        }
    }
}
