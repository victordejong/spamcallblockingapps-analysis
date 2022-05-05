package gogolook.callgogolook2.slook;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.samsung.android.sdk.look.cocktailbar.SlookCocktailProvider;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.main.MainActivity;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import gogolook.callgogolook2.realm.obj.logsgroup.LogsGroupRealmObject;
import p081h.p439m.p440a.p441a.p442b.p443b.C10750a;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p541n0.C13131j;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14261f;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/slook/WCCocktailProvider.class */
public class WCCocktailProvider extends SlookCocktailProvider {

    /* renamed from: a */
    public RemoteViews f12941a = null;

    /* renamed from: a */
    public String m26028a(int i) {
        return C14206w4.m2225a(i);
    }

    @Override // com.samsung.android.sdk.look.cocktailbar.SlookCocktailProvider
    /* renamed from: a */
    public void mo26027a(Context context, int i, int i2) {
        mo26023a(context, C10750a.m10736a(context), C10750a.m10736a(context).m10737a(new ComponentName(context, WCCocktailProvider.class)));
    }

    /* renamed from: a */
    public final void m26026a(Context context, int i, RemoteViews remoteViews) {
        m26025a(context, i, null, remoteViews);
    }

    /* renamed from: a */
    public final void m26025a(Context context, int i, String str, RemoteViews remoteViews) {
        Intent intent = null;
        if (i == 2131361959) {
            intent = new Intent(context, MainActivity.class);
        } else if (i == 2131362674 || i == 2131363498) {
            intent = NumberDetailActivity.m26859a(context, str, null, null);
            intent.putExtra("backtomain", true);
        }
        if (intent != null) {
            intent.setFlags(536870912);
            remoteViews.setOnClickPendingIntent(i, PendingIntent.getActivity(context, i, intent, 134217728));
        }
    }

    /* renamed from: a */
    public final void m26024a(Context context, RemoteViews remoteViews) {
        m26026a(context, R$id.btn_app, remoteViews);
    }

    @Override // com.samsung.android.sdk.look.cocktailbar.SlookCocktailProvider
    /* renamed from: a */
    public void mo26023a(Context context, C10750a aVar, int[] iArr) {
        m26022c(context);
        m26024a(context, this.f12941a);
        for (int i : iArr) {
            aVar.m10738a(i, this.f12941a);
        }
        C14261f.m1974a("cocktail_provider_update", Bundle.EMPTY);
    }

    /* renamed from: c */
    public final void m26022c(Context context) {
        RowInfo a;
        if (this.f12941a == null) {
            this.f12941a = new RemoteViews(context.getPackageName(), (int) R$layout.slook_cocktailpanel);
        }
        LogsGroupRealmObject h = C13131j.m4521h();
        if (h != null) {
            String displayName = h.getDisplayName();
            String number = h.getNumber();
            String e164 = h.getE164();
            int intValue = h.getType() != null ? h.getType().intValue() : 0;
            if (!LogsGroupRealmObject.isMsgType(intValue)) {
                switch (intValue) {
                    case 17:
                        this.f12941a.setImageViewResource(R$id.icon_type, R$drawable.notification_incoming);
                        break;
                    case 18:
                        this.f12941a.setImageViewResource(R$id.icon_type, R$drawable.notification_outgoing);
                        break;
                    case 19:
                        this.f12941a.setImageViewResource(R$id.icon_type, R$drawable.notification_missedcall);
                        break;
                }
            } else {
                this.f12941a.setImageViewResource(R$id.icon_type, R$drawable.notification_message);
            }
            StringBuilder sb = new StringBuilder();
            boolean z = true;
            String a2 = C14108o4.m2496a(number, C14108o4.EnumC14110b.CALL) ? (C14217x3.m2160b(number) || FavoriteGroupRealmObject.PARENDID_DELETED.equals(number) || "-2".equals(number)) ? m26028a(R$string.unknown_number) : number : C14108o4.m2493a(number, true, false);
            if (!TextUtils.isEmpty(displayName)) {
                sb.append("<font size='68' color='#efefef'>" + displayName + " </font>");
            } else {
                if (e164 != null) {
                    NumberInfo d = C11052i.m10328e().m10329d(e164);
                    if (d.m28304o0() && (a = RowInfo.m28256a(e164, d)) != null) {
                        if (a.m28224h().isRed) {
                            sb.append("<font size='68' color='#ec4336'>");
                        } else {
                            sb.append("<font size='68' color='#efefef'>");
                        }
                        sb.append(a.m28224h().name);
                        sb.append(" </font>");
                    }
                }
                z = false;
            }
            if (z) {
                sb.append("<font size='66' color='#7f7f7f'>" + a2 + "</font>");
            } else {
                sb.append("<font size='68' color='#efefef'>" + a2 + "</font>");
            }
            this.f12941a.setTextViewText(R$id.tv_lastcall, Html.fromHtml(sb.toString()));
            m26025a(context, R$id.tv_lastcall, number, this.f12941a);
            m26025a(context, R$id.ll_lastcall, number, this.f12941a);
        }
    }
}
