package gogolook.callgogolook2.phone.call.dialog;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.provider.ContactsContract;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.app.ActivityCompat;
import androidx.core.role.RoleManagerCompat;
import androidx.room.RoomDatabase;
import com.facebook.ads.AdError;
import com.google.gson.Gson;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.AdsSettingsKt;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.NavigationAppConfig;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.phone.WCInCallService;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import gogolook.callgogolook2.receiver.CheckTeaserNotificationReceiver;
import gogolook.callgogolook2.view.RecycleSafeImageView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import javax.annotation.Resource;
import p081h.p119d.p120a.C5768f;
import p081h.p119d.p120a.p145w.p147j.C6073c;
import p081h.p119d.p120a.p148x.C6087b;
import p081h.p119d.p120a.p148x.C6088c;
import p081h.p160h.p172b.p173a.C6292b;
import p081h.p160h.p172b.p173a.C6298e;
import p081h.p203i.p384e.C10099e;
import p081h.p203i.p384e.C10113s;
import p081h.p203i.p384e.p390x.C10173a;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p463b0.p468u.C11396a;
import p459j.p460a.p521j0.C12504h;
import p459j.p460a.p521j0.p522u.C12521c;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14094o;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14118p2;
import p459j.p460a.p582w0.C14166s4;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14174u;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.C14320y3;
import p459j.p460a.p582w0.C14327z3;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p583a5.C13892b;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
import p459j.p460a.p582w0.p588e5.C13993a;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p613z0.C14602b;
import p459j.p460a.p613z0.DialogC14618f;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallUtils.class */
public class CallUtils {

    /* renamed from: a */
    public static HashSet<EnumC4993l> f12318a = new HashSet<>();

    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallUtils$DefaultDialerChangedReceiver.class */
    public static class DefaultDialerChangedReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (CallUtils.m26551c() && "android.telecom.action.DEFAULT_DIALER_CHANGED".equals(intent.getAction())) {
                String stringExtra = intent.getStringExtra("android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME");
                boolean z = !TextUtils.isEmpty(stringExtra) && stringExtra.equals(context.getPackageName());
                if (z) {
                    C14289m.m1849i();
                }
                if (CallUtils.m26535i()) {
                    C14037j3.m2731a().mo2704a(new C12504h(z));
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallUtils$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallUtils$a.class */
    public static final class DialogInterface$OnClickListenerC4982a implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ DialogInterface.OnClickListener f12319a;

        public DialogInterface$OnClickListenerC4982a(DialogInterface.OnClickListener onClickListener) {
            this.f12319a = onClickListener;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C14217x3.m2168b(C14217x3.m2144f() + 1);
            DialogInterface.OnClickListener onClickListener = this.f12319a;
            if (onClickListener != null) {
                onClickListener.onClick(dialogInterface, i);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallUtils$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallUtils$b.class */
    public static final class C4983b extends C10173a<List<Integer>> {
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallUtils$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallUtils$c.class */
    public static final class RunnableC4984c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Toast f12320a;

        public RunnableC4984c(Toast toast) {
            this.f12320a = toast;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f12320a.cancel();
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallUtils$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallUtils$d.class */
    public static final class C4985d extends C6073c {

        /* renamed from: e */
        public final /* synthetic */ RecycleSafeImageView f12321e;

        /* renamed from: f */
        public final /* synthetic */ ImageView f12322f;

        /* renamed from: g */
        public final /* synthetic */ View f12323g;

        /* renamed from: h */
        public final /* synthetic */ RowInfo f12324h;

        /* renamed from: i */
        public final /* synthetic */ String f12325i;

        /* renamed from: j */
        public final /* synthetic */ int f12326j;

        /* renamed from: k */
        public final /* synthetic */ List f12327k;

        /* renamed from: l */
        public final /* synthetic */ EnumC4993l f12328l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4985d(ImageView imageView, RecycleSafeImageView recycleSafeImageView, ImageView imageView2, View view, RowInfo rowInfo, String str, int i, List list, EnumC4993l lVar) {
            super(imageView);
            this.f12321e = recycleSafeImageView;
            this.f12322f = imageView2;
            this.f12323g = view;
            this.f12324h = rowInfo;
            this.f12325i = str;
            this.f12326j = i;
            this.f12327k = list;
            this.f12328l = lVar;
        }

        @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6075e, p081h.p119d.p120a.p145w.p147j.AbstractC6071a, p081h.p119d.p120a.p145w.p147j.AbstractC6082k
        /* renamed from: a */
        public void mo2453a(Exception exc, Drawable drawable) {
            CallUtils.m26559b(RowInfo.MetaphorType.INFO, this.f12321e, this.f12322f, this.f12323g, this.f12324h, this.f12325i, this.f12326j, this.f12327k, this.f12328l);
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallUtils$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallUtils$e.class */
    public static final class C4986e extends C6073c {

        /* renamed from: e */
        public final /* synthetic */ String f12329e;

        /* renamed from: f */
        public final /* synthetic */ RowInfo f12330f;

        /* renamed from: g */
        public final /* synthetic */ List f12331g;

        /* renamed from: h */
        public final /* synthetic */ RecycleSafeImageView f12332h;

        /* renamed from: i */
        public final /* synthetic */ ImageView f12333i;

        /* renamed from: j */
        public final /* synthetic */ View f12334j;

        /* renamed from: k */
        public final /* synthetic */ int f12335k;

        /* renamed from: l */
        public final /* synthetic */ EnumC4993l f12336l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4986e(ImageView imageView, String str, RowInfo rowInfo, List list, RecycleSafeImageView recycleSafeImageView, ImageView imageView2, View view, int i, EnumC4993l lVar) {
            super(imageView);
            this.f12329e = str;
            this.f12330f = rowInfo;
            this.f12331g = list;
            this.f12332h = recycleSafeImageView;
            this.f12333i = imageView2;
            this.f12334j = view;
            this.f12335k = i;
            this.f12336l = lVar;
        }

        @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6075e, p081h.p119d.p120a.p145w.p147j.AbstractC6071a, p081h.p119d.p120a.p145w.p147j.AbstractC6082k
        /* renamed from: a */
        public void mo2453a(Exception exc, Drawable drawable) {
            C14094o.m2554f(this.f12329e);
            if (this.f12330f != null) {
                this.f12331g.remove(RowInfo.MetaphorType.CONTACT);
                CallUtils.m26544d(this.f12332h, this.f12333i, this.f12334j, this.f12330f, this.f12329e, this.f12335k, this.f12331g, this.f12336l);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallUtils$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallUtils$f.class */
    public static final class C4987f implements Single.OnSubscribe<String> {

        /* renamed from: a */
        public final /* synthetic */ Context f12337a;

        /* renamed from: b */
        public final /* synthetic */ String f12338b;

        public C4987f(Context context, String str) {
            this.f12337a = context;
            this.f12338b = str;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super String> singleSubscriber) {
            singleSubscriber.onSuccess(C14217x3.m2155c(this.f12337a, this.f12338b));
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallUtils$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallUtils$g.class */
    public static final class C4988g implements Action1<String> {

        /* renamed from: a */
        public final /* synthetic */ RecycleSafeImageView f12339a;

        /* renamed from: b */
        public final /* synthetic */ ImageView f12340b;

        /* renamed from: c */
        public final /* synthetic */ RowInfo f12341c;

        /* renamed from: d */
        public final /* synthetic */ EnumC4993l f12342d;

        public C4988g(RecycleSafeImageView recycleSafeImageView, ImageView imageView, RowInfo rowInfo, EnumC4993l lVar) {
            this.f12339a = recycleSafeImageView;
            this.f12340b = imageView;
            this.f12341c = rowInfo;
            this.f12342d = lVar;
        }

        /* JADX WARN: Type inference failed for: r0v10 */
        /* JADX WARN: Type inference failed for: r0v5, types: [gogolook.callgogolook2.gson.RowInfo, java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r0v6, types: [gogolook.callgogolook2.gson.RowInfo, java.util.List, android.widget.ImageView, gogolook.callgogolook2.view.RecycleSafeImageView, int] */
        /* JADX WARN: Type inference failed for: r0v9 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void call(java.lang.String r10) {
            /*
                r9 = this;
                r0 = r9
                gogolook.callgogolook2.view.RecycleSafeImageView r0 = r0.f12339a
                r1 = r9
                android.widget.ImageView r1 = r1.f12340b
                r2 = 0
                r3 = r9
                gogolook.callgogolook2.gson.RowInfo r3 = r3.f12341c
                r4 = r10
                int r0 = gogolook.callgogolook2.phone.call.dialog.CallUtils.m26579a(r0, r1, r2, r3, r4)
                r11 = r0
                r0 = r9
                gogolook.callgogolook2.view.RecycleSafeImageView r0 = r0.f12339a
                r12 = r0
                r0 = r9
                android.widget.ImageView r0 = r0.f12340b
                r13 = r0
                r0 = r9
                gogolook.callgogolook2.gson.RowInfo r0 = r0.f12341c
                r14 = r0
                java.util.ArrayList r0 = new java.util.ArrayList
                r15 = r0
                r0 = r14
                if (r0 != 0) goto L_0x0035
                r0 = r15
                r0.<init>()
                goto L_0x003f
            L_0x0035:
                r0 = r15
                r1 = r14
                java.util.List r1 = r1.m28231e()
                r0.<init>(r1)
            L_0x003f:
                r0 = r12
                r1 = r13
                r2 = 0
                r3 = r14
                r4 = r10
                r5 = r11
                r6 = r15
                r7 = r9
                gogolook.callgogolook2.phone.call.dialog.CallUtils$l r7 = r7.f12342d
                gogolook.callgogolook2.phone.call.dialog.CallUtils.m26578a(r0, r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.phone.call.dialog.CallUtils.C4988g.call(java.lang.String):void");
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallUtils$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallUtils$h.class */
    public static final class C4989h implements Action1<String> {

        /* renamed from: a */
        public final /* synthetic */ RecycleSafeImageView f12343a;

        /* renamed from: b */
        public final /* synthetic */ ImageView f12344b;

        /* renamed from: c */
        public final /* synthetic */ View f12345c;

        /* renamed from: d */
        public final /* synthetic */ RowInfo f12346d;

        /* renamed from: e */
        public final /* synthetic */ EnumC4993l f12347e;

        public C4989h(RecycleSafeImageView recycleSafeImageView, ImageView imageView, View view, RowInfo rowInfo, EnumC4993l lVar) {
            this.f12343a = recycleSafeImageView;
            this.f12344b = imageView;
            this.f12345c = view;
            this.f12346d = rowInfo;
            this.f12347e = lVar;
        }

        /* JADX WARN: Type inference failed for: r0v10 */
        /* JADX WARN: Type inference failed for: r0v11 */
        /* JADX WARN: Type inference failed for: r0v6, types: [gogolook.callgogolook2.gson.RowInfo, java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r0v7, types: [gogolook.callgogolook2.gson.RowInfo, java.util.List, android.widget.ImageView, gogolook.callgogolook2.view.RecycleSafeImageView, android.view.View, int] */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void call(java.lang.String r10) {
            /*
                r9 = this;
                r0 = r9
                gogolook.callgogolook2.view.RecycleSafeImageView r0 = r0.f12343a
                r1 = r9
                android.widget.ImageView r1 = r1.f12344b
                r2 = r9
                android.view.View r2 = r2.f12345c
                r3 = r9
                gogolook.callgogolook2.gson.RowInfo r3 = r3.f12346d
                r4 = r10
                int r0 = gogolook.callgogolook2.phone.call.dialog.CallUtils.m26579a(r0, r1, r2, r3, r4)
                r11 = r0
                r0 = r9
                gogolook.callgogolook2.view.RecycleSafeImageView r0 = r0.f12343a
                r12 = r0
                r0 = r9
                android.widget.ImageView r0 = r0.f12344b
                r13 = r0
                r0 = r9
                android.view.View r0 = r0.f12345c
                r14 = r0
                r0 = r9
                gogolook.callgogolook2.gson.RowInfo r0 = r0.f12346d
                r15 = r0
                java.util.ArrayList r0 = new java.util.ArrayList
                r16 = r0
                r0 = r15
                if (r0 != 0) goto L_0x003e
                r0 = r16
                r0.<init>()
                goto L_0x0048
            L_0x003e:
                r0 = r16
                r1 = r15
                java.util.List r1 = r1.m28231e()
                r0.<init>(r1)
            L_0x0048:
                r0 = r12
                r1 = r13
                r2 = r14
                r3 = r15
                r4 = r10
                r5 = r11
                r6 = r16
                r7 = r9
                gogolook.callgogolook2.phone.call.dialog.CallUtils$l r7 = r7.f12347e
                gogolook.callgogolook2.phone.call.dialog.CallUtils.m26578a(r0, r1, r2, r3, r4, r5, r6, r7)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.phone.call.dialog.CallUtils.C4989h.call(java.lang.String):void");
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallUtils$i */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallUtils$i.class */
    public static final class ViewTreeObserver$OnGlobalLayoutListenerC4990i implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ View f12348a;

        /* renamed from: b */
        public final /* synthetic */ int[] f12349b;

        /* renamed from: c */
        public final /* synthetic */ WindowManager f12350c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC4992k f12351d;

        public ViewTreeObserver$OnGlobalLayoutListenerC4990i(View view, int[] iArr, WindowManager windowManager, AbstractC4992k kVar) {
            this.f12348a = view;
            this.f12349b = iArr;
            this.f12350c = windowManager;
            this.f12351d = kVar;
        }

        /* renamed from: a */
        public final boolean m26522a(boolean z) {
            String string = PreferenceManager.getDefaultSharedPreferences(MyApplication.m29013o()).getString("develop_isfullscreen_preference", "default");
            if (string.equals("default")) {
                return z;
            }
            if (string.equals(AdsSettingsKt.KEY_ENABLE)) {
                return true;
            }
            if (string.equals("disable")) {
                z = false;
            }
            return z;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            try {
                this.f12348a.getLocationOnScreen(this.f12349b);
                this.f12350c.removeView(this.f12348a);
                if (this.f12351d != null) {
                    AbstractC4992k kVar = this.f12351d;
                    boolean z = true;
                    if (this.f12349b[1] != 0) {
                        z = false;
                    }
                    kVar.mo5289a(m26522a(z));
                }
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallUtils$j */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallUtils$j.class */
    public static final class DialogInterface$OnClickListenerC4991j implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f12352a;

        /* renamed from: b */
        public final /* synthetic */ DialogInterface.OnClickListener f12353b;

        public DialogInterface$OnClickListenerC4991j(Context context, DialogInterface.OnClickListener onClickListener) {
            this.f12352a = context;
            this.f12353b = onClickListener;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            C13878a3.m3238a(this.f12352a, RoleManagerCompat.ROLE_DIALER, 0);
            DialogInterface.OnClickListener onClickListener = this.f12353b;
            if (onClickListener != null) {
                onClickListener.onClick(dialogInterface, i);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallUtils$k */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallUtils$k.class */
    public interface AbstractC4992k {
        /* renamed from: a */
        void mo5289a(boolean z);
    }

    /* renamed from: gogolook.callgogolook2.phone.call.dialog.CallUtils$l */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/phone/call/dialog/CallUtils$l.class */
    public enum EnumC4993l {
        MAIN_CALL_LOG_FRAGMENT,
        MAIN_SMS_LOG_FRAGMENT,
        MAIN_FAVORITE_FRAGMENT,
        MAIN_BLOCK_FRAGMENT,
        BLOCK_LOG,
        WHITE_LIST,
        SEARCH_LIST,
        CALL_DIALOG,
        CALL_END_DIALOG,
        SMS_DIALOG,
        NDP,
        LOG_SELECTION,
        SEARCH_RESULT,
        SEARCH_RESULT_CACHE,
        LOCK_SCREEN
    }

    static {
        f12318a.add(EnumC4993l.LOG_SELECTION);
        f12318a.add(EnumC4993l.SEARCH_RESULT_CACHE);
        f12318a.add(EnumC4993l.MAIN_SMS_LOG_FRAGMENT);
    }

    /* renamed from: a */
    public static int m26597a(int i) {
        if (i < 30) {
            return 0;
        }
        if (i < 50) {
            return 30;
        }
        if (i < 100) {
            return 50;
        }
        return i < 1000 ? (i / 100) * 100 : RoomDatabase.MAX_BIND_PARAMETER_CNT;
    }

    /* renamed from: a */
    public static int m26586a(NumberInfo numberInfo, int i) {
        if (numberInfo == null || !numberInfo.m28372X() || i < 3) {
            return 0;
        }
        if (i < 5) {
            return 3;
        }
        if (i < 10) {
            return 5;
        }
        if (i < 100) {
            return (i / 10) * 10;
        }
        return 99;
    }

    /* renamed from: a */
    public static int m26582a(RowInfo rowInfo, boolean z) {
        return m26581a(rowInfo, z, false);
    }

    /* renamed from: a */
    public static int m26581a(RowInfo rowInfo, boolean z, boolean z2) {
        return m26580a(rowInfo, z, z2, false);
    }

    /* renamed from: a */
    public static int m26580a(RowInfo rowInfo, boolean z, boolean z2, boolean z3) {
        if (z2 || z3) {
            return -829377;
        }
        int f = C14167t.m2310f();
        if (rowInfo == null) {
            return z ? -16534571 : -3947581;
        }
        if (rowInfo.m28231e().size() <= 0) {
            return -3947581;
        }
        RowInfo.MetaphorType metaphorType = rowInfo.m28231e().get(0);
        if (metaphorType == RowInfo.MetaphorType.SPOOF) {
            return -829377;
        }
        if (metaphorType == RowInfo.MetaphorType.WHOSCALLCARD_V2_V3) {
            return (!rowInfo.m28226g().m28302p0() || !rowInfo.m28226g().m28329f0()) ? f : C14167t.m2313c();
        }
        if (z || metaphorType == RowInfo.MetaphorType.CONTACT) {
            return f;
        }
        if (metaphorType == RowInfo.MetaphorType.SPAM) {
            return -829377;
        }
        if (metaphorType == RowInfo.MetaphorType.NOINFO || metaphorType == RowInfo.MetaphorType.NOINTERNET) {
            return -3947581;
        }
        if (metaphorType == RowInfo.MetaphorType.WHOSCALLCARD_V1) {
            return f;
        }
        if (metaphorType == RowInfo.MetaphorType.INFO) {
            return C14327z3.m1564a(rowInfo.m28226g().m28316j());
        }
        return -3947581;
    }

    @Resource
    /* renamed from: a */
    public static int m26574a(String str) {
        if (TextUtils.isEmpty(str)) {
            return C13909c.m3071b().m3087l().m3069a();
        }
        int b = C14327z3.m1563b(str);
        int i = b;
        if (b == 0) {
            i = C13909c.m3071b().m3087l().m3069a();
        }
        return i;
    }

    /* renamed from: a */
    public static SpannableString m26592a(Context context, int i, String str) {
        Drawable drawable = context.getResources().getDrawable(i);
        SpannableString spannableString = new SpannableString(str + "   ");
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        spannableString.setSpan(new ImageSpan(drawable, 0), str.length() + 2, str.length() + 3, 18);
        return spannableString;
    }

    /* renamed from: a */
    public static CharSequence m26593a(Context context, int i, CharSequence charSequence) {
        Drawable drawable = context.getResources().getDrawable(i);
        SpannableString spannableString = new SpannableString(" STA ");
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        spannableString.setSpan(new ImageSpan(drawable, 1), 1, 4, 18);
        return TextUtils.concat(charSequence, spannableString);
    }

    /* renamed from: a */
    public static String m26583a(RowInfo rowInfo) {
        List<String> D = rowInfo.m28226g().m28392D();
        String str = null;
        String str2 = null;
        if (D.size() > 0) {
            int size = D.size();
            int i = 0;
            while (true) {
                str = str2;
                if (i >= size) {
                    break;
                }
                str2 = D.get(i);
                if (C14217x3.m2160b(str2)) {
                    str2 = str2;
                } else if (!C14217x3.m2160b(str2)) {
                    if (str2.length() > 10 || str2.length() > 10) {
                        str = str2 + "...";
                    } else {
                        str = str2 + UserProfile.CARD_CATE_SEPARATOR + str2;
                    }
                }
                i++;
            }
        }
        return str;
    }

    /* renamed from: a */
    public static String m26573a(String str, int i) {
        MyApplication.m29013o();
        String str2 = str;
        if (m26564b(i)) {
            str2 = str + UserProfile.CARD_CATE_SEPARATOR + String.format(C14206w4.m2225a((int) R$string.calldialog_bizcategory_number), Integer.valueOf(i));
        }
        return str2;
    }

    /* renamed from: a */
    public static /* synthetic */ void m26596a(int i, boolean z, DialogInterface dialogInterface) {
        int i2 = 1;
        C13915b3.m3048d("block_page_default_phone_promoted_count", i + 1);
        if (z) {
            i2 = 2;
        }
        C11396a.m9698a(i2, 4, 4);
    }

    /* renamed from: a */
    public static void m26591a(Context context, WindowManager windowManager, AbstractC4992k kVar) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.format = -2;
        layoutParams.width = 1;
        layoutParams.height = 1;
        layoutParams.gravity = 51;
        layoutParams.type = C6298e.m23356a((int) AdError.INTERNAL_ERROR_2006);
        View view = new View(context);
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC4990i(view, new int[2], windowManager, kVar));
        try {
            windowManager.addView(view, layoutParams);
        } catch (Exception e) {
            if (kVar != null) {
                kVar.mo5289a(false);
            }
        }
    }

    /* renamed from: a */
    public static void m26590a(Context context, final Integer num) {
        final boolean b = m26565b();
        C13993a.DialogC13994a.C13995a aVar = new C13993a.DialogC13994a.C13995a(context, b ? RoleManagerCompat.ROLE_CALL_SCREENING : RoleManagerCompat.ROLE_DIALER);
        aVar.m2913a(num.intValue());
        aVar.m2906d(b ? R$string.offline_db_set_default_caller_id_app_title : C14320y3.m1588h());
        aVar.m2907c(b ? R$string.offline_db_set_default_caller_id_app_desc : C14320y3.m1589g());
        aVar.m2909b(R$drawable.image_block_failed);
        aVar.m2911a(new DialogInterface.OnShowListener() { // from class: j.a.j0.u.d.b0
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                boolean z = b;
                C11396a.m9698a(r4 ? 2 : 1, num.intValue(), 4);
            }
        });
        aVar.m2908b(R$string.button_go_to_setting, new View.OnClickListener() { // from class: j.a.j0.u.d.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                boolean z = b;
                C11396a.m9698a(r4 ? 2 : 1, num.intValue(), 1);
            }
        });
        aVar.m2910a(new View.OnClickListener() { // from class: j.a.j0.u.d.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                boolean z = b;
                C11396a.m9698a(r4 ? 2 : 1, num.intValue(), 3);
            }
        });
        C13993a.m2919a(aVar.m2914a());
    }

    /* renamed from: a */
    public static void m26589a(Context context, boolean z, int i, DialogInterface.OnClickListener onClickListener) {
        DialogC14618f fVar = new DialogC14618f(context);
        fVar.m998b(C14206w4.m2225a(i));
        fVar.m997b(C14206w4.m2225a((int) R$string.phone_default_app_revert_callend_action), new DialogInterface$OnClickListenerC4991j(context, onClickListener));
        fVar.setCancelable(!z);
        if (z) {
            fVar.m1002a(C14206w4.m2225a((int) R$string.cancel), new DialogInterface$OnClickListenerC4982a(onClickListener));
        }
        fVar.getWindow().setType(C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003));
        if (!C13878a3.m3244a(new C14602b(fVar).m1029e())) {
            CheckTeaserNotificationReceiver.m26396b(context);
        }
    }

    /* renamed from: a */
    public static void m26584a(RowInfo.MetaphorType metaphorType, C14118p2.C14120b bVar, C14118p2.C14119a aVar) {
        if (aVar.m2457e() != null) {
            aVar.m2458d().remove(metaphorType);
            m26575a(bVar, aVar);
        }
    }

    /* renamed from: a */
    public static void m26577a(RecycleSafeImageView recycleSafeImageView, ImageView imageView, View view, RowInfo rowInfo, String str, EnumC4993l lVar) {
        m26572a(str, new C4989h(recycleSafeImageView, imageView, view, rowInfo, lVar));
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.List, int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m26576a(gogolook.callgogolook2.view.RecycleSafeImageView r9, android.widget.ImageView r10, gogolook.callgogolook2.gson.RowInfo r11, java.lang.String r12, gogolook.callgogolook2.phone.call.dialog.CallUtils.EnumC4993l r13) {
        /*
            r0 = r9
            r1 = r10
            r2 = 0
            r3 = r11
            r4 = r12
            int r0 = m26557b(r0, r1, r2, r3, r4)
            r14 = r0
            java.util.ArrayList r0 = new java.util.ArrayList
            r15 = r0
            r0 = r11
            if (r0 != 0) goto L_0x001b
            r0 = r15
            r0.<init>()
            goto L_0x0024
        L_0x001b:
            r0 = r15
            r1 = r11
            java.util.List r1 = r1.m28231e()
            r0.<init>(r1)
        L_0x0024:
            r0 = r9
            r1 = r10
            r2 = 0
            r3 = r11
            r4 = r12
            r5 = r14
            r6 = r15
            r7 = r13
            m26544d(r0, r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.phone.call.dialog.CallUtils.m26576a(gogolook.callgogolook2.view.RecycleSafeImageView, android.widget.ImageView, gogolook.callgogolook2.gson.RowInfo, java.lang.String, gogolook.callgogolook2.phone.call.dialog.CallUtils$l):void");
    }

    /* renamed from: a */
    public static void m26575a(C14118p2.C14120b bVar, C14118p2.C14119a aVar) {
        RecycleSafeImageView c = bVar.m2454c();
        ImageView b = bVar.m2455b();
        View a = bVar.m2456a();
        RowInfo e = aVar.m2457e();
        String a2 = aVar.m2461a();
        int b2 = aVar.m2460b();
        List<RowInfo.MetaphorType> d = aVar.m2458d();
        EnumC4993l c2 = aVar.m2459c();
        boolean z = a2 != null && TextUtils.isDigitsOnly(a2);
        if (e != null) {
            RowInfo.MetaphorType metaphorType = d.size() > 0 ? d.get(0) : null;
            if (metaphorType == null) {
                c.setImageResource(b2);
            } else if (metaphorType.equals(RowInfo.MetaphorType.WHOSCALLCARD_V2_V3)) {
                C14118p2.m2462a(bVar, aVar);
            } else if (metaphorType.equals(RowInfo.MetaphorType.CONTACT)) {
                String str = a2;
                if (a2 == null) {
                    str = C14217x3.m2155c(MyApplication.m29013o(), e.m28234d());
                }
                m26556b(c, b, a, e, String.valueOf(str), b2, d, c2);
            } else {
                if (b != null && e.m28226g().m28292u0()) {
                    if (e.m28226g().m28329f0()) {
                        b.setImageResource(R$drawable.ic_warning);
                        b.setVisibility(0);
                    } else {
                        b.setVisibility(8);
                    }
                }
                if (metaphorType.equals(RowInfo.MetaphorType.INFO)) {
                    m26548c(c, b, a, e, String.valueOf(a2), b2, d, c2);
                }
            }
        } else if (z) {
            m26556b(c, b, a, e, String.valueOf(a2), b2, d, c2);
        }
    }

    /* renamed from: a */
    public static void m26572a(String str, Action1<String> action1) {
        C14081m3.m2609a(new C4987f(MyApplication.m29013o(), str), C14174u.m2303a(), AndroidSchedulers.mainThread(), action1);
    }

    /* renamed from: a */
    public static void m26571a(boolean z) {
        if (m26551c()) {
            Context o = MyApplication.m29013o();
            try {
                o.getPackageManager().setComponentEnabledSetting(new ComponentName(o, WCInCallService.class), z ? 1 : 2, 1);
                C13915b3.m3055b("incall_service_enabled", z);
            } catch (Exception e) {
                C13973d4.m2952a(e);
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m26570a(boolean z, DialogInterface dialogInterface) {
        C13915b3.m3057b("pref_in_call_tutorial_popup_too_long_display_time", System.currentTimeMillis());
        C11396a.m9698a(z ? 2 : 1, 3, 4);
    }

    /* renamed from: a */
    public static boolean m26598a() {
        return C6292b.m23378c(MyApplication.m29013o(), RoleManagerCompat.ROLE_CALL_SCREENING);
    }

    /* renamed from: a */
    public static boolean m26595a(Context context) {
        return C13915b3.m3059b("is_stranger_call_popup") || C13915b3.m3059b("is_contact_call_popup");
    }

    /* renamed from: a */
    public static boolean m26594a(Context context, int i) {
        if (!m26598a()) {
            return false;
        }
        try {
            Intent a = C6292b.m23380a(context, RoleManagerCompat.ROLE_CALL_SCREENING);
            if (a == null) {
                return false;
            }
            if (context instanceof Activity) {
                ActivityCompat.startActivityForResult((Activity) context, a, i, null);
                return true;
            }
            a.setFlags(268435456);
            C14217x3.m2156c(context, a);
            return true;
        } catch (ActivityNotFoundException e) {
            C14080m2.m2612a((Throwable) e);
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m26588a(Context context, boolean z, String str) {
        return m26566a(z, !C14217x3.m2160b(C14217x3.m2146e(context, str)));
    }

    /* renamed from: a */
    public static boolean m26587a(CallStats.Call call) {
        if (C13891a.m3150l() || C13915b3.m3062a("pref_have_rated", false) || C13892b.m3133c() || !call.m28478y() || call.m28477z() || call.m28529B()) {
            return false;
        }
        String d = C13640c.m3745d().m3744d("rating_disable_version");
        List arrayList = new ArrayList();
        if (!TextUtils.isEmpty(d)) {
            try {
                arrayList = (List) new Gson().m30981a(d, new C4983b().m13276b());
            } catch (C10113s e) {
                C14080m2.m2612a((Throwable) e);
            }
            if (arrayList != null && arrayList.contains(67908191)) {
                return false;
            }
        }
        List<Integer> a = C13640c.m3745d().m3751a("mrt_activities_rating", (Integer[]) null);
        if (a == null || a.size() == 0) {
            return false;
        }
        NumberInfo e2 = C11052i.m10328e().m10327e(C14108o4.m2474l(call.m28486q()));
        if (e2 == null || !e2.m28372X()) {
            return false;
        }
        int a2 = C13915b3.m3066a("prefs_ninfo_identified_call_number", 0);
        int i = a2 == 2147483646 ? 0 : a2 + 1;
        C13915b3.m3048d("prefs_ninfo_identified_call_number", i);
        for (Integer num : a) {
            if (i == num.intValue()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m26566a(boolean z, boolean z2) {
        return z2 ? C13915b3.m3059b("is_contact_call_popup") : C13915b3.m3059b("is_stranger_call_popup");
    }

    /* renamed from: b */
    public static int m26558b(RowInfo rowInfo, boolean z) {
        if (rowInfo != null && rowInfo.m28231e().size() > 0) {
            RowInfo.MetaphorType metaphorType = rowInfo.m28231e().get(0);
            if (metaphorType == RowInfo.MetaphorType.SPOOF) {
                return C13909c.m3071b().m3103F().m3069a();
            }
            if (metaphorType == RowInfo.MetaphorType.WHOSCALLCARD_V2_V3) {
                return C13909c.m3071b().m3100I().m3069a();
            }
            if (metaphorType == RowInfo.MetaphorType.CONTACT || z) {
                return C13909c.m3071b().m3094e().m3069a();
            }
            if (metaphorType == RowInfo.MetaphorType.SPAM) {
                return C13909c.m3071b().m3103F().m3069a();
            }
            if (metaphorType == RowInfo.MetaphorType.NOINFO) {
                return C13909c.m3071b().m3077v().m3069a();
            }
            if (metaphorType == RowInfo.MetaphorType.NOINTERNET) {
                return C13909c.m3071b().m3076w().m3069a();
            }
            if (metaphorType == RowInfo.MetaphorType.WHOSCALLCARD_V1) {
                return C13909c.m3071b().m3100I().m3069a();
            }
            if (metaphorType == RowInfo.MetaphorType.INFO) {
                return m26574a(rowInfo.m28226g().m28316j());
            }
        } else if (z) {
            return C13909c.m3071b().m3094e().m3069a();
        }
        return C13909c.m3071b().m3077v().m3069a();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0041, code lost:
        if (p459j.p460a.p582w0.C14217x3.m2160b(r7.m28269a()) == false) goto L_0x0044;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0065  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m26557b(gogolook.callgogolook2.view.RecycleSafeImageView r4, android.widget.ImageView r5, android.view.View r6, gogolook.callgogolook2.gson.RowInfo r7, java.lang.String r8) {
        /*
            r0 = r5
            if (r0 == 0) goto L_0x000a
            r0 = r5
            r1 = 8
            r0.setVisibility(r1)
        L_0x000a:
            r0 = 0
            r9 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0021
            r0 = r4
            boolean r0 = r0 instanceof gogolook.callgogolook2.view.RoundImageView
            if (r0 == 0) goto L_0x0021
            r0 = r4
            gogolook.callgogolook2.view.RoundImageView r0 = (gogolook.callgogolook2.view.RoundImageView) r0
            r1 = 0
            r2 = 0
            r0.m25901a(r1, r2)
        L_0x0021:
            r0 = r8
            if (r0 == 0) goto L_0x002e
            r0 = r8
            boolean r0 = android.text.TextUtils.isDigitsOnly(r0)
            if (r0 != 0) goto L_0x0044
        L_0x002e:
            r0 = r9
            r10 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0047
            r0 = r9
            r10 = r0
            r0 = r7
            java.lang.String r0 = r0.m28269a()
            boolean r0 = p459j.p460a.p582w0.C14217x3.m2160b(r0)
            if (r0 != 0) goto L_0x0047
        L_0x0044:
            r0 = 1
            r10 = r0
        L_0x0047:
            r0 = r7
            r1 = r10
            int r0 = m26582a(r0, r1)
            r11 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0059
            r0 = r6
            r1 = r11
            r0.setBackgroundColor(r1)
        L_0x0059:
            r0 = r7
            r1 = r10
            int r0 = m26558b(r0, r1)
            r11 = r0
            r0 = r4
            if (r0 == 0) goto L_0x006b
            r0 = r4
            r1 = r11
            r0.setImageResource(r1)
        L_0x006b:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.phone.call.dialog.CallUtils.m26557b(gogolook.callgogolook2.view.RecycleSafeImageView, android.widget.ImageView, android.view.View, gogolook.callgogolook2.gson.RowInfo, java.lang.String):int");
    }

    /* renamed from: b */
    public static String m26554b(String str, int i) {
        Context o = MyApplication.m29013o();
        if (!m26564b(i)) {
            return C14093n4.m2572d(o, str);
        }
        String format = String.format(C14206w4.m2225a((int) R$string.calldialog_spam_category), Integer.valueOf(i));
        String d = C14093n4.m2572d(o, str);
        return d + UserProfile.CARD_CATE_SEPARATOR + format;
    }

    /* renamed from: b */
    public static /* synthetic */ void m26563b(int i, boolean z, DialogInterface dialogInterface) {
        int i2 = 1;
        C13915b3.m3048d("pref_in_call_tutorial_blocked_failed_display_count", i + 1);
        if (z) {
            i2 = 2;
        }
        C11396a.m9698a(i2, 2, 4);
    }

    /* renamed from: b */
    public static void m26562b(Context context) {
        final int a = C13915b3.m3066a("block_page_default_phone_promoted_count", 0);
        if (a < 1) {
            final boolean b = m26565b();
            C13993a.DialogC13994a.C13995a aVar = new C13993a.DialogC13994a.C13995a(context, b ? RoleManagerCompat.ROLE_CALL_SCREENING : RoleManagerCompat.ROLE_DIALER);
            aVar.m2913a(4);
            aVar.m2906d(b ? R$string.rcb_block_page_default_caller_id_app_tutorial_title : C14320y3.m1592d());
            aVar.m2907c(b ? R$string.rcb_block_page_default_caller_id_app_tutorial_desc : C14320y3.m1593c());
            aVar.m2909b(R$drawable.image_block_failed);
            aVar.m2911a(new DialogInterface.OnShowListener() { // from class: j.a.j0.u.d.s
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    CallUtils.m26596a(a, b, dialogInterface);
                }
            });
            aVar.m2908b(R$string.default_app_tutorial_block_failed_button_text_enable, new View.OnClickListener() { // from class: j.a.j0.u.d.x
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    boolean z = b;
                    C11396a.m9698a(r4 ? 2 : 1, 4, 1);
                }
            });
            aVar.m2910a(new View.OnClickListener() { // from class: j.a.j0.u.d.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    boolean z = b;
                    C11396a.m9698a(r4 ? 2 : 1, 4, 3);
                }
            });
            C13993a.m2919a(aVar.m2914a());
        }
    }

    /* renamed from: b */
    public static void m26559b(RowInfo.MetaphorType metaphorType, RecycleSafeImageView recycleSafeImageView, ImageView imageView, View view, RowInfo rowInfo, String str, int i, List<RowInfo.MetaphorType> list, EnumC4993l lVar) {
        if (rowInfo != null) {
            list.remove(metaphorType);
            m26544d(recycleSafeImageView, imageView, view, rowInfo, str, i, list, lVar);
        }
    }

    /* renamed from: b */
    public static void m26556b(RecycleSafeImageView recycleSafeImageView, ImageView imageView, View view, RowInfo rowInfo, String str, int i, List<RowInfo.MetaphorType> list, EnumC4993l lVar) {
        if (!C14217x3.m2160b(str) && TextUtils.isDigitsOnly(str)) {
            if (!C14094o.m2555e(str)) {
                String uri = ContentUris.withAppendedId(ContactsContract.Contacts.CONTENT_URI, Long.valueOf(str).longValue()).toString();
                boolean contains = f12318a.contains(lVar);
                C5768f<Uri> a = recycleSafeImageView.m25906a(Uri.parse(uri));
                a.mo24496b(i);
                a.mo24504a(contains ? C6087b.m23890a() : new C6088c(String.valueOf(System.currentTimeMillis())));
                a.m24512b((C5768f<Uri>) new C4986e(recycleSafeImageView, str, rowInfo, list, recycleSafeImageView, imageView, view, i, lVar));
            } else if (rowInfo != null) {
                list.remove(RowInfo.MetaphorType.CONTACT);
                m26544d(recycleSafeImageView, imageView, view, rowInfo, str, i, list, lVar);
            } else {
                recycleSafeImageView.setImageResource(i);
            }
        }
    }

    /* renamed from: b */
    public static void m26555b(RecycleSafeImageView recycleSafeImageView, ImageView imageView, RowInfo rowInfo, String str, EnumC4993l lVar) {
        m26572a(str, new C4988g(recycleSafeImageView, imageView, rowInfo, lVar));
    }

    /* renamed from: b */
    public static boolean m26565b() {
        return C14017g4.m2799y() && m26598a();
    }

    /* renamed from: b */
    public static boolean m26564b(int i) {
        return i > 0;
    }

    /* renamed from: b */
    public static boolean m26561b(Context context, int i) {
        if (!m26551c()) {
            return false;
        }
        try {
            m26571a(false);
            Intent a = C6292b.m23380a(context, RoleManagerCompat.ROLE_DIALER);
            if (a == null) {
                return false;
            }
            if (context instanceof Activity) {
                ActivityCompat.startActivityForResult((Activity) context, a, i, null);
                return true;
            }
            a.setFlags(268435456);
            C14217x3.m2156c(context, a);
            return true;
        } catch (ActivityNotFoundException e) {
            C14080m2.m2612a((Throwable) e);
            return false;
        }
    }

    /* renamed from: b */
    public static boolean m26560b(Context context, boolean z, String str) {
        return !C14217x3.m2160b(C14217x3.m2146e(context, str)) ? C13915b3.m3059b("is_contact_call_popup") : C13915b3.m3059b("is_stranger_call_popup");
    }

    /* renamed from: c */
    public static void m26550c(Context context) {
        boolean z = false;
        final int a = C13915b3.m3066a("pref_in_call_tutorial_blocked_failed_display_count", 0);
        if (a >= 2) {
            z = true;
        }
        final boolean b = m26565b();
        C13993a.DialogC13994a.C13995a aVar = new C13993a.DialogC13994a.C13995a(context, b ? RoleManagerCompat.ROLE_CALL_SCREENING : RoleManagerCompat.ROLE_DIALER);
        aVar.m2913a(2);
        aVar.m2906d(b ? R$string.default_caller_id_app_tutorial_block_failed_title : C14320y3.m1594b());
        aVar.m2907c(b ? R$string.default_caller_id_app_tutorial_block_failed_desc : C14320y3.m1595a());
        aVar.m2909b(R$drawable.image_block_failed);
        aVar.m2911a(new DialogInterface.OnShowListener() { // from class: j.a.j0.u.d.c0
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                CallUtils.m26563b(a, b, dialogInterface);
            }
        });
        aVar.m2908b(R$string.default_app_tutorial_block_failed_button_text_enable, new View.OnClickListener() { // from class: j.a.j0.u.d.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                boolean z2 = b;
                C11396a.m9698a(r4 ? 2 : 1, 2, 1);
            }
        });
        if (z) {
            aVar.m2912a(R$string.default_app_tutorial_block_failed_button_text_never_show, new View.OnClickListener() { // from class: j.a.j0.u.d.e0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    CallUtils.m26543d(b, view);
                }
            });
        }
        aVar.m2910a(new View.OnClickListener() { // from class: j.a.j0.u.d.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                boolean z2 = b;
                C11396a.m9698a(r4 ? 2 : 1, 2, 3);
            }
        });
        C13993a.m2919a(aVar.m2914a());
    }

    /* renamed from: c */
    public static void m26549c(Context context, int i) {
        Toast toast = new Toast(context);
        LayoutInflater from = LayoutInflater.from(context);
        String str = null;
        View inflate = from.inflate(R$layout.feedback_toast, (ViewGroup) null);
        View findViewById = inflate.findViewById(R$id.feedback_bg);
        ImageView imageView = (ImageView) inflate.findViewById(R$id.feedback_image);
        TextView textView = (TextView) inflate.findViewById(R$id.feedback_text1);
        TextView textView2 = (TextView) inflate.findViewById(R$id.feedback_text2);
        if (i == 6 || i == 1 || i == 2) {
            findViewById.setBackgroundResource(R$drawable.call_end_block_finish_bg);
            textView.setTextColor(Color.parseColor("#ffffff"));
            textView2.setTextColor(Color.parseColor("#f89e9a"));
            imageView.setImageResource(R$drawable.call_end_block_finish_check);
            if (i == 6) {
                textView.setText(C14206w4.m2225a((int) R$string.callend_block_toast_title_private));
                textView2.setText(C14206w4.m2225a((int) R$string.callend_block_toast_content_private));
            } else {
                textView.setText(C14206w4.m2225a((int) R$string.callend_block_toast_title));
                if (i == 1) {
                    textView2.setText(C14206w4.m2225a((int) R$string.callend_block_toast_content));
                } else {
                    textView2.setText(C14206w4.m2225a((int) R$string.callend_directblock_toast_title));
                }
            }
        } else {
            findViewById.setBackgroundResource(R$drawable.call_end_report_finish_bg);
            textView.setTextColor(Color.parseColor("#222222"));
            textView2.setTextColor(Color.parseColor("#999999"));
            if (i == 5) {
                imageView.setImageResource(R$drawable.call_end_finish_firsttag_icon);
                textView.setText(C14206w4.m2225a((int) R$string.callend_report_toast_newbie_title));
                textView2.setText(C14206w4.m2225a((int) R$string.callend_report_toast_oldfriend_title));
            } else if (i == 7 || i == 8) {
                imageView.setImageResource(R$drawable.call_end_finish_icon);
                textView.setText(C14206w4.m2225a((int) R$string.callend_privatereport_feedback_title));
                if (i == 8) {
                    str = C14206w4.m2225a((int) R$string.callend_privatereport_feedback_private);
                }
                textView2.setText(str);
            } else if (i == 9) {
                imageView.setImageResource(R$drawable.call_end_finish_icon);
                textView.setText(C14206w4.m2225a((int) R$string.callend_categoryreport_toast_title));
                textView2.setText(C14206w4.m2225a((int) R$string.callend_categoryreport_toast_content));
            } else {
                int random = (int) (Math.random() * 4.0d);
                if (i == 3) {
                    imageView.setImageResource(R$drawable.call_end_finish_spam_icon);
                } else {
                    imageView.setImageResource(R$drawable.call_end_finish_icon);
                }
                textView.setText(C14206w4.m2225a(new int[]{R$string.callend_report_toast_normal1_title, R$string.callend_report_toast_normal2_title, R$string.callend_report_toast_normal3_title, R$string.callend_report_toast_normal4_title}[random]));
                textView2.setText(C14206w4.m2225a(new int[]{R$string.callend_report_toast_normal1_content, R$string.callend_report_toast_normal2_content, R$string.callend_report_toast_normal3_content, R$string.callend_report_toast_normal4_content}[random]));
            }
        }
        toast.setView(inflate);
        toast.setGravity(17, 0, 0);
        toast.setDuration(1);
        toast.show();
        new Handler().postDelayed(new RunnableC4984c(toast), 1500L);
    }

    /* renamed from: c */
    public static void m26548c(RecycleSafeImageView recycleSafeImageView, ImageView imageView, View view, RowInfo rowInfo, String str, int i, List<RowInfo.MetaphorType> list, EnumC4993l lVar) {
        if (rowInfo != null && rowInfo.m28226g() != null) {
            String H = rowInfo.m28226g().m28388H();
            if (C14217x3.m2160b(H)) {
                m26559b(RowInfo.MetaphorType.INFO, recycleSafeImageView, imageView, view, rowInfo, str, i, list, lVar);
                return;
            }
            C5768f<Uri> a = recycleSafeImageView.m25906a(Uri.parse(H));
            a.mo24496b(i);
            a.m24512b((C5768f<Uri>) new C4985d(recycleSafeImageView, recycleSafeImageView, imageView, view, rowInfo, str, i, list, lVar));
        }
    }

    /* renamed from: c */
    public static boolean m26551c() {
        return C6292b.m23378c(MyApplication.m29013o(), RoleManagerCompat.ROLE_DIALER);
    }

    /* renamed from: d */
    public static void m26545d(Context context) {
        final boolean b = m26565b();
        C13993a.DialogC13994a.C13995a aVar = new C13993a.DialogC13994a.C13995a(context, b ? RoleManagerCompat.ROLE_CALL_SCREENING : RoleManagerCompat.ROLE_DIALER);
        aVar.m2913a(3);
        aVar.m2906d(b ? R$string.default_caller_id_app_ced_tutorial_desc : C14320y3.m1587i());
        aVar.m2909b(R$drawable.image_slow);
        aVar.m2911a(new DialogInterface.OnShowListener() { // from class: j.a.j0.u.d.t
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                CallUtils.m26570a(b, dialogInterface);
            }
        });
        aVar.m2908b(R$string.caller_id_v2_ced_tutorial_setup, new View.OnClickListener() { // from class: j.a.j0.u.d.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                boolean z = b;
                C11396a.m9698a(r4 ? 2 : 1, 3, 1);
            }
        });
        aVar.m2910a(new View.OnClickListener() { // from class: j.a.j0.u.d.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                boolean z = b;
                C11396a.m9698a(r4 ? 2 : 1, 3, 3);
            }
        });
        C13993a.m2919a(aVar.m2914a());
    }

    @Deprecated
    /* renamed from: d */
    public static void m26544d(@NonNull RecycleSafeImageView recycleSafeImageView, @Nullable ImageView imageView, @Nullable View view, @Nullable RowInfo rowInfo, @Nullable String str, int i, @NonNull List<RowInfo.MetaphorType> list, @Nullable EnumC4993l lVar) {
        m26575a(new C14118p2.C14120b(recycleSafeImageView, imageView, view), new C14118p2.C14119a(rowInfo, str, i, list, lVar));
    }

    /* renamed from: d */
    public static /* synthetic */ void m26543d(boolean z, View view) {
        int i = 1;
        C13915b3.m3055b("pref_in_call_tutorial_blocked_failed_never_show", true);
        if (z) {
            i = 2;
        }
        C11396a.m9698a(i, 2, 2);
    }

    /* renamed from: d */
    public static boolean m26546d() {
        return m26551c() && m26529o() && C13892b.m3139a() && C13891a.m3168a();
    }

    /* renamed from: e */
    public static boolean m26542e() {
        return m26527q() || (!m26565b() && !m26528p());
    }

    /* renamed from: f */
    public static long m26540f() {
        if (C13565v.m3921g().m23335b()) {
            return C13915b3.m3065a("pref_debug_call_dialog_popup_threshold", 1500L);
        }
        return 1500L;
    }

    /* renamed from: g */
    public static boolean m26538g() {
        return C13915b3.m3059b("isVasSmsPopup") || C13915b3.m3059b("isContactSmsPopup") || C13915b3.m3059b("isStrangerSmsPopup");
    }

    /* renamed from: h */
    public static boolean m26536h() {
        return C6292b.m23377d(MyApplication.m29013o(), RoleManagerCompat.ROLE_DIALER);
    }

    /* renamed from: i */
    public static boolean m26535i() {
        Context o = MyApplication.m29013o();
        boolean z = false;
        try {
            int componentEnabledSetting = o.getPackageManager().getComponentEnabledSetting(new ComponentName(o, WCInCallService.class));
            if (componentEnabledSetting == 1 || componentEnabledSetting == 0) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            C13973d4.m2952a(e);
            return false;
        }
    }

    /* renamed from: j */
    public static boolean m26534j() {
        return System.currentTimeMillis() > C13915b3.m3065a("pref_in_call_tutorial_popup_too_long_display_time", 0L) + AdUtils.ONE_DAY;
    }

    /* renamed from: k */
    public static boolean m26533k() {
        return C13878a3.m3201q() && (C13878a3.m3251K() || C14017g4.m2827I() || m26536h());
    }

    /* renamed from: l */
    public static boolean m26532l() {
        return m26598a() && !m26528p();
    }

    /* renamed from: m */
    public static boolean m26531m() {
        return m26565b() && !m26528p();
    }

    /* renamed from: n */
    public static boolean m26530n() {
        return m26551c() && !m26536h();
    }

    @RequiresApi(api = 23)
    /* renamed from: o */
    public static boolean m26529o() {
        boolean z = true;
        try {
            if (C12521c.m5946c().m5949a() > 1) {
                z = false;
            }
        } catch (Throwable th) {
            C14080m2.m2612a(th);
        }
        return z;
    }

    /* renamed from: p */
    public static boolean m26528p() {
        return C6292b.m23377d(MyApplication.m29013o(), RoleManagerCompat.ROLE_CALL_SCREENING);
    }

    /* renamed from: q */
    public static boolean m26527q() {
        return m26546d() && m26536h() && m26535i();
    }

    /* renamed from: r */
    public static boolean m26526r() {
        List<ActivityManager.RunningServiceInfo> runningServices;
        NavigationAppConfig navigationAppConfig = (NavigationAppConfig) new C10099e().m13388a().m30982a(C13640c.m3745d().m3744d("not_show_ced_navigation_app"), (Class<Object>) NavigationAppConfig.class);
        if (navigationAppConfig == null || C14217x3.m2173a(navigationAppConfig.m28397a())) {
            return false;
        }
        if (C14017g4.m2801w()) {
            return C14166s4.m2320a(navigationAppConfig.m28397a());
        }
        ActivityManager activityManager = (ActivityManager) MyApplication.m29013o().getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
        if (activityManager == null || (runningServices = activityManager.getRunningServices(Integer.MAX_VALUE)) == null) {
            return false;
        }
        for (ActivityManager.RunningServiceInfo runningServiceInfo : runningServices) {
            for (NavigationAppConfig.NavigationApp navigationApp : navigationAppConfig.m28397a()) {
                if (TextUtils.equals(runningServiceInfo.process, navigationApp.m28396a()) && runningServiceInfo.foreground) {
                    return true;
                }
            }
        }
        return false;
    }
}
