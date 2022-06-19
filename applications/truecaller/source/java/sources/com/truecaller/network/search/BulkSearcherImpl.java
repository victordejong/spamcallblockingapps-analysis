package com.truecaller.network.search;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.Keep;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.data.entity.Contact;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p751f4.p762g.AbstractC14015j;
import p193e.p194a.p751f4.p762g.AsyncTaskC14027q;
import p193e.p194a.p751f4.p762g.C14012i;
import p193e.p194a.p751f4.p762g.C14022p;
import p193e.p194a.p937j4.p938a.AbstractC15558b;
import w3.c.a.a.a.h;
/* loaded from: classes11-dex2jar.jar:com/truecaller/network/search/BulkSearcherImpl.class */
public class BulkSearcherImpl implements AbstractC14015j {

    /* renamed from: a */
    public final Context f14013a;

    /* renamed from: g */
    public final AbstractC19321u f14019g;

    /* renamed from: h */
    public final int f14020h;

    /* renamed from: i */
    public final String f14021i;
    @Keep
    private C14022p.AbstractC14025c mListener;

    /* renamed from: j */
    public final Set<String> f14022j = new HashSet();

    /* renamed from: k */
    public final Set<String> f14023k = new HashSet();

    /* renamed from: l */
    public final Map<String, Integer> f14024l = new HashMap();

    /* renamed from: m */
    public final LinkedHashMap<String, C14012i.C14014b> f14025m = new C4301a(10);

    /* renamed from: n */
    public List<AbstractC14015j.AbstractC14016a> f14026n = new ArrayList();

    /* renamed from: o */
    public final Runnable f14027o = new RunnableC4302b();

    /* renamed from: b */
    public final int f14014b = 10;

    /* renamed from: c */
    public final int f14015c = 2;

    /* renamed from: d */
    public final int f14016d = 500;

    /* renamed from: e */
    public final RecyclerView.AbstractC0317g f14017e = null;

    /* renamed from: f */
    public final Handler f14018f = new Handler(Looper.getMainLooper());

    /* renamed from: com.truecaller.network.search.BulkSearcherImpl$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/network/search/BulkSearcherImpl$a.class */
    public class C4301a extends LinkedHashMap<String, C14012i.C14014b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4301a(int i) {
            super(i);
            BulkSearcherImpl.this = r4;
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry<String, C14012i.C14014b> entry) {
            return size() > BulkSearcherImpl.this.f14014b;
        }
    }

    /* renamed from: com.truecaller.network.search.BulkSearcherImpl$b */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/network/search/BulkSearcherImpl$b.class */
    public class RunnableC4302b implements Runnable {

        /* renamed from: a */
        public AsyncTask<?, ?, ?> f14029a;

        public RunnableC4302b() {
            BulkSearcherImpl.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            AsyncTask<?, ?, ?> asyncTask = this.f14029a;
            if (asyncTask != null) {
                if (asyncTask.getStatus() != AsyncTask.Status.FINISHED) {
                    BulkSearcherImpl bulkSearcherImpl = BulkSearcherImpl.this;
                    bulkSearcherImpl.f14018f.postDelayed(this, bulkSearcherImpl.f14016d);
                    return;
                }
                BulkSearcherImpl.this.f14023k.clear();
                this.f14029a = null;
            }
            ArrayList arrayList = new ArrayList(BulkSearcherImpl.this.f14025m.keySet());
            StringBuilder m8728C = C22128a.m8728C("Triggering bulk search for ");
            m8728C.append(BulkSearcherImpl.this.f14025m.values());
            m8728C.toString();
            if (!((AbstractApplicationC8442a) BulkSearcherImpl.this.f14013a.getApplicationContext()).mo28540W()) {
                BulkSearcherImpl.this.m34855f(arrayList);
                return;
            }
            C14012i c14012i = new C14012i(BulkSearcherImpl.this.f14013a, UUID.randomUUID(), BulkSearcherImpl.this.f14021i);
            c14012i.f40518d.addAll(BulkSearcherImpl.this.f14025m.values());
            c14012i.f40521g = BulkSearcherImpl.this.f14020h;
            c14012i.m20857b();
            c14012i.f40519e = true;
            c14012i.f40520f = true;
            BulkSearcherImpl bulkSearcherImpl2 = BulkSearcherImpl.this;
            bulkSearcherImpl2.f14022j.addAll(arrayList);
            bulkSearcherImpl2.f14023k.addAll(arrayList);
            bulkSearcherImpl2.f14025m.keySet().removeAll(arrayList);
            BulkSearcherImpl bulkSearcherImpl3 = BulkSearcherImpl.this;
            C4303c c4303c = new C4303c(arrayList);
            bulkSearcherImpl3.mListener = c4303c;
            AsyncTaskC14027q asyncTaskC14027q = new AsyncTaskC14027q(c14012i.f40515a, null, false, false, c14012i, TextUtils.join(",", c14012i.f40518d), c14012i.f40522h, c4303c, null, c14012i);
            asyncTaskC14027q.executeOnExecutor(AbstractC15558b.f44018e, new Void[0]);
            this.f14029a = asyncTaskC14027q;
        }
    }

    /* renamed from: com.truecaller.network.search.BulkSearcherImpl$c */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/network/search/BulkSearcherImpl$c.class */
    public class C4303c implements C14022p.AbstractC14025c {

        /* renamed from: a */
        public final List<String> f14031a;

        public C4303c(List<String> list) {
            BulkSearcherImpl.this = r4;
            this.f14031a = list;
        }

        @Override // p193e.p194a.p751f4.p762g.C14022p.AbstractC14025c
        /* renamed from: Aa */
        public void mo10096Aa(Throwable th, int i) {
            if (i == 200) {
                StringBuilder m8728C = C22128a.m8728C("Bulk search for ");
                m8728C.append(this.f14031a);
                m8728C.append(" successful but empty");
                m8728C.toString();
                BulkSearcherImpl.this.m34854g(this.f14031a);
            } else {
                StringBuilder m8728C2 = C22128a.m8728C("Bulk search for ");
                m8728C2.append(this.f14031a);
                m8728C2.append(" failed");
                m8728C2.toString();
                BulkSearcherImpl.this.m34855f(this.f14031a);
            }
            BulkSearcherImpl.this.mListener = null;
        }

        @Override // p193e.p194a.p751f4.p762g.C14022p.AbstractC14025c
        /* renamed from: p2 */
        public void mo10057p2(List<Contact> list, String str, String str2, String str3) {
            StringBuilder m8728C = C22128a.m8728C("Bulk search for ");
            m8728C.append(this.f14031a);
            m8728C.append(" successful");
            m8728C.toString();
            BulkSearcherImpl.this.m34854g(this.f14031a);
            BulkSearcherImpl.this.mListener = null;
        }
    }

    public BulkSearcherImpl(Context context, int i, String str, AbstractC14015j.AbstractC14016a abstractC14016a) {
        Context applicationContext = context.getApplicationContext();
        this.f14013a = applicationContext;
        this.f14020h = i;
        this.f14021i = str;
        mo20855b(abstractC14016a);
        this.f14019g = ((AbstractC21187w1) applicationContext).mo10154s().mo12725G1();
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14015j
    /* renamed from: a */
    public boolean mo20856a(String str) {
        return str != null && (this.f14025m.containsKey(str) || this.f14023k.contains(str));
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14015j
    /* renamed from: b */
    public void mo20855b(AbstractC14015j.AbstractC14016a abstractC14016a) {
        if (abstractC14016a != null) {
            this.f14026n.add(abstractC14016a);
        }
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14015j
    /* renamed from: c */
    public void mo20854c(AbstractC14015j.AbstractC14016a abstractC14016a) {
        this.f14026n.remove(abstractC14016a);
    }

    @Override // p193e.p194a.p751f4.p762g.AbstractC14015j
    /* renamed from: d */
    public void mo20853d(String str, String str2, String str3) {
        if (str == null) {
            return;
        }
        if (!this.f14022j.contains(str) && !this.f14023k.contains(str) && !this.f14025m.containsKey(str)) {
            Integer num = this.f14024l.get(str);
            if (!(num != null && num.intValue() > this.f14015c) && !h.i(str) && ((20 == this.f14020h || C8574c0.m28351h(str)) && this.f14019g.mo13429d() && ((AbstractApplicationC8442a) this.f14013a).mo28540W())) {
                this.f14025m.put(str, new C14012i.C14014b(str, str2, null));
            }
        }
        this.f14018f.removeCallbacks(this.f14027o);
        if (this.f14025m.isEmpty()) {
            return;
        }
        this.f14018f.postDelayed(this.f14027o, this.f14016d);
    }

    /* renamed from: f */
    public void m34855f(Collection<String> collection) {
        this.f14022j.removeAll(collection);
        this.f14023k.removeAll(collection);
        for (String str : collection) {
            int i = 0;
            if (this.f14024l.containsKey(str)) {
                i = this.f14024l.get(str).intValue() + 1;
            }
            this.f14024l.put(str, Integer.valueOf(i));
        }
        RecyclerView.AbstractC0317g abstractC0317g = this.f14017e;
        if (abstractC0317g != null) {
            abstractC0317g.notifyDataSetChanged();
        }
        for (AbstractC14015j.AbstractC14016a abstractC14016a : this.f14026n) {
            abstractC14016a.mo20851la(new HashSet(collection));
        }
    }

    /* renamed from: g */
    public void m34854g(Collection<String> collection) {
        this.f14023k.removeAll(collection);
        for (AbstractC14015j.AbstractC14016a abstractC14016a : this.f14026n) {
            abstractC14016a.mo20852g6(collection);
        }
    }
}
