package p459j.p460a.p503e0;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.view.View;
import androidx.appcompat.widget.ActivityChooserModel;
import com.google.android.gms.maps.model.LatLng;
import com.mopub.common.Constants;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.ReportDialogActivity;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.gson.NumberInfo;
import java.net.URLEncoder;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p533l.C12928g;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p582w0.C13884a4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14125q;
import p459j.p460a.p582w0.C14148s0;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p583a5.C13895d;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.p592b0.C14241a;
import p459j.p460a.p613z0.DialogC14625g;
import p459j.p460a.p613z0.DialogC14644l;
import p459j.p460a.p613z0.p617p.C14687h;
import p626l.C14986p;
import p626l.p631e0.C14966w;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��Z\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00062\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ2\u0010\u001b\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001e\u001a\u00020\u0015H\u0007J\"\u0010\u001f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u00062\b\u0010 \u001a\u0004\u0018\u00010\u0006H\u0007J\u0018\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u001c\u001a\u00020\u0006H\u0007J\u001a\u0010$\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J\"\u0010%\u001a\u00020\r2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u001d\u001a\u00020\u00062\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0007J\u0018\u0010&\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020(H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��¨\u0006)"}, m815d2 = {"Lgogolook/callgogolook2/ndp/NdpUtils;", "", "()V", "DELAY_FOR_UNBLOCK_UPDATE_MS", "", "GOOGLE_QUERY_URI_PREFIX", "", "MAP_QUERY_URI_PREFIX", "MIN_AVAILABLE_ADDRESS_LENGTH", "", "NAVER_QUERY_URI_PREFIX", "URL_CREATE_SHOWCARD_WEB", "claimOwnerForFixedLine", "", "context", "Landroid/content/Context;", "claimOwnerForMobile", "getViewOnScreenPositionY", "view", "Landroid/view/View;", "hasCoverUrl", "", "numberInfo", "Lgogolook/callgogolook2/gson/NumberInfo;", "parseE164Data", Constants.INTENT_SCHEME, "Landroid/content/Intent;", "performBlock", "number", "e164", "isBlock", "performCheckInternetSearchResult", "name", "performClaimOwnership", ActivityChooserModel.ATTRIBUTE_ACTIVITY, "Landroid/app/Activity;", "performMap", "performShareNumber", "performTag", "model", "Lgogolook/callgogolook2/ndp/NumberDetailContract$NumberDetailModel;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.e0.g */
/* loaded from: classes3-dex2jar.jar:j/a/e0/g.class */
public final class C12317g {

    /* renamed from: a */
    public static final C12317g f27803a = new C12317g();

    /* renamed from: j.a.e0.g$a */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/g$a.class */
    public static final class DialogInterface$OnClickListenerC12318a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f27804a;

        public DialogInterface$OnClickListenerC12318a(Context context) {
            this.f27804a = context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse("https://m.help.naver.com/support/mapService/input.nhn?categoryNo=12968"));
            C14191v.m2257a(this.f27804a, intent, null, 2, null);
        }
    }

    /* renamed from: j.a.e0.g$b */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/g$b.class */
    public static final class DialogInterface$OnClickListenerC12319b implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f27805a;

        public DialogInterface$OnClickListenerC12319b(Context context) {
            this.f27805a = context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C14191v.m2257a(this.f27805a, C14125q.m2415a("https://showcard.whoscall.com/zh-TW/login/"), null, 2, null);
        }
    }

    /* renamed from: j.a.e0.g$c */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/g$c.class */
    public static final class DialogInterface$OnClickListenerC12320c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f27806a;

        public DialogInterface$OnClickListenerC12320c(Context context) {
            this.f27806a = context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C14191v.m2257a(this.f27806a, C14125q.m2416a(), null, 2, null);
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m815d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: j.a.e0.g$d */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/g$d.class */
    public static final class View$OnClickListenerC12321d implements View.OnClickListener {

        /* renamed from: a */
        public static final View$OnClickListenerC12321d f27807a = new View$OnClickListenerC12321d();

        /* renamed from: j.a.e0.g$d$a */
        /* loaded from: classes3-dex2jar.jar:j/a/e0/g$d$a.class */
        public static final class RunnableC12322a implements Runnable {

            /* renamed from: a */
            public static final RunnableC12322a f27808a = new RunnableC12322a();

            @Override // java.lang.Runnable
            public final void run() {
                C14037j3.m2731a().mo2704a(new C14148s0(3, 0));
            }
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            new Handler().postDelayed(RunnableC12322a.f27808a, 200L);
        }
    }

    /* renamed from: j.a.e0.g$e */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/g$e.class */
    public static final class DialogInterface$OnClickListenerC12323e implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Activity f27809a;

        public DialogInterface$OnClickListenerC12323e(Activity activity) {
            this.f27809a = activity;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                C12317g.f27803a.m6391b(this.f27809a);
            } else {
                C12317g.f27803a.m6400a(this.f27809a);
            }
        }
    }

    /* renamed from: a */
    public static final int m6394a(View view) {
        C15149k.m377b(view, "view");
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr[1];
    }

    /* renamed from: a */
    public static final void m6402a(Activity activity, String str) {
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        C15149k.m377b(str, "number");
        if (!C14217x3.m2137h(activity)) {
            C14687h.m861a(activity, C14217x3.m2200a((int) R$string.ndp_report_fail), 1).m858c();
        } else if (C14108o4.m2477i(str)) {
            f27803a.m6391b(activity);
        } else if (C14108o4.m2478h(str)) {
            f27803a.m6400a(activity);
        } else {
            DialogC14625g gVar = new DialogC14625g(activity);
            gVar.m970a(new String[]{C14217x3.m2200a((int) R$string.ndp_more_owner_mobile), C14217x3.m2200a((int) R$string.ndp_more_owner_notmobile)}, new DialogInterface$OnClickListenerC12323e(activity));
            gVar.show();
        }
    }

    /* renamed from: a */
    public static final void m6401a(Activity activity, String str, NumberInfo numberInfo) {
        C15149k.m377b(activity, ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        C15149k.m377b(str, "e164");
        C13884a4.m3188a(activity);
        String str2 = null;
        String C = numberInfo != null ? numberInfo.m28393C() : null;
        if (numberInfo != null) {
            str2 = numberInfo.m28328g();
        }
        C13895d.m3119a(activity, C, str, str2, false, true);
    }

    /* renamed from: a */
    public static final void m6399a(Context context, NumberInfo numberInfo) {
        String str;
        C15149k.m377b(context, "context");
        String g = numberInfo != null ? numberInfo.m28328g() : null;
        LatLng z = numberInfo != null ? numberInfo.m28283z() : null;
        StringBuilder sb = new StringBuilder();
        sb.append("https://maps.google.com/maps?q=");
        if (g != null && g.length() > 5) {
            str = URLEncoder.encode(g);
        } else if (z != null) {
            str = URLEncoder.encode("loc:" + z.f7058a + "," + z.f7059b);
        } else {
            return;
        }
        sb.append(str);
        String sb2 = sb.toString();
        if (!(sb2.length() == 0)) {
            C14191v.m2257a(context, new Intent("android.intent.action.VIEW", Uri.parse(sb2)), null, 2, null);
        }
    }

    /* renamed from: a */
    public static final void m6398a(Context context, C12328l lVar) {
        String c;
        NumberInfo e;
        String C;
        String[] strArr;
        List<String> h;
        C15149k.m377b(context, "context");
        C15149k.m377b(lVar, "model");
        String d = lVar.m6366d();
        if (d != null && (c = lVar.m6368c()) != null && (e = lVar.m6365e()) != null && (C = e.m28393C()) != null) {
            NumberInfo e2 = lVar.m6365e();
            String M = e2 != null ? e2.m28383M() : null;
            NumberInfo e3 = lVar.m6365e();
            if (e3 == null || (h = e3.m28324h()) == null) {
                strArr = null;
            } else {
                Object[] array = h.toArray(new String[0]);
                if (array != null) {
                    strArr = (String[]) array;
                } else {
                    throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
                }
            }
            ReportDialogActivity.m28959a(context, new DataUserReport(d, c, C, M, DataUserReport.Source.NDP), c, d, strArr, C14241a.EnumC14244c.Ndp, true);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m6397a(android.content.Context r7, java.lang.String r8, java.lang.String r9) {
        /*
            r0 = r7
            java.lang.String r1 = "context"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r8
            java.lang.String r1 = "number"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            boolean r0 = p459j.p460a.p582w0.C14017g4.m2831E()
            if (r0 == 0) goto L_0x0019
            java.lang.String r0 = "https://search.naver.com/search.naver?ie=utf8&query="
            r10 = r0
            goto L_0x001d
        L_0x0019:
            java.lang.String r0 = "https://google.com/search?q="
            r10 = r0
        L_0x001d:
            r0 = 0
            r11 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0042
            r0 = r9
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x0033
            r0 = 1
            r12 = r0
            goto L_0x0036
        L_0x0033:
            r0 = 0
            r12 = r0
        L_0x0036:
            r0 = r12
            r1 = 1
            if (r0 != r1) goto L_0x0042
            r0 = r9
            r13 = r0
            goto L_0x0048
        L_0x0042:
            r0 = r8
            java.lang.String r0 = p459j.p460a.p582w0.C14108o4.m2473m(r0)
            r13 = r0
        L_0x0048:
            r0 = r9
            if (r0 == 0) goto L_0x0068
            r0 = r11
            r12 = r0
            r0 = r9
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x005c
            r0 = 1
            r12 = r0
        L_0x005c:
            r0 = r12
            r1 = 1
            if (r0 != r1) goto L_0x0068
            r0 = r13
            r9 = r0
            goto L_0x006a
        L_0x0068:
            r0 = r8
            r9 = r0
        L_0x006a:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r14 = r0
            r0 = r14
            r1 = r10
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            r1 = r13
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r9
            r2 = r14
            java.lang.String r2 = r2.toString()
            r3 = 3
            r4 = r8
            r5 = 1
            gogolook.callgogolook2.ndp.NdpWebActivity.m26873a(r0, r1, r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p503e0.C12317g.m6397a(android.content.Context, java.lang.String, java.lang.String):void");
    }

    /* renamed from: a */
    public static final void m6396a(Context context, String str, String str2, NumberInfo numberInfo, boolean z) {
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "number");
        C15149k.m377b(str2, "e164");
        if (!(str2.length() == 0) && C14217x3.m2193a(context)) {
            String str3 = null;
            String C = numberInfo != null ? numberInfo.m28393C() : null;
            String str4 = "";
            String str5 = C != null ? C : "";
            if (numberInfo != null) {
                str3 = numberInfo.m28383M();
            }
            if (str3 != null) {
                str4 = str3;
            }
            if (z) {
                C12928g.m4997a(context, str, 3, (String) null, View$OnClickListenerC12321d.f27807a, DataUserReport.Source.NDP);
                return;
            }
            C14289m.m1909a(5, 1, str2);
            C12928g.m4989a(context, false, true, true, str, (HandlerC12947l) null, 0, new DataUserReport(str, str2, str5, str4, DataUserReport.Source.NDP));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0021, code lost:
        if ((r0.length() > 0) != true) goto L_0x0024;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
        if (r3.m28312k0() == true) goto L_0x0036;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0036, code lost:
        r7 = true;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m6393a(gogolook.callgogolook2.gson.NumberInfo r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0024
            r0 = r3
            java.lang.String r0 = r0.m28309m()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0024
            r0 = r5
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x001d
            r0 = 1
            r6 = r0
            goto L_0x001f
        L_0x001d:
            r0 = 0
            r6 = r0
        L_0x001f:
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L_0x0036
        L_0x0024:
            r0 = r4
            r7 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0039
            r0 = r4
            r7 = r0
            r0 = r3
            boolean r0 = r0.m28312k0()
            r1 = 1
            if (r0 != r1) goto L_0x0039
        L_0x0036:
            r0 = 1
            r7 = r0
        L_0x0039:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p503e0.C12317g.m6393a(gogolook.callgogolook2.gson.NumberInfo):boolean");
    }

    /* renamed from: a */
    public final String m6395a(Intent intent) {
        String str = null;
        if (intent != null) {
            Uri data = intent.getData();
            str = null;
            if (data != null) {
                if (C14966w.m715b(data.getHost(), "whoscall.com", true)) {
                    str = data.getPathSegments().size() >= 3 ? C14108o4.m2489b(data.getPathSegments().get(2), data.getPathSegments().get(1)) : data.getPathSegments().get(1);
                } else {
                    str = null;
                    if (C14966w.m715b(data.getHost(), "number.whoscall.com", true)) {
                        str = C14108o4.m2489b(data.getPathSegments().get(2), data.getPathSegments().get(1));
                    }
                }
            }
        }
        return str;
    }

    /* renamed from: a */
    public final void m6400a(Context context) {
        if (C14017g4.m2831E()) {
            DialogC14644l lVar = new DialogC14644l(context);
            lVar.m935a(C14206w4.m2225a((int) R$string.ndp_more_owner_fixlinedialog_content_kr));
            lVar.m932b(C14206w4.m2225a((int) R$string.ndp_more_owner_fixlinedialog_button_kr), new DialogInterface$OnClickListenerC12318a(context));
            lVar.show();
            return;
        }
        DialogC14644l lVar2 = new DialogC14644l(context);
        lVar2.m935a(C14217x3.m2200a((int) R$string.ndp_more_owner_fixlinedialog_content));
        lVar2.m932b(C14217x3.m2200a((int) R$string.ndp_more_owner_fixlinedialog_button), new DialogInterface$OnClickListenerC12319b(context));
        lVar2.show();
    }

    /* renamed from: b */
    public final void m6391b(Context context) {
        DialogC14644l lVar = new DialogC14644l(context);
        lVar.m935a(C14217x3.m2200a((int) R$string.ndp_more_owner_mobiledialog_content));
        lVar.m932b(C14217x3.m2200a((int) R$string.ndp_more_owner_mobiledialog_button), new DialogInterface$OnClickListenerC12320c(context));
        lVar.show();
    }
}
