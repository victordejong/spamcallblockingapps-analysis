package p193e.p1451f.p1452a.p1457n.p1458n;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
/* renamed from: e.f.a.n.n.l */
/* loaded from: classes-dex2jar.jar:e/f/a/n/n/l.class */
public abstract class AbstractC22287l<T> implements AbstractC22274d<T> {

    /* renamed from: a */
    public final Uri f61928a;

    /* renamed from: b */
    public final ContentResolver f61929b;

    /* renamed from: c */
    public T f61930c;

    public AbstractC22287l(ContentResolver contentResolver, Uri uri) {
        this.f61929b = contentResolver;
        this.f61928a = uri;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: b */
    public void mo8219b() {
        T t = this.f61930c;
        if (t != null) {
            try {
                m8354e(t);
            } catch (IOException e) {
            }
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: c */
    public EnumC22258a mo8218c() {
        return EnumC22258a.LOCAL;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    public void cancel() {
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: d */
    public final void mo8217d(EnumC22227f enumC22227f, AbstractC22274d.AbstractC22275a<? super T> abstractC22275a) {
        try {
            T m8353f = m8353f(this.f61928a, this.f61929b);
            this.f61930c = m8353f;
            abstractC22275a.mo8231e(m8353f);
        } catch (FileNotFoundException e) {
            Log.isLoggable("LocalUriFetcher", 3);
            abstractC22275a.mo8230f(e);
        }
    }

    /* renamed from: e */
    public abstract void m8354e(T t) throws IOException;

    /* renamed from: f */
    public abstract T m8353f(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;
}
