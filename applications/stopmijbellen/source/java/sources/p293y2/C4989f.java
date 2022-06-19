package p293y2;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import com.android.billingclient.api.Purchase;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mglab.scm.visual.C2107c;
import com.rengwuxian.materialedittext.MaterialEditText;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import p004a3.AbstractC0011a;
import p078e2.EnumC2524b;
import p078e2.View$OnClickListenerC2530g;
import p095f8.C2768a;
import p095f8.C2779g;
import p117h8.C3043q;
import p122i2.AbstractC3071g;
import p122i2.C3067c;
import p170m7.AbstractC3656d;
import p170m7.C3661g;
import p218r2.C4184b;
import p250u2.AbstractC4463f;
import p250u2.AbstractC4469i;
import p250u2.C4453a;
import p250u2.C4462e;
import p275w5.AbstractC4737a;
import p275w5.AbstractC4739b;
import p303z2.AbstractC5047h;
import p303z2.C5038b;
import p303z2.C5057r;
import p305z4.C5099s;
/* renamed from: y2.f */
/* loaded from: classes2-dex2jar.jar:y2/f.class */
public final /* synthetic */ class C4989f implements AbstractC0011a.AbstractC0012a, C5057r.AbstractC5059b, AbstractC4737a.AbstractC4738a, AbstractC3656d, AbstractC3071g, View$OnClickListenerC2530g.AbstractC2533c {

    /* renamed from: a */
    public final /* synthetic */ Object f15196a;

    /* renamed from: b */
    public final /* synthetic */ Object f15197b;

    public /* synthetic */ C4989f(Object obj, Object obj2) {
        this.f15197b = obj;
        this.f15196a = obj2;
    }

    @Override // p170m7.AbstractC3656d
    /* renamed from: a */
    public void mo99a(Exception exc, Object obj) {
        C3661g c3661g = (C3661g) this.f15197b;
        C3661g c3661g2 = (C3661g) this.f15196a;
        int i = C3661g.f11988i;
        c3661g2.m1916n(c3661g.m1914p(exc, obj, null) ? null : new CancellationException());
    }

    /* JADX WARN: Finally extract failed */
    @Override // p303z2.C5057r.AbstractC5059b
    public Object apply(Object obj) {
        final C5057r c5057r = (C5057r) this.f15197b;
        final AbstractC4469i abstractC4469i = (AbstractC4469i) this.f15196a;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        C4184b c4184b = C5057r.f15360e;
        Objects.requireNonNull(c5057r);
        final ArrayList arrayList = new ArrayList();
        Long m86l = c5057r.m86l(sQLiteDatabase, abstractC4469i);
        if (m86l != null) {
            C5057r.m82r(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{m86l.toString()}, null, null, null, String.valueOf(c5057r.f15364d.mo113c())), new C5057r.AbstractC5059b() { // from class: z2.j
                @Override // p303z2.C5057r.AbstractC5059b
                public final Object apply(Object obj2) {
                    C5057r c5057r2 = C5057r.this;
                    List list = arrayList;
                    AbstractC4469i abstractC4469i2 = abstractC4469i;
                    Cursor cursor = (Cursor) obj2;
                    Objects.requireNonNull(c5057r2);
                    while (cursor.moveToNext()) {
                        long j = cursor.getLong(0);
                        boolean z = cursor.getInt(7) != 0;
                        C4453a.C4455b c4455b = new C4453a.C4455b();
                        c4455b.f13830f = new HashMap();
                        c4455b.m907f(cursor.getString(1));
                        c4455b.m908e(cursor.getLong(2));
                        c4455b.m906g(cursor.getLong(3));
                        if (z) {
                            String string = cursor.getString(4);
                            c4455b.m909d(new C4462e(string == null ? C5057r.f15360e : new C4184b(string), cursor.getBlob(5)));
                        } else {
                            String string2 = cursor.getString(4);
                            c4455b.m909d(new C4462e(string2 == null ? C5057r.f15360e : new C4184b(string2), (byte[]) C5057r.m82r(c5057r2.m87k().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num"), C5055p.f15352c)));
                        }
                        if (!cursor.isNull(6)) {
                            c4455b.f13826b = Integer.valueOf(cursor.getInt(6));
                        }
                        list.add(new C5038b(j, abstractC4469i2, c4455b.mo895b()));
                    }
                    return null;
                }
            });
        }
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < arrayList.size(); i++) {
            sb.append(((AbstractC5047h) arrayList.get(i)).mo109b());
            if (i < arrayList.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        Cursor query = sQLiteDatabase.query("event_metadata", new String[]{"event_id", AppMeasurementSdk.ConditionalUserProperty.NAME, AppMeasurementSdk.ConditionalUserProperty.VALUE}, sb.toString(), null, null, null, null);
        while (query.moveToNext()) {
            try {
                long j = query.getLong(0);
                Set set = (Set) hashMap.get(Long.valueOf(j));
                Set set2 = set;
                if (set == null) {
                    set2 = new HashSet();
                    hashMap.put(Long.valueOf(j), set2);
                }
                set2.add(new C5057r.C5060c(query.getString(1), query.getString(2), null));
            } catch (Throwable th) {
                query.close();
                throw th;
            }
        }
        query.close();
        ListIterator listIterator = arrayList.listIterator();
        while (listIterator.hasNext()) {
            AbstractC5047h abstractC5047h = (AbstractC5047h) listIterator.next();
            if (hashMap.containsKey(Long.valueOf(abstractC5047h.mo109b()))) {
                AbstractC4463f.AbstractC4464a m897i = abstractC5047h.mo110a().m897i();
                for (C5057r.C5060c c5060c : (Set) hashMap.get(Long.valueOf(abstractC5047h.mo109b()))) {
                    m897i.m896a(c5060c.f15365a, c5060c.f15366b);
                }
                listIterator.set(new C5038b(abstractC5047h.mo109b(), abstractC5047h.mo108c(), m897i.mo895b()));
            }
        }
        return arrayList;
    }

    @Override // p122i2.AbstractC3071g
    /* renamed from: b */
    public void mo155b(C3067c c3067c, List list) {
        AtomicBoolean atomicBoolean = (AtomicBoolean) this.f15197b;
        AtomicBoolean atomicBoolean2 = (AtomicBoolean) this.f15196a;
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

    @Override // p275w5.AbstractC4737a.AbstractC4738a
    /* renamed from: d */
    public void mo97d(AbstractC4739b abstractC4739b) {
        AbstractC4737a.AbstractC4738a abstractC4738a = (AbstractC4737a.AbstractC4738a) this.f15197b;
        AbstractC4737a.AbstractC4738a abstractC4738a2 = (AbstractC4737a.AbstractC4738a) this.f15196a;
        int i = C5099s.f15448c;
        abstractC4738a.mo97d(abstractC4739b);
        abstractC4738a2.mo97d(abstractC4739b);
    }

    @Override // p004a3.AbstractC0011a.AbstractC0012a
    /* renamed from: e */
    public Object mo149e() {
        C4997n c4997n = (C4997n) this.f15197b;
        return c4997n.f15222c.mo92O((AbstractC4469i) this.f15196a);
    }

    @Override // p078e2.View$OnClickListenerC2530g.AbstractC2533c
    /* renamed from: g */
    public void mo96g(View$OnClickListenerC2530g view$OnClickListenerC2530g, EnumC2524b enumC2524b) {
        C2107c c2107c = (C2107c) this.f15197b;
        String str = (String) this.f15196a;
        Objects.requireNonNull(c2107c);
        String valueOf = String.valueOf(((MaterialEditText) view$OnClickListenerC2530g.findViewById(2131296521)).getText());
        Context context = c2107c.f7646a;
        String m8755g = C0082b.m8755g(valueOf, "\n\n", str);
        C2779g.m3127F(context, C2779g.m3105j(context) + " debug", m8755g);
    }
}
