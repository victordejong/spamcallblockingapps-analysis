package p252u4;

import android.text.TextUtils;
import com.google.firebase.abt.AbtException;
import java.text.ParseException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p275w5.AbstractC4739b;
import p285x4.AbstractC4857a;
/* renamed from: u4.b */
/* loaded from: classes-dex2jar.jar:u4/b.class */
public class C4485b {

    /* renamed from: a */
    public final AbstractC4739b<AbstractC4857a> f13892a;

    /* renamed from: b */
    public final String f13893b;

    /* renamed from: c */
    public Integer f13894c = null;

    public C4485b(AbstractC4739b abstractC4739b, String str) {
        this.f13892a = abstractC4739b;
        this.f13893b = str;
    }

    /* renamed from: a */
    public final List<AbstractC4857a.C4860c> m868a() {
        return this.f13892a.get().mo345c(this.f13893b, "");
    }

    /* renamed from: b */
    public final void m867b(Collection<AbstractC4857a.C4860c> collection) {
        for (AbstractC4857a.C4860c c4860c : collection) {
            this.f13892a.get().clearConditionalUserProperty(c4860c.f14890b, null, null);
        }
    }

    /* renamed from: c */
    public void m866c(List<Map<String, String>> list) throws AbtException {
        String str;
        String[] strArr;
        if (this.f13892a.get() != null) {
            ArrayList arrayList = new ArrayList();
            for (Map<String, String> map : list) {
                String[] strArr2 = C4484a.f13884g;
                ArrayList arrayList2 = new ArrayList();
                for (String str2 : C4484a.f13884g) {
                    if (!map.containsKey(str2)) {
                        arrayList2.add(str2);
                    }
                }
                if (!arrayList2.isEmpty()) {
                    throw new AbtException(String.format("The following keys are missing from the experiment info map: %s", arrayList2));
                }
                try {
                    arrayList.add(new C4484a(map.get("experimentId"), map.get("variantId"), map.containsKey("triggerEvent") ? map.get("triggerEvent") : "", C4484a.f13885h.parse(map.get("experimentStartTime")), Long.parseLong(map.get("triggerTimeoutMillis")), Long.parseLong(map.get("timeToLiveMillis"))));
                } catch (NumberFormatException e) {
                    throw new AbtException("Could not process experiment: one of the durations could not be converted into a long.", e);
                } catch (ParseException e2) {
                    throw new AbtException("Could not process experiment: parsing experiment start time failed.", e2);
                }
            }
            if (arrayList.isEmpty()) {
                if (this.f13892a.get() == null) {
                    throw new AbtException("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
                }
                m867b(m868a());
                return;
            }
            HashSet hashSet = new HashSet();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                hashSet.add(((C4484a) it2.next()).f13886a);
            }
            List<AbstractC4857a.C4860c> m868a = m868a();
            HashSet hashSet2 = new HashSet();
            for (AbstractC4857a.C4860c c4860c : m868a) {
                hashSet2.add(c4860c.f14890b);
            }
            ArrayList arrayList3 = new ArrayList();
            for (AbstractC4857a.C4860c c4860c2 : m868a) {
                if (!hashSet.contains(c4860c2.f14890b)) {
                    arrayList3.add(c4860c2);
                }
            }
            m867b(arrayList3);
            ArrayList arrayList4 = new ArrayList();
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                C4484a c4484a = (C4484a) it3.next();
                if (!hashSet2.contains(c4484a.f13886a)) {
                    arrayList4.add(c4484a);
                }
            }
            ArrayDeque arrayDeque = new ArrayDeque(m868a());
            if (this.f13894c == null) {
                this.f13894c = Integer.valueOf(this.f13892a.get().mo342f(this.f13893b));
            }
            int intValue = this.f13894c.intValue();
            Iterator it4 = arrayList4.iterator();
            while (it4.hasNext()) {
                C4484a c4484a2 = (C4484a) it4.next();
                while (true) {
                    str = null;
                    if (arrayDeque.size() < intValue) {
                        break;
                    }
                    this.f13892a.get().clearConditionalUserProperty(((AbstractC4857a.C4860c) arrayDeque.pollFirst()).f14890b, null, null);
                }
                String str3 = this.f13893b;
                Objects.requireNonNull(c4484a2);
                AbstractC4857a.C4860c c4860c3 = new AbstractC4857a.C4860c();
                c4860c3.f14889a = str3;
                c4860c3.f14901m = c4484a2.f13889d.getTime();
                c4860c3.f14890b = c4484a2.f13886a;
                c4860c3.f14891c = c4484a2.f13887b;
                if (!TextUtils.isEmpty(c4484a2.f13888c)) {
                    str = c4484a2.f13888c;
                }
                c4860c3.f14892d = str;
                c4860c3.f14893e = c4484a2.f13890e;
                c4860c3.f14898j = c4484a2.f13891f;
                this.f13892a.get().mo344d(c4860c3);
                arrayDeque.offer(c4860c3);
            }
            return;
        }
        throw new AbtException("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
    }
}
