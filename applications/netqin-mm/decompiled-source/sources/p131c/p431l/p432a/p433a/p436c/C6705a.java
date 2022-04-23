package p131c.p431l.p432a.p433a.p436c;

import android.text.TextUtils;
import android.util.Pair;
import com.library.p518ad.core.AdInfo;
import com.library.p518ad.core.BaseAdResult;
import java.util.Collections;
import java.util.List;
import p131c.p431l.p432a.p433a.p435b.C6697b;
/* renamed from: c.l.a.a.c.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/a/c/a.class */
public class C6705a implements BaseAdResult.AbstractC8514a {

    /* renamed from: a */
    public final String[] f20662a;

    /* renamed from: b */
    public String f20663b;

    public C6705a(String[] strArr, String str) {
        this.f20662a = strArr;
        this.f20663b = str;
    }

    /* renamed from: a */
    public final int m20028a(String str) {
        int i = 0;
        while (true) {
            String[] strArr = this.f20662a;
            if (i >= strArr.length) {
                return -1;
            }
            if (strArr[i].equals(str)) {
                return i;
            }
            i++;
        }
    }

    @Override // com.library.p518ad.core.BaseAdResult.AbstractC8514a
    /* renamed from: a */
    public void mo5307a(int i, AdInfo adInfo) {
        String str = "onBindSuccess adSource: " + adInfo.getAdSource();
    }

    @Override // com.library.p518ad.core.BaseAdResult.AbstractC8514a
    /* renamed from: a */
    public void mo5306a(AdInfo adInfo, BaseAdResult.BindViewCode bindViewCode) {
        String str = "onBindFail adSource: " + adInfo.getAdSource();
        String str2 = " , BindViewCode: " + bindViewCode;
        String str3 = "unitId: " + adInfo.getUnitId();
    }

    @Override // com.library.p518ad.core.BaseAdResult.AbstractC8514a
    /* renamed from: a */
    public boolean mo5305a(AdInfo adInfo, List list) {
        Pair pair;
        if (!"FM".equals(adInfo.getAdSource()) || list == null || list.size() <= 1) {
            return false;
        }
        String a = C6697b.m20033a(this.f20663b);
        if (TextUtils.isEmpty(a)) {
            pair = (Pair) list.get(0);
        } else {
            int a2 = m20028a(a);
            for (int i = 0; i < list.size(); i++) {
                Pair pair2 = (Pair) list.get(i);
                if (m20028a((String) pair2.second) > a2) {
                    if (i != 0) {
                        Collections.swap(list, 0, i);
                    }
                    C6697b.m20032a(this.f20663b, (String) pair2.second);
                    return false;
                }
            }
            pair = (Pair) list.get(0);
        }
        C6697b.m20032a(this.f20663b, (String) pair.second);
        return false;
    }
}
