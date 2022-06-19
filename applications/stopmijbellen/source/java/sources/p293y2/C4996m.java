package p293y2;

import android.content.Context;
import android.os.Bundle;
import com.android.billingclient.api.Purchase;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.gson.JsonParseException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import p004a3.AbstractC0011a;
import p073d8.AbstractC2487b;
import p080e5.AbstractC2580y;
import p095f8.C2768a;
import p114h5.C3009a;
import p117h8.C3043q;
import p122i2.AbstractC3071g;
import p122i2.C3067c;
import p122i2.C3068d;
import p146k5.C3324a;
import p148k7.C3358l;
import p170m7.AbstractC3664h;
import p170m7.C3661g;
import p218r2.AbstractC4190h;
import p229s2.C4280b;
import p233s6.AbstractC4314i;
import p233s6.C4315j;
import p233s6.C4318m;
import p243t6.C4422f;
import p244t7.C4423a;
import p250u2.AbstractC4469i;
import p276w6.C4740a;
import p303z2.C5051l;
/* renamed from: y2.m */
/* loaded from: classes2-dex2jar.jar:y2/m.class */
public final /* synthetic */ class C4996m implements AbstractC0011a.AbstractC0012a, AbstractC4190h, C3661g.AbstractC3662a, AbstractC3664h, AbstractC3071g {

    /* renamed from: a */
    public final /* synthetic */ int f15217a;

    /* renamed from: b */
    public final /* synthetic */ Object f15218b;

    /* renamed from: c */
    public final /* synthetic */ Object f15219c;

    public /* synthetic */ C4996m(Object obj, Object obj2, int i) {
        this.f15217a = i;
        this.f15218b = obj;
        this.f15219c = obj2;
    }

    @Override // p122i2.AbstractC3071g
    /* renamed from: b */
    public void mo155b(C3067c c3067c, List list) {
        AtomicBoolean atomicBoolean = (AtomicBoolean) this.f15218b;
        AtomicBoolean atomicBoolean2 = (AtomicBoolean) this.f15219c;
        Context context = C2768a.f9468a;
        if (c3067c.f10403a == 0) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                Purchase purchase = (Purchase) it2.next();
                Bundle bundle = new Bundle();
                bundle.putString("SKU", purchase.m7232c().get(0));
                bundle.putString("OrderId", purchase.f3205c.optString("orderId"));
                bundle.putBoolean("isAcknowledged", purchase.m7231d());
                bundle.putString("PurchaseToken", purchase.m7233b());
                bundle.putString("Signature", purchase.f3204b);
                bundle.putLong("PurchaseTime", purchase.f3205c.optLong("purchaseTime"));
                bundle.putInt("PurchaseState", purchase.f3205c.optInt("purchaseState", 1) != 4 ? 1 : 2);
                bundle.putString("PackageName", purchase.m7234a());
                bundle.putString("DeveloperPayload", purchase.f3205c.optString("developerPayload"));
                bundle.putInt("Quantity", purchase.f3205c.optInt("quantity", 1));
                bundle.putString("OriginalJson", purchase.f3203a);
                ((HashMap) C2768a.f9471d).put(purchase.m7233b(), bundle);
                bundle.toString();
                if (C2768a.f9474g.contains(purchase.m7232c().get(0))) {
                    String m7233b = purchase.m7233b();
                    if (m7233b == null) {
                        throw new IllegalArgumentException("Purchase token must be set");
                    }
                    C3068d c3068d = new C3068d();
                    c3068d.f10405a = m7233b;
                    C2768a.f9469b.mo7227a(c3068d, C5051l.f15330f);
                }
                if (!purchase.m7231d()) {
                    C2768a.m3148a(C2768a.f9469b, purchase.m7233b());
                }
            }
            atomicBoolean.set(true);
            if (!atomicBoolean2.get()) {
                return;
            }
            C2768a.m3138k(C2768a.f9468a, C2768a.m3147b(C2768a.f9471d, false));
            C3043q.m2724A("AKLP", C2768a.m3147b(C2768a.f9471d, true));
        }
    }

    @Override // p218r2.AbstractC4190h
    /* renamed from: d */
    public void mo154d(Exception exc) {
        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) this.f15218b;
        AbstractC2580y abstractC2580y = (AbstractC2580y) this.f15219c;
        C3009a c3009a = C3324a.f11276b;
        if (exc != null) {
            taskCompletionSource.trySetException(exc);
        } else {
            taskCompletionSource.trySetResult(abstractC2580y);
        }
    }

    @Override // p004a3.AbstractC0011a.AbstractC0012a
    /* renamed from: e */
    public Object mo149e() {
        C4997n c4997n = (C4997n) this.f15218b;
        return Boolean.valueOf(c4997n.f15222c.mo88h((AbstractC4469i) this.f15219c));
    }

    @Override // p170m7.C3661g.AbstractC3662a
    /* renamed from: f */
    public void mo103f(Exception exc, Object obj, C3661g.C3663b c3663b) {
        switch (this.f15217a) {
            case 2:
                C3661g c3661g = (C3661g) this.f15218b;
                C3661g c3661g2 = (C3661g) this.f15219c;
                int i = C3661g.f11988i;
                c3661g2.m1914p(c3661g.m1914p(exc, obj, c3663b) ? null : new CancellationException(), obj, c3663b);
                return;
            default:
                C4280b c4280b = (C4280b) this.f15218b;
                C3661g c3661g3 = (C3661g) this.f15219c;
                int i2 = C3661g.f11988i;
                Exception e = exc;
                if (exc == null) {
                    try {
                        ((C3661g) c4280b.f13425a).m1914p(null, obj, null);
                        e = exc;
                    } catch (Exception e2) {
                        e = e2;
                    }
                }
                c3661g3.m1914p(e, obj, c3663b);
                return;
        }
    }

    @Override // p170m7.AbstractC3664h
    public Object then(Object obj) {
        AbstractC2487b abstractC2487b = (AbstractC2487b) this.f15218b;
        String str = (String) this.f15219c;
        Objects.requireNonNull(abstractC2487b);
        C4423a c4423a = new C4423a((C3358l) obj);
        C4740a c4740a = new C4740a(str != null ? new InputStreamReader(c4423a, str) : new InputStreamReader(c4423a));
        boolean z = c4740a.f14604b;
        c4740a.f14604b = true;
        try {
            try {
                AbstractC4314i m941a = C4422f.m941a(c4740a);
                c4740a.f14604b = z;
                if ((m941a instanceof C4315j) || (m941a instanceof C4318m)) {
                    throw new JsonParseException("unable to parse json");
                }
                if (abstractC2487b.f8733a.isInstance(m941a)) {
                    return m941a;
                }
                throw new ClassCastException(m941a.getClass().getCanonicalName() + " can not be casted to " + abstractC2487b.f8733a.getCanonicalName());
            } catch (OutOfMemoryError e) {
                throw new JsonParseException("Failed parsing JSON source: " + c4740a + " to Json", e);
            } catch (StackOverflowError e2) {
                throw new JsonParseException("Failed parsing JSON source: " + c4740a + " to Json", e2);
            }
        } catch (Throwable th) {
            c4740a.f14604b = z;
            throw th;
        }
    }
}
