package p459j.p460a.p474c0.p483e.p484a;

import androidx.annotation.WorkerThread;
import gogolook.callgogolook2.messaging.scan.data.SmsMessage;
import gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import p459j.p460a.p541n0.C13165k;
import p459j.p460a.p572v0.p573c.AbstractC13709g;
import p459j.p460a.p572v0.p573c.AbstractC13719n;
import p459j.p460a.p572v0.p573c.EnumC13715k;
import p626l.p632u.C15005e0;
import p626l.p632u.C15021m;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.c0.e.a.e */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/a/e.class */
public final class C11728e implements AbstractC11727d {
    @Override // p459j.p460a.p474c0.p483e.p484a.AbstractC11727d
    @WorkerThread
    /* renamed from: a */
    public List<C11726c> mo8408a(long j, long j2) {
        ArrayList arrayList = new ArrayList();
        List<SmsUrlScanResultRealmObject> a = C13165k.m4487a(j, j2);
        HashSet hashSet = new HashSet();
        ArrayList<SmsUrlScanResultRealmObject> arrayList2 = new ArrayList();
        for (Object obj : a) {
            if (hashSet.add(((SmsUrlScanResultRealmObject) obj).getRefUri())) {
                arrayList2.add(obj);
            }
        }
        for (SmsUrlScanResultRealmObject smsUrlScanResultRealmObject : arrayList2) {
            SmsMessage smsMessage = new SmsMessage(smsUrlScanResultRealmObject.getRefUri(), smsUrlScanResultRealmObject.getAddress(), smsUrlScanResultRealmObject.getBody(), null, 8, null);
            ArrayList arrayList3 = new ArrayList();
            ArrayList<SmsUrlScanResultRealmObject> arrayList4 = new ArrayList();
            for (Object obj2 : a) {
                if (C15149k.m384a((Object) ((SmsUrlScanResultRealmObject) obj2).getRefUri(), (Object) smsUrlScanResultRealmObject.getRefUri())) {
                    arrayList4.add(obj2);
                }
            }
            for (SmsUrlScanResultRealmObject smsUrlScanResultRealmObject2 : arrayList4) {
                arrayList3.add(new AbstractC13719n.C13721b(smsUrlScanResultRealmObject2.getUrl(), EnumC13715k.values()[smsUrlScanResultRealmObject2.getRating()], AbstractC13709g.EnumC13710a.f30790g.m3615a(smsUrlScanResultRealmObject2.getSource()), C15005e0.m629a()));
            }
            arrayList.add(new C11726c(smsMessage, arrayList3));
        }
        return arrayList;
    }

    @Override // p459j.p460a.p474c0.p483e.p484a.AbstractC11727d
    @WorkerThread
    /* renamed from: a */
    public void mo8407a(C11726c cVar) {
        C15149k.m377b(cVar, "result");
        SmsMessage b = cVar.m8412b();
        long currentTimeMillis = System.currentTimeMillis();
        int i = 0;
        for (Object obj : cVar.m8410d()) {
            if (i >= 0) {
                AbstractC13719n.C13721b bVar = (AbstractC13719n.C13721b) obj;
                C13165k.m4486a(new SmsUrlScanResultRealmObject(0L, b.m27503c(), b.m27505a(), b.m27504b(), currentTimeMillis, i, bVar.m3604d(), bVar.m3607a().ordinal(), bVar.m3605c().m3616a()));
                i++;
            } else {
                C15021m.m558c();
                throw null;
            }
        }
    }

    @Override // p459j.p460a.p474c0.p483e.p484a.AbstractC11727d
    @WorkerThread
    /* renamed from: a */
    public boolean mo8409a(long j) {
        return C13165k.m4488a(j);
    }
}
