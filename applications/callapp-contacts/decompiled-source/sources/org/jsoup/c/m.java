package org.jsoup.c;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import org.jsoup.a.c;
import org.jsoup.c.i;
import org.jsoup.nodes.b;
import org.jsoup.nodes.f;
import org.jsoup.nodes.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:org/jsoup/c/m.class */
public abstract class m {

    /* renamed from: a  reason: collision with root package name */
    private i.g f39252a = new i.g();

    /* renamed from: b  reason: collision with root package name */
    private i.f f39253b = new i.f();
    protected g r;
    a s;
    k t;
    protected f u;
    protected ArrayList<h> v;
    protected String w;
    protected i x;
    protected f y;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract f a();

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Reader reader, String str, g gVar) {
        c.a(reader, "String input must not be null");
        c.a((Object) str, "BaseURI must not be null");
        f fVar = new f(str);
        this.u = fVar;
        fVar.f39266b = gVar;
        this.r = gVar;
        this.y = gVar.f39229b;
        a aVar = new a(reader);
        this.s = aVar;
        this.x = null;
        this.t = new k(aVar, gVar.f39228a);
        this.v = new ArrayList<>(32);
        this.w = str;
    }

    public boolean a(String str, b bVar) {
        i.g gVar = this.f39252a;
        if (this.x == gVar) {
            return a(new i.g().a(str, bVar));
        }
        gVar.a();
        gVar.a(str, bVar);
        return a(gVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean a(i iVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final f b(Reader reader, String str, g gVar) {
        i.b bVar;
        a(reader, str, gVar);
        k kVar = this.t;
        i.EnumC0750i iVar = i.EnumC0750i.EOF;
        while (true) {
            if (!kVar.e) {
                kVar.f39250c.read(kVar, kVar.f39249b);
            } else {
                StringBuilder sb = kVar.g;
                if (sb.length() != 0) {
                    String sb2 = sb.toString();
                    sb.delete(0, sb.length());
                    kVar.f = null;
                    i.b bVar2 = kVar.l;
                    bVar2.f39236b = sb2;
                    bVar = bVar2;
                } else if (kVar.f != null) {
                    i.b bVar3 = kVar.l;
                    bVar3.f39236b = kVar.f;
                    kVar.f = null;
                    bVar = bVar3;
                } else {
                    kVar.e = false;
                    bVar = kVar.f39251d;
                }
                a(bVar);
                bVar.a();
                if (bVar.f39235a == iVar) {
                    break;
                }
            }
        }
        a aVar = this.s;
        if (aVar.f39209b != null) {
            try {
                aVar.f39209b.close();
            } catch (IOException e) {
            } catch (Throwable th) {
                aVar.f39209b = null;
                aVar.f39208a = null;
                aVar.g = null;
                throw th;
            }
            aVar.f39209b = null;
            aVar.f39208a = null;
            aVar.g = null;
        }
        this.s = null;
        this.t = null;
        this.v = null;
        return this.u;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean l(String str) {
        i.g gVar = this.f39252a;
        return this.x == gVar ? a(new i.g().a(str)) : a(gVar.a().a(str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean m(String str) {
        i iVar = this.x;
        i.f fVar = this.f39253b;
        return iVar == fVar ? a(new i.f().a(str)) : a(fVar.a().a(str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void n(String str) {
        e eVar = this.r.f39228a;
        if (eVar.a()) {
            eVar.add(new d(this.s.b(), str));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final h p() {
        int size = this.v.size();
        if (size > 0) {
            return this.v.get(size - 1);
        }
        return null;
    }
}
