package p193e.p1681q.p1698e.p1699b;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
import p193e.p1681q.p1698e.p1700c.C25220a;
/* renamed from: e.q.e.b.e */
/* loaded from: classes16-dex2jar.jar:e/q/e/b/e.class */
public class C25216e<T> {

    /* renamed from: a */
    public int f70502a;

    /* renamed from: b */
    public C25219h<T> f70503b;

    /* renamed from: c */
    public JSONObject f70504c;

    public C25216e(AbstractC25209a abstractC25209a) {
        JSONObject jSONObject;
        this.f70503b = new C25219h<>(new C25218g(), abstractC25209a);
        int i = abstractC25209a.f70487c;
        this.f70502a = i;
        if (i == 0) {
            C25220a.m4052a();
            jSONObject = C25220a.f70511b;
        } else {
            C25220a.m4052a();
            jSONObject = C25220a.f70510a;
        }
        this.f70504c = jSONObject;
    }

    /* renamed from: a */
    public void m4062a() {
        if (this.f70502a == 1) {
            C25219h<T> c25219h = this.f70503b;
            c25219h.m4054a(c25219h.f70508a);
        }
        AbstractC25209a<T> abstractC25209a = this.f70503b.f70509b;
        abstractC25209a.m4066c(abstractC25209a.f70485a, abstractC25209a.f70486b);
    }

    /* renamed from: b */
    public final C25215d<T> m4061b(AbstractC25217f<T> abstractC25217f, C25215d<T> c25215d, JSONObject jSONObject, boolean z) {
        String str;
        String str2;
        String str3;
        String str4;
        Float mo4055e;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        JSONArray jSONArray = jSONObject.getJSONArray("attributes");
        int i = 0;
        String str5 = "";
        String str6 = str5;
        while (true) {
            String str7 = str6;
            if (i >= jSONArray.length()) {
                c25215d.f70501f = arrayList2;
                c25215d.f70500e = arrayList;
                return c25215d;
            }
            String str8 = str5;
            String str9 = str7;
            try {
                if (this.f70502a == 1) {
                    String str10 = str5;
                    JSONArray jSONArray2 = jSONArray.getJSONArray(i);
                    int i2 = 0;
                    while (true) {
                        str3 = str5;
                        str4 = str7;
                        if (i2 >= jSONArray2.length()) {
                            break;
                        }
                        String str11 = str5;
                        str5 = jSONArray2.getString(i2);
                        String mo4058b = abstractC25217f.mo4058b(str5);
                        str7 = mo4058b;
                        if (z) {
                            str7 = mo4058b;
                            if (str5.equals("acc_num")) {
                                str7 = mo4058b;
                                if (mo4058b.equals("")) {
                                    str7 = "upi_acc";
                                }
                            }
                        }
                        if (!str7.equals("")) {
                            str3 = str5;
                            str4 = str7;
                            if (str5.contains("amt")) {
                                if (abstractC25217f.mo4055e(str5).floatValue() == Float.MIN_VALUE) {
                                    str4 = "";
                                    str3 = str5;
                                } else {
                                    str4 = String.valueOf((int) Math.ceil(mo4055e.floatValue()));
                                    str3 = str5;
                                }
                            }
                        } else {
                            i2++;
                        }
                    }
                    str2 = str3;
                    str = str4;
                    if ("".equals(str4)) {
                        return null;
                    }
                } else {
                    str2 = jSONArray.getString(i);
                    str = abstractC25217f.mo4058b(str2);
                }
                String str12 = str2;
                arrayList2.add(str2);
                String str13 = str2;
                arrayList.add(str);
                str8 = str2;
                str9 = str;
            } catch (Exception e) {
                arrayList2.add(str8);
                arrayList.add("");
            }
            i++;
            str5 = str8;
            str6 = str9;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:2|(2:114|3)|(13:8|(1:10)|11|12|13|(4:15|16|17|(3:19|20|(2:22|23)))|27|(2:29|(2:32|30))|110|33|(2:35|36)(6:37|38|112|39|40|(2:42|(9:44|(7:48|57|(2:59|(2:61|(1:63)(3:64|(2:66|67)(4:68|69|70|(2:72|73))|74))(4:75|76|77|(2:79|80)))(8:81|82|83|(2:85|86)|87|(2:89|(1:91))|92|93)|94|(1:96)|97|98)|56|57|(0)(0)|94|(0)|97|98)(9:49|(8:51|52|57|(0)(0)|94|(0)|97|98)|56|57|(0)(0)|94|(0)|97|98))(9:53|(7:55|57|(0)(0)|94|(0)|97|98)|56|57|(0)(0)|94|(0)|97|98))|104|(1:117)(2:108|109))|24|27|(0)|110|33|(0)(0)|104|(2:106|117)(1:116)) */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x02be, code lost:
        r14 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x02c0, code lost:
        r7 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:116:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x013e A[Catch: Exception -> 0x02be, TRY_ENTER, TryCatch #0 {Exception -> 0x02be, blocks: (B:33:0x0131, B:37:0x013e), top: B:110:0x0131 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x024a A[Catch: Exception -> 0x02b6, TRY_ENTER, TRY_LEAVE, TryCatch #1 {Exception -> 0x02b6, blocks: (B:39:0x016e, B:46:0x019e, B:49:0x01ab, B:53:0x01ba, B:64:0x01e6, B:68:0x0200, B:70:0x0211, B:75:0x0225, B:77:0x0236, B:81:0x024a, B:83:0x0258, B:87:0x0266, B:89:0x026d, B:91:0x027f, B:96:0x0295), top: B:112:0x016e }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0295 A[Catch: Exception -> 0x02b6, TRY_ENTER, TryCatch #1 {Exception -> 0x02b6, blocks: (B:39:0x016e, B:46:0x019e, B:49:0x01ab, B:53:0x01ba, B:64:0x01e6, B:68:0x0200, B:70:0x0211, B:75:0x0225, B:77:0x0236, B:81:0x024a, B:83:0x0258, B:87:0x0266, B:89:0x026d, B:91:0x027f, B:96:0x0295), top: B:112:0x016e }] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m4060c(p193e.p1681q.p1698e.p1699b.AbstractC25217f<T> r7) {
        /*
            Method dump skipped, instructions count: 753
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1681q.p1698e.p1699b.C25216e.m4060c(e.q.e.b.f):void");
    }
}
