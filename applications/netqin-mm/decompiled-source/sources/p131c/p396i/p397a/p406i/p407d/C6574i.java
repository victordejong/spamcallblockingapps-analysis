package p131c.p396i.p397a.p406i.p407d;

import com.library.p518ad.core.AdInfo;
import com.library.p518ad.data.bean.RequestConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractC6518i;
import p131c.p396i.p397a.p398e.C6507c;
import p131c.p396i.p397a.p398e.C6520j;
import p131c.p396i.p397a.p417j.C6618e;
/* renamed from: c.i.a.i.d.i */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/d/i.class */
public class C6574i extends AbstractC6560b {

    /* renamed from: l */
    public AbstractC6518i f20379l = new C6575a();

    /* renamed from: c.i.a.i.d.i$a */
    /* loaded from: classes2-dex2jar.jar:c/i/a/i/d/i$a.class */
    public class C6575a implements AbstractC6518i {
        public C6575a() {
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        /* renamed from: a */
        public void mo3229a(AdInfo adInfo) {
            AbstractC6518i iVar = C6574i.this.f20350d;
            AbstractC6518i iVar2 = C6574i.this.f20350d;
            if (iVar2 != null) {
                iVar2.mo3229a(adInfo);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        /* renamed from: b */
        public void mo3228b(AdInfo adInfo) {
            AbstractC6518i iVar = C6574i.this.f20350d;
            AbstractC6518i iVar2 = C6574i.this.f20357k;
            if (iVar2 != null) {
                iVar2.mo3228b(adInfo);
            }
        }

        @Override // p131c.p396i.p397a.p398e.AbstractC6518i
        public void onStart() {
            AbstractC6518i iVar = C6574i.this.f20350d;
            if (iVar != null) {
                iVar.onStart();
            }
        }
    }

    public C6574i(String str, List<RequestConfig> list) {
        super(str, list);
    }

    /* renamed from: a */
    public static void m20463a(List<AbstractC6508d<?>> list, String str) {
        if (list.size() >= 2) {
            Collections.sort(list);
            ArrayList arrayList = new ArrayList();
            for (AbstractC6508d<?> dVar : list) {
                if (dVar.isDefault()) {
                    arrayList.add(dVar);
                }
            }
            list.removeAll(arrayList);
            if (list.size() > 1) {
                boolean z = false;
                int priority = list.get(0).getPriority();
                for (AbstractC6508d<?> dVar2 : list) {
                    if (z) {
                        dVar2.priority(dVar2.getPriority() + priority);
                    } else if (dVar2.getUnitId().equals(str)) {
                        z = true;
                    }
                }
                Collections.sort(list);
            }
            list.addAll(arrayList);
        }
    }

    @Override // p131c.p396i.p397a.p406i.p407d.AbstractC6560b
    /* renamed from: b */
    public void mo20462b() {
        List<AbstractC6508d<?>> list = this.f20353g;
        if (list != null && list.size() > 0) {
            String c = C6618e.m20334a().m20325c("key_last_" + this.f20347a);
            String str = "last unitId:" + c;
            m20461b(this.f20353g);
            m20463a(this.f20353g, c);
            m20461b(this.f20353g);
            C6520j a = C6507c.m20629a(this.f20353g);
            a.m20604a(this.f20356j);
            a.m20600a(this.f20379l);
            a.m20585b(false);
        }
    }

    /* renamed from: b */
    public final void m20461b(List<AbstractC6508d<?>> list) {
        String[] strArr = new String[list.size()];
        for (int i = 0; i < list.size(); i++) {
            strArr[i] = list.get(i).getUnitId() + ":" + list.get(i).getPriority();
        }
    }

    @Override // p131c.p396i.p397a.p406i.p407d.AbstractC6560b
    public String toString() {
        return "轮播模式 " + super.toString();
    }
}
