package p283x2;

import android.support.p012v4.media.C0082b;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import p004a3.AbstractC0011a;
import p218r2.AbstractC4190h;
import p250u2.AbstractC4463f;
import p250u2.AbstractC4469i;
import p250u2.C4474m;
import p261v2.AbstractC4592e;
import p261v2.AbstractC4599k;
import p293y2.AbstractC5003t;
import p303z2.AbstractC5039c;
/* renamed from: x2.c */
/* loaded from: classes-dex2jar.jar:x2/c.class */
public class C4851c implements AbstractC4853e {

    /* renamed from: f */
    public static final Logger f14871f = Logger.getLogger(C4474m.class.getName());

    /* renamed from: a */
    public final AbstractC5003t f14872a;

    /* renamed from: b */
    public final Executor f14873b;

    /* renamed from: c */
    public final AbstractC4592e f14874c;

    /* renamed from: d */
    public final AbstractC5039c f14875d;

    /* renamed from: e */
    public final AbstractC0011a f14876e;

    public C4851c(Executor executor, AbstractC4592e abstractC4592e, AbstractC5003t abstractC5003t, AbstractC5039c abstractC5039c, AbstractC0011a abstractC0011a) {
        this.f14873b = executor;
        this.f14874c = abstractC4592e;
        this.f14872a = abstractC5003t;
        this.f14875d = abstractC5039c;
        this.f14876e = abstractC0011a;
    }

    @Override // p283x2.AbstractC4853e
    /* renamed from: a */
    public void mo363a(final AbstractC4469i abstractC4469i, final AbstractC4463f abstractC4463f, final AbstractC4190h abstractC4190h) {
        this.f14873b.execute(new Runnable() { // from class: x2.b
            @Override // java.lang.Runnable
            public final void run() {
                C4851c c4851c = C4851c.this;
                AbstractC4469i abstractC4469i2 = abstractC4469i;
                AbstractC4190h abstractC4190h2 = abstractC4190h;
                AbstractC4463f abstractC4463f2 = abstractC4463f;
                Objects.requireNonNull(c4851c);
                try {
                    AbstractC4599k mo741a = c4851c.f14874c.mo741a(abstractC4469i2.mo892b());
                    if (mo741a == null) {
                        String format = String.format("Transport backend '%s' is not registered", abstractC4469i2.mo892b());
                        C4851c.f14871f.warning(format);
                        abstractC4190h2.mo154d(new IllegalArgumentException(format));
                    } else {
                        c4851c.f14876e.mo90d(new C4849a(c4851c, abstractC4469i2, mo741a.mo738b(abstractC4463f2)));
                        abstractC4190h2.mo154d(null);
                    }
                } catch (Exception e) {
                    Logger logger = C4851c.f14871f;
                    StringBuilder m8752j = C0082b.m8752j("Error scheduling event ");
                    m8752j.append(e.getMessage());
                    logger.warning(m8752j.toString());
                    abstractC4190h2.mo154d(e);
                }
            }
        });
    }
}
