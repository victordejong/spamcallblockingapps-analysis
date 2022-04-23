package com.inmobi.ads.p503d;

import com.inmobi.ads.AbstractC8252i;
import com.inmobi.ads.C8175bj;
import com.inmobi.ads.C8176bk;
import com.inmobi.ads.InMobiAdRequestStatus;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* renamed from: com.inmobi.ads.d.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/d/b.class */
public class C8233b extends C8224a {

    /* renamed from: d */
    public static final String f32130d = "b";

    /* renamed from: e */
    public static volatile C8233b f32131e;

    /* renamed from: f */
    public static final Object f32132f = new Object();

    /* renamed from: g */
    public static List<C8235a> f32133g = new LinkedList();

    /* renamed from: com.inmobi.ads.d.b$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/d/b$a.class */
    public static final class C8235a extends AbstractC8252i.AbstractC8282b {

        /* renamed from: a */
        public C8175bj f32136a;

        public C8235a(C8175bj bjVar) {
            this.f32136a = bjVar;
        }

        @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
        /* renamed from: a */
        public final void mo6012a() {
            String unused = C8233b.f32130d;
            C8233b.f32133g.remove(this);
        }

        @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
        /* renamed from: a */
        public final void mo6011a(InMobiAdRequestStatus inMobiAdRequestStatus) {
            String unused = C8233b.f32130d;
            new StringBuilder("onAdLoadFailed called. Status:").append(inMobiAdRequestStatus.getMessage());
            AbstractC8252i remove = C8224a.f32105a.remove(this.f32136a);
            if (inMobiAdRequestStatus.getStatusCode() == InMobiAdRequestStatus.StatusCode.NO_FILL) {
                remove.m6050d("PreLoadServerNoFill");
            }
            C8233b.f32133g.remove(this);
        }

        @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
        /* renamed from: a */
        public final void mo6008a(boolean z) {
            String unused = C8233b.f32130d;
        }

        @Override // com.inmobi.ads.AbstractC8252i.AbstractC8282b
        /* renamed from: i */
        public final boolean mo5996i() {
            return false;
        }
    }

    public C8233b() {
        super("int");
    }

    /* renamed from: a */
    public static /* synthetic */ void m6134a(C8233b bVar) {
        if (C8224a.f32106b.m6194c(bVar.f32114c).f32033a && C8224a.f32105a.size() >= C8224a.f32106b.m6194c(bVar.f32114c).f32035c) {
            C8176bk.m6256a();
            ArrayList arrayList = (ArrayList) C8176bk.m6254a(bVar.f32114c);
            Iterator<Map.Entry<C8175bj, AbstractC8252i>> it = C8224a.f32105a.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<C8175bj, AbstractC8252i> next = it.next();
                if (!arrayList.contains(next.getKey())) {
                    next.getValue().mo6027t();
                    it.remove();
                    StringBuilder sb = new StringBuilder("Removing extra ad unit from ad unit cache. Pid:");
                    sb.append(next.getKey().f31894a);
                    sb.append(" tp:");
                    sb.append(next.getKey().f31895b);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m6133a(AbstractC8252i iVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("type", iVar.mo5975b());
        hashMap.put("plId", Long.valueOf(iVar.f32196d));
        hashMap.put("clientRequestId", iVar.f32204l);
    }

    /* renamed from: a */
    public static void m6132a(String str, AbstractC8252i iVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("errorCode", str);
        hashMap.put("type", iVar.mo5975b());
        hashMap.put("plId", Long.valueOf(iVar.f32196d));
        hashMap.put("clientRequestId", iVar.f32204l);
    }

    /* renamed from: d */
    public static C8233b m6131d() {
        C8233b bVar = f32131e;
        C8233b bVar2 = bVar;
        if (bVar == null) {
            synchronized (f32132f) {
                C8233b bVar3 = f32131e;
                bVar2 = bVar3;
                if (bVar3 == null) {
                    bVar2 = new C8233b();
                    f32131e = bVar2;
                }
            }
        }
        return bVar2;
    }
}
