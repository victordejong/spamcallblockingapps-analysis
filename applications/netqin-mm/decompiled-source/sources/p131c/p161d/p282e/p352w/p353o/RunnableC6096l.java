package p131c.p161d.p282e.p352w.p353o;

import com.google.android.gms.common.util.BiConsumer;
/* renamed from: c.d.e.w.o.l */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/o/l.class */
public final /* synthetic */ class RunnableC6096l implements Runnable {

    /* renamed from: a */
    public final BiConsumer f19585a;

    /* renamed from: b */
    public final String f19586b;

    /* renamed from: c */
    public final C6087f f19587c;

    public RunnableC6096l(BiConsumer biConsumer, String str, C6087f fVar) {
        this.f19585a = biConsumer;
        this.f19586b = str;
        this.f19587c = fVar;
    }

    /* renamed from: a */
    public static Runnable m22050a(BiConsumer biConsumer, String str, C6087f fVar) {
        return new RunnableC6096l(biConsumer, str, fVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f19585a.mo17108a(this.f19586b, this.f19587c);
    }
}
