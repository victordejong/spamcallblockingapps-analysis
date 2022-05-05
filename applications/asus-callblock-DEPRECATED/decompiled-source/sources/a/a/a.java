package a.a;

import a.a.c.b;
import a.a.c.c;
import a.a.c.e;
import com.asus.updatesdk.BuildConfig;
import java.io.IOException;
import java.util.Map;
import java.util.Random;
import java.util.SortedSet;
/* loaded from: classes-dex2jar.jar:a/a/a.class */
public abstract class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private String f1a;

    /* renamed from: b  reason: collision with root package name */
    private String f2b;
    private String c;
    private c d;
    private a.a.b.a f;
    private a.a.b.a g;
    private boolean h;
    private final Random i = new Random(System.nanoTime());
    private e e = new a.a.c.a();

    public a(String str, String str2) {
        this.f1a = str;
        this.f2b = str2;
        b bVar = new b();
        this.d = bVar;
        bVar.f5a = this.f2b;
    }

    private a.a.b.b a(a.a.b.b bVar) {
        synchronized (this) {
            if (this.f1a == null) {
                throw new a.a.a.c("consumer key not set");
            } else if (this.f2b == null) {
                throw new a.a.a.c("consumer secret not set");
            } else {
                this.g = new a.a.b.a();
                try {
                    if (this.f != null) {
                        this.g.a((Map<? extends String, ? extends SortedSet<String>>) this.f, false);
                    }
                    this.g.a((Map<? extends String, ? extends SortedSet<String>>) b.c(bVar.a("Authorization")), false);
                    a.a.b.a aVar = this.g;
                    String b2 = bVar.b();
                    int indexOf = b2.indexOf(63);
                    if (indexOf >= 0) {
                        aVar.a((Map<? extends String, ? extends SortedSet<String>>) b.b(b2.substring(indexOf + 1)), true);
                    }
                    a.a.b.a aVar2 = this.g;
                    String d = bVar.d();
                    if (d != null && d.startsWith("application/x-www-form-urlencoded")) {
                        aVar2.a((Map<? extends String, ? extends SortedSet<String>>) b.a(bVar.c()), true);
                    }
                    a.a.b.a aVar3 = this.g;
                    if (!aVar3.containsKey("oauth_consumer_key")) {
                        aVar3.a("oauth_consumer_key", this.f1a, true);
                    }
                    if (!aVar3.containsKey("oauth_signature_method")) {
                        aVar3.a("oauth_signature_method", this.d.a(), true);
                    }
                    if (!aVar3.containsKey("oauth_timestamp")) {
                        aVar3.a("oauth_timestamp", Long.toString(System.currentTimeMillis() / 1000), true);
                    }
                    if (!aVar3.containsKey("oauth_nonce")) {
                        aVar3.a("oauth_nonce", Long.toString(this.i.nextLong()), true);
                    }
                    if (!aVar3.containsKey("oauth_version")) {
                        aVar3.a("oauth_version", BuildConfig.VERSION_NAME, true);
                    }
                    if (!aVar3.containsKey("oauth_token") && ((this.c != null && !this.c.equals(BuildConfig.FLAVOR)) || this.h)) {
                        aVar3.a("oauth_token", this.c, true);
                    }
                    this.g.remove("oauth_signature");
                    String a2 = this.d.a(bVar, this.g);
                    b.a("signature", a2);
                    this.e.a(a2, bVar, this.g);
                    b.a("Request URL", bVar.b());
                } catch (IOException e) {
                    throw new a.a.a.a(e);
                }
            }
        }
        return bVar;
    }

    public abstract a.a.b.b a(Object obj);

    @Override // a.a.c
    public final void a(String str, String str2) {
        this.c = str;
        this.d.f6b = str2;
    }

    @Override // a.a.c
    public final a.a.b.b b(Object obj) {
        a.a.b.b a2;
        synchronized (this) {
            a2 = a(a(obj));
        }
        return a2;
    }
}
