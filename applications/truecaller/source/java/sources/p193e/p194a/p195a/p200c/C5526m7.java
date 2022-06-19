package p193e.p194a.p195a.p200c;

import android.content.Context;
import android.view.View;
import android.widget.SimpleAdapter;
import androidx.appcompat.C0032R;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.Number;
import java.util.HashMap;
import javax.inject.Inject;
import p1727n3.p1734b.p1743f.C25493b0;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p997k3.AbstractC16458h;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.a.c.m7 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/m7.class */
public final class C5526m7 implements AbstractC5446k7 {

    /* renamed from: a */
    public C25493b0 f18698a;

    /* renamed from: b */
    public final AbstractC19223c0 f18699b;

    /* renamed from: c */
    public final AbstractC16458h f18700c;

    @Inject
    public C5526m7(AbstractC19223c0 abstractC19223c0, AbstractC16458h abstractC16458h) {
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC16458h, "numberTypeLabelProvider");
        this.f18699b = abstractC19223c0;
        this.f18700c = abstractC16458h;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5446k7
    /* renamed from: a */
    public void mo32992a() {
        C25493b0 c25493b0 = this.f18698a;
        if (c25493b0 != null) {
            c25493b0.dismiss();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5446k7
    /* renamed from: b */
    public void mo32991b(Context context, View view, Number number, C5310g1 c5310g1) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(view, "anchor");
        l.e(number, "number");
        l.e(c5310g1, "listener");
        HashMap hashMap = new HashMap();
        hashMap.put("ICON", 2131232403);
        String m35477g = number.m35477g();
        if (m35477g == null) {
            m35477g = "";
        }
        l.d(m35477g, "number.numberForDisplay ?: \"\"");
        hashMap.put("TITLE", m35477g);
        hashMap.put("SUBTITLE", C17891a1.C17902k.m15593m0(number, this.f18699b, this.f18700c));
        HashMap hashMap2 = new HashMap();
        hashMap2.put("ICON", 2131232429);
        String string = context.getString(2131890378);
        l.d(string, "context.getString(R.string.voip_text)");
        hashMap2.put("TITLE", string);
        String m35477g2 = number.m35477g();
        String str = "";
        if (m35477g2 != null) {
            str = m35477g2;
        }
        l.d(str, "number.numberForDisplay ?: \"\"");
        hashMap2.put("SUBTITLE", str);
        SimpleAdapter simpleAdapter = new SimpleAdapter(context, i.T(new HashMap[]{hashMap, hashMap2}), C2752R.layout.view_conversation_number_picker, new String[]{"ICON", "TITLE", "SUBTITLE"}, new int[]{2131364289, 2131366403, 2131366401});
        C25493b0 c25493b0 = new C25493b0(context, null, C0032R.attr.listPopupWindowStyle, 0);
        c25493b0.f71331p = view;
        c25493b0.f71319d = -2;
        c25493b0.m3398m(simpleAdapter);
        c25493b0.f71332q = new C5486l7(view, simpleAdapter, c5310g1);
        c25493b0.show();
        this.f18698a = c25493b0;
    }
}
