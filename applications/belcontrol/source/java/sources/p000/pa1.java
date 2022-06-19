package p000;

import com.kedlin.cca.core.util.billing.Purchase;
import com.kedlin.cca.core.util.billing.SkuDetails;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: pa1 */
/* loaded from: classes3-dex2jar.jar:pa1.class */
public class pa1 {

    /* renamed from: a */
    public Map<String, SkuDetails> f7694a = new HashMap();

    /* renamed from: b */
    public Map<String, Purchase> f7695b = new HashMap();

    /* renamed from: a */
    public void m935a(Purchase purchase) {
        this.f7695b.put(purchase.m4348e(), purchase);
    }

    /* renamed from: b */
    public void m934b(SkuDetails skuDetails) {
        this.f7694a.put(skuDetails.m4341d(), skuDetails);
    }

    /* renamed from: c */
    public List<String> m933c(String str) {
        ArrayList arrayList = new ArrayList();
        for (Purchase purchase : this.f7695b.values()) {
            if (purchase.m4352a().equals(str)) {
                arrayList.add(purchase.m4348e());
            }
        }
        return arrayList;
    }

    /* renamed from: d */
    public Purchase m932d(String str) {
        return this.f7695b.get(str);
    }

    /* renamed from: e */
    public SkuDetails m931e(String str) {
        return this.f7694a.get(str);
    }

    /* renamed from: f */
    public boolean m930f(String str) {
        Map<String, Purchase> map = this.f7695b;
        if (map == null || map.size() == 0) {
            return false;
        }
        return this.f7695b.containsKey(str);
    }
}
