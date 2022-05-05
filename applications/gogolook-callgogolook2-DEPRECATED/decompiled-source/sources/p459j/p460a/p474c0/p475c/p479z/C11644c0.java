package p459j.p460a.p474c0.p475c.p479z;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import p081h.p093b.p113e.AbstractC5694d;
import p081h.p093b.p113e.C5672a;
import p081h.p093b.p113e.C5673b;
import p081h.p093b.p113e.C5693c;
import p081h.p093b.p113e.C5700i;
import p081h.p093b.p113e.C5701j;
import p081h.p093b.p113e.C5703l;
import p081h.p093b.p113e.p114n.C5710b;
import p081h.p093b.p113e.p114n.C5713e;
import p081h.p093b.p113e.p114n.C5714f;
import p081h.p093b.p113e.p114n.C5715g;
import p459j.p460a.p474c0.p475c.p479z.C11656g;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12155e;
import p459j.p460a.p474c0.p499h.C12216t0;
import p459j.p460a.p582w0.C14108o4;
/* renamed from: j.a.c0.c.z.c0 */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/c0.class */
public class C11644c0 implements AbstractC11672r<C11649e0> {

    /* renamed from: a */
    public final Context f26145a;

    /* renamed from: b */
    public final C11647d0 f26146b;

    /* renamed from: c */
    public final List<C11651f0> f26147c = new ArrayList();

    /* renamed from: d */
    public C11649e0 f26148d;

    /* renamed from: j.a.c0.c.z.c0$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/c0$a.class */
    public class C11645a implements C11656g.AbstractC11657a {

        /* renamed from: a */
        public final CountDownLatch f26149a;

        public C11645a(CountDownLatch countDownLatch) {
            this.f26149a = countDownLatch;
        }

        @Override // p459j.p460a.p474c0.p475c.p479z.C11656g.AbstractC11657a
        /* renamed from: a */
        public void mo8695a() {
            if (C11644c0.this.f26147c.size() > 0) {
                C11644c0 c0Var = C11644c0.this;
                c0Var.f26148d = new C11649e0(c0Var.getKey(), C11644c0.this.f26147c);
            }
            this.f26149a.countDown();
        }

        @Override // p459j.p460a.p474c0.p475c.p479z.C11656g.AbstractC11657a
        /* renamed from: a */
        public void mo8694a(C11650f fVar) {
            Uri uri;
            C12151d.m7002b();
            String d = fVar.m24809d();
            List<C5673b.C5688o> j = fVar.m24803j();
            if (j == null || j.size() <= 0) {
                uri = null;
            } else {
                Iterator<C5673b.C5688o> it = j.iterator();
                Uri uri2 = null;
                while (true) {
                    uri = uri2;
                    if (!it.hasNext()) {
                        break;
                    }
                    byte[] b = it.next().m24756b();
                    if (b != null) {
                        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(b);
                        try {
                            uri = C12216t0.m6770a(byteArrayInputStream);
                            if (uri != null) {
                                try {
                                    byteArrayInputStream.close();
                                } catch (IOException e) {
                                }
                                break;
                            }
                            uri2 = uri;
                        } finally {
                            try {
                                byteArrayInputStream.close();
                            } catch (IOException e2) {
                            }
                        }
                    }
                }
            }
            Uri uri3 = uri;
            if (uri == null) {
                List<C5673b.C5687n> i = fVar.m24804i();
                String l = (i == null || i.size() <= 0) ? null : C14108o4.m2474l(i.get(0).m24758c());
                String str = l;
                if (l == null) {
                    List<C5673b.C5678e> e3 = fVar.m24808e();
                    str = l;
                    if (e3 != null) {
                        str = l;
                        if (e3.size() > 0) {
                            str = e3.get(0).m24797b();
                        }
                    }
                }
                uri3 = C12155e.m6976a((Uri) null, d, str, (String) null);
            }
            C11644c0.this.f26147c.add(new C11651f0(fVar, uri3));
        }

        @Override // p459j.p460a.p474c0.p475c.p479z.C11656g.AbstractC11657a
        public void onStart() {
        }
    }

    public C11644c0(Context context, C11647d0 d0Var) {
        this.f26146b = d0Var;
        this.f26145a = context;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
    /* renamed from: a */
    public int mo8662a() {
        return 3;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
    /* renamed from: a */
    public C11649e0 mo8661a(List<AbstractC11672r<C11649e0>> list) throws Exception {
        C12151d.m7002b();
        C12151d.m6999b(this.f26148d == null);
        C12151d.m7012a(0, this.f26147c.size());
        CountDownLatch countDownLatch = new CountDownLatch(1);
        if (m8723a(this.f26146b.f26152a, countDownLatch)) {
            countDownLatch.await(10000L, TimeUnit.MILLISECONDS);
            C11649e0 e0Var = this.f26148d;
            if (e0Var != null) {
                return e0Var;
            }
            throw new C5710b("Failure or timeout loading vcard");
        }
        throw new C5710b("Invalid vcard");
    }

    /* renamed from: a */
    public final boolean m8724a(Uri uri, int i, AbstractC5694d dVar, boolean z, List<String> list) throws C5713e {
        C12151d.m7002b();
        ContentResolver contentResolver = this.f26145a.getContentResolver();
        try {
            try {
                InputStream openInputStream = contentResolver.openInputStream(uri);
                C5700i iVar = new C5700i(i);
                iVar.m24695a(dVar);
                InputStream inputStream = openInputStream;
                try {
                    try {
                        iVar.m24694a(openInputStream);
                        if (openInputStream == null) {
                            return true;
                        }
                    } catch (C5715g e) {
                        try {
                            openInputStream.close();
                        } catch (IOException e2) {
                        }
                        if (dVar instanceof C11656g) {
                            ((C11656g) dVar).m8696e();
                        }
                        openInputStream = contentResolver.openInputStream(uri);
                        inputStream = openInputStream;
                        try {
                            C5701j jVar = new C5701j(i);
                            jVar.m24693a(dVar);
                            inputStream = openInputStream;
                            jVar.m24692a(openInputStream);
                            if (openInputStream == null) {
                                return true;
                            }
                        } catch (C5715g e3) {
                            throw new C5710b("vCard with unspported version.");
                        }
                    }
                    try {
                        openInputStream.close();
                        return true;
                    } catch (IOException e4) {
                        return true;
                    }
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException e5) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e6) {
                C12153d0.m6987b("MessagingApp", "IOException was emitted: " + e6.getMessage());
                if (list == null) {
                    return false;
                }
                list.add(uri.toString());
                return false;
            }
        } catch (C5714f e7) {
            if ((e7 instanceof C5713e) && z) {
                throw ((C5713e) e7);
            } else if (list == null) {
                return false;
            } else {
                list.add(uri.toString());
                return false;
            }
        } catch (C5710b e8) {
            if (list == null) {
                return false;
            }
            list.add(uri.toString());
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m8723a(Uri uri, CountDownLatch countDownLatch) {
        boolean z;
        C12151d.m7002b();
        AbstractC5694d cVar = new C5693c();
        C5703l lVar = new C5703l();
        try {
            z = m8724a(uri, 0, (AbstractC5694d) lVar, true, (List<String>) null);
        } catch (C5713e e) {
            try {
                z = m8724a(uri, lVar.m24678e(), cVar, false, (List<String>) null);
            } catch (C5713e e2) {
                C12153d0.m6987b("MessagingApp", "Must not reach here. " + e2);
                z = false;
            }
        }
        if (!z) {
            return false;
        }
        return m8722a(uri, true, lVar, (List<String>) null, countDownLatch);
    }

    /* renamed from: a */
    public final boolean m8722a(Uri uri, boolean z, C5703l lVar, List<String> list, CountDownLatch countDownLatch) {
        C12151d.m7002b();
        int e = lVar.m24678e();
        int i = e;
        if (e == 0) {
            i = C5672a.m24839a("default");
        }
        C11656g gVar = new C11656g(i, null);
        gVar.m8700a(new C11645a(countDownLatch));
        try {
            return m8724a(uri, i, (AbstractC5694d) gVar, false, (List<String>) null);
        } catch (C5713e e2) {
            C12153d0.m6987b("MessagingApp", "Must not reach here. " + e2);
            return false;
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
    /* renamed from: b */
    public C11670p<C11649e0> mo8660b() {
        return AbstractC11671q.m8665b().m8663c(m8719d());
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
    /* renamed from: c */
    public AbstractC11673s<C11649e0> mo8659c() {
        return this.f26146b;
    }

    /* renamed from: d */
    public int m8719d() {
        return 3;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
    public String getKey() {
        return this.f26146b.f26152a.toString();
    }
}
