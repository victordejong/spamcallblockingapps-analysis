package androidx.activity.p005d;

import android.content.Context;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: androidx.activity.d.a */
/* loaded from: classes-dex2jar.jar:androidx/activity/d/a.class */
public final class C0089a {

    /* renamed from: a */
    private final Set<AbstractC0090b> f175a = new CopyOnWriteArraySet();

    /* renamed from: b */
    private volatile Context f176b;

    /* renamed from: a */
    public void m35751a(AbstractC0090b abstractC0090b) {
        if (this.f176b != null) {
            abstractC0090b.mo32866a(this.f176b);
        }
        this.f175a.add(abstractC0090b);
    }

    /* renamed from: b */
    public void m35750b() {
        this.f176b = null;
    }

    /* renamed from: c */
    public void m35749c(Context context) {
        this.f176b = context;
        for (AbstractC0090b abstractC0090b : this.f175a) {
            abstractC0090b.mo32866a(context);
        }
    }
}
