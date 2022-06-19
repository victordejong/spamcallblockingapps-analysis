package p095f8;

import android.app.Activity;
import android.content.Context;
import androidx.fragment.app.ActivityC0455o;
import butterknife.Unbinder;
import com.google.android.play.core.install.InstallState;
import java.util.Objects;
import p124i4.AbstractC3100b;
import p124i4.C3102d;
import p124i4.C3103e;
import p124i4.C3108j;
import p200p4.AbstractC4013a;
import p220r4.C4194c;
import p220r4.C4206o;
import p293y2.C4995l;
/* renamed from: f8.j */
/* loaded from: classes2-dex2jar.jar:f8/j.class */
public class C2782j {

    /* renamed from: a */
    public AbstractC3100b f9497a;

    /* renamed from: b */
    public C2781i f9498b;

    /* renamed from: c */
    public final Activity f9499c;

    /* renamed from: d */
    public Unbinder f9500d;

    public C2782j(ActivityC0455o activityC0455o) {
        this.f9499c = activityC0455o;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [f8.i] */
    /* renamed from: a */
    public final void m3018a() {
        C3103e c3103e;
        Context applicationContext = this.f9499c.getApplicationContext();
        synchronized (C3102d.class) {
            try {
                if (C3102d.f10497a == null) {
                    Context applicationContext2 = applicationContext.getApplicationContext();
                    if (applicationContext2 != null) {
                        applicationContext = applicationContext2;
                    }
                    C3102d.f10497a = new C3103e(new C3108j(applicationContext));
                }
                c3103e = C3102d.f10497a;
            } catch (Throwable th) {
                throw th;
            }
        }
        AbstractC3100b abstractC3100b = (AbstractC3100b) c3103e.f10518f.zza();
        this.f9497a = abstractC3100b;
        C4206o mo2609d = abstractC3100b.mo2609d();
        this.f9498b = new AbstractC4013a() { // from class: f8.i
            @Override // p200p4.AbstractC4013a
            /* renamed from: a */
            public final void mo1516a(Object obj) {
                C2782j c2782j = C2782j.this;
                Objects.requireNonNull(c2782j);
                if (((InstallState) obj).mo1941c() == 11) {
                    c2782j.m3017b();
                    c2782j.f9497a.mo2610c();
                }
            }
        };
        C4995l c4995l = new C4995l(this, 7);
        Objects.requireNonNull(mo2609d);
        mo2609d.m1292a(C4194c.f13178a, c4995l);
    }

    /* renamed from: b */
    public final void m3017b() {
        C2781i c2781i;
        AbstractC3100b abstractC3100b = this.f9497a;
        if (abstractC3100b == null || (c2781i = this.f9498b) == null) {
            return;
        }
        abstractC3100b.mo2612a(c2781i);
    }
}
