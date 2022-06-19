package p193e.p194a.p1114o5.p1119c2;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import com.tenor.android.core.network.constant.Protocols;
import com.truecaller.account.network.TokenResponseDto;
import n3.b.a.g;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1114o5.p1119c2.AbstractC18977k;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p372b0.p430q.C8613t;
/* renamed from: e.a.o5.c2.e */
/* loaded from: classes15-dex2jar.jar:e/a/o5/c2/e.class */
public class C18965e implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ g f53111a;

    /* renamed from: b */
    public final /* synthetic */ Activity f53112b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC18977k.C18979b f53113c;

    public C18965e(g gVar, Activity activity, AbstractC18977k.C18979b c18979b) {
        this.f53111a = gVar;
        this.f53112b = activity;
        this.f53113c = c18979b;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f53111a.dismiss();
        Activity activity = this.f53112b;
        String str = activity.getResources().getStringArray(this.f53113c.f53121f)[i];
        if (!TextUtils.isEmpty(str)) {
            String scheme = Uri.parse(str).getScheme();
            scheme.hashCode();
            scheme.hashCode();
            boolean z = true;
            switch (scheme.hashCode()) {
                case 114009:
                    if (scheme.equals(TokenResponseDto.METHOD_SMS)) {
                        z = false;
                        break;
                    }
                    break;
                case 3213448:
                    if (scheme.equals(Protocols.HTTP)) {
                        z = true;
                        break;
                    }
                    break;
                case 99617003:
                    if (scheme.equals("https")) {
                        z = true;
                        break;
                    }
                    break;
                case 109566356:
                    if (scheme.equals("smsto")) {
                        z = true;
                        break;
                    }
                    break;
            }
            switch (z) {
                case false:
                case true:
                    C8613t.m28198n(activity, new Intent("android.intent.action.SENDTO", Uri.parse(str)));
                    break;
                case true:
                case true:
                    C8613t.m28198n(activity, C8613t.m28206f(Uri.parse(str)));
                    break;
            }
        }
        AbstractC19462a m8596m1 = C22128a.m8596m1();
        AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b("CARRIER_Menu_Item_Selected");
        c19504b.m13265b("Position", i);
        c19504b.m13263d("Partner", this.f53113c.f53116a);
        m8596m1.mo13271e(c19504b.m13266a());
    }
}
