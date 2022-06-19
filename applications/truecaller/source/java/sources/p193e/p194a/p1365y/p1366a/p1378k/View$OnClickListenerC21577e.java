package p193e.p194a.p1365y.p1366a.p1378k;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.StringConstant;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.flashsdk.C3909R;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1365y.p1366a.p1379l.C21584c;
import p193e.p194a.p1365y.p1381b.AbstractC21593a;
import p193e.p194a.p1365y.p1381b.AbstractC21603f;
import p193e.p194a.p1365y.p1381b.AbstractC21606g0;
import p193e.p194a.p1365y.p1382c.C21632c;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.AbstractC21666a;
import p193e.p194a.p1365y.p1382c.p1383x.p1384a.C21667b;
import s1.f0.v;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\u0018�� R2\u00020\u00012\u00020\u0002:\u0002)\u0019B\u0007¢\u0006\u0004\bQ\u0010\u0013J-\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\tH\u0017¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\rH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010'\u001a\u00020$8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b%\u0010&R\"\u0010/\u001a\u00020(8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00105\u001a\u00020$8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b4\u0010&R\u0016\u00109\u001a\u0002068\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b7\u00108R\u0016\u0010<\u001a\u00020\t8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010>\u001a\u00020$8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b=\u0010&R\u001a\u0010B\u001a\u00060?R\u00020��8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010F\u001a\u00020C8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bD\u0010ER\"\u0010N\u001a\u00020G8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\u0016\u0010P\u001a\u00020$8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bO\u0010&¨\u0006S"}, d2 = {"Le/a/y/a/k/e;", "Landroidx/fragment/app/Fragment;", "Landroid/view/View$OnClickListener;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onClick", "(Landroid/view/View;)V", "onDestroyView", "()V", "", "message", "OA", "(Ljava/lang/String;)V", "Le/a/y/b/g0;", C22021b.f61237c, "Le/a/y/b/g0;", "getResourceProvider", "()Le/a/y/b/g0;", "setResourceProvider", "(Le/a/y/b/g0;)V", "resourceProvider", "Le/a/y/a/l/c;", "m", "Le/a/y/a/l/c;", "firstFlashPopUp", "Landroid/widget/TextView;", "k", "Landroid/widget/TextView;", "buttonCall", "Le/a/y/b/f;", "a", "Le/a/y/b/f;", "getDeviceUtils", "()Le/a/y/b/f;", "setDeviceUtils", "(Le/a/y/b/f;)V", "deviceUtils", "Landroid/widget/ProgressBar;", "e", "Landroid/widget/ProgressBar;", "progressBar", "f", "historyText", "Landroid/widget/ImageView;", "g", "Landroid/widget/ImageView;", "centralIcon", "i", "Landroid/view/View;", "buttonContainer", "h", "statusText", "Le/a/y/a/k/e$b;", "l", "Le/a/y/a/k/e$b;", "countDownTimer", "Landroidx/viewpager/widget/ViewPager;", "d", "Landroidx/viewpager/widget/ViewPager;", "tipsPager", "Le/a/y/b/a;", AbstractC2405c.f7629a, "Le/a/y/b/a;", "getColorProvider", "()Le/a/y/b/a;", "setColorProvider", "(Le/a/y/b/a;)V", "colorProvider", "j", "buttonSendFlash", "<init>", "n", "flash_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.y.a.k.e */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/k/e.class */
public final class View$OnClickListenerC21577e extends Fragment implements View.OnClickListener {

    /* renamed from: n */
    public static final C21578a f60211n = new C21578a(null);
    @Inject

    /* renamed from: a */
    public AbstractC21603f f60212a;
    @Inject

    /* renamed from: b */
    public AbstractC21606g0 f60213b;
    @Inject

    /* renamed from: c */
    public AbstractC21593a f60214c;

    /* renamed from: d */
    public ViewPager f60215d;

    /* renamed from: e */
    public ProgressBar f60216e;

    /* renamed from: f */
    public TextView f60217f;

    /* renamed from: g */
    public ImageView f60218g;

    /* renamed from: h */
    public TextView f60219h;

    /* renamed from: i */
    public View f60220i;

    /* renamed from: j */
    public TextView f60221j;

    /* renamed from: k */
    public TextView f60222k;

    /* renamed from: l */
    public CountDownTimerC21579b f60223l;

    /* renamed from: m */
    public C21584c f60224m;

    /* renamed from: e.a.y.a.k.e$a */
    /* loaded from: classes9-dex2jar.jar:e/a/y/a/k/e$a.class */
    public static final class C21578a {
        public C21578a(f fVar) {
        }

        /* renamed from: a */
        public final Fragment m9410a(String str, long j, String str2, boolean z, long j2) {
            View$OnClickListenerC21577e view$OnClickListenerC21577e = new View$OnClickListenerC21577e();
            Bundle bundle = new Bundle();
            view$OnClickListenerC21577e.setArguments(bundle);
            bundle.putString("flashHistoryKey", str);
            bundle.putString("flashSentToKey", str2);
            bundle.putLong("flashSentPhoneKey", j2);
            bundle.putBoolean("isFirstFlashKey", z);
            bundle.putLong("time_left", j);
            return view$OnClickListenerC21577e;
        }
    }

    /* renamed from: e.a.y.a.k.e$b */
    /* loaded from: classes9-dex2jar.jar:e/a/y/a/k/e$b.class */
    public final class CountDownTimerC21579b extends CountDownTimer {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CountDownTimerC21579b(long j) {
            super(j, 100L);
            View$OnClickListenerC21577e.this = r7;
            ProgressBar progressBar = r7.f60216e;
            if (progressBar != null) {
                progressBar.setProgress((int) j);
            } else {
                l.l("progressBar");
                throw null;
            }
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            PopupWindow popupWindow;
            View$OnClickListenerC21577e view$OnClickListenerC21577e = View$OnClickListenerC21577e.this;
            C21578a c21578a = View$OnClickListenerC21577e.f60211n;
            Context context = view$OnClickListenerC21577e.getContext();
            if (context != null) {
                l.d(context, "context ?: return");
                TextView textView = view$OnClickListenerC21577e.f60221j;
                if (textView == null) {
                    l.l("buttonSendFlash");
                    throw null;
                }
                AbstractC21606g0 abstractC21606g0 = view$OnClickListenerC21577e.f60213b;
                if (abstractC21606g0 == null) {
                    l.l("resourceProvider");
                    throw null;
                }
                String mo9375b = abstractC21606g0.mo9375b(C3909R.string.try_again, new Object[0]);
                TextView textView2 = view$OnClickListenerC21577e.f60222k;
                if (textView2 == null) {
                    l.l("buttonCall");
                    throw null;
                }
                int lineHeight = textView2.getLineHeight();
                AbstractC21593a abstractC21593a = view$OnClickListenerC21577e.f60214c;
                if (abstractC21593a == null) {
                    l.l("colorProvider");
                    throw null;
                }
                textView.setText(abstractC21606g0.mo9372e(mo9375b, lineHeight, abstractC21593a.mo9391a(C3909R.color.white), C3909R.C3910drawable.ic_flash_24, context));
                TextView textView3 = view$OnClickListenerC21577e.f60222k;
                if (textView3 == null) {
                    l.l("buttonCall");
                    throw null;
                }
                AbstractC21606g0 abstractC21606g02 = view$OnClickListenerC21577e.f60213b;
                if (abstractC21606g02 == null) {
                    l.l("resourceProvider");
                    throw null;
                }
                String mo9375b2 = abstractC21606g02.mo9375b(C3909R.string.call, new Object[0]);
                TextView textView4 = view$OnClickListenerC21577e.f60222k;
                if (textView4 == null) {
                    l.l("buttonCall");
                    throw null;
                }
                int lineHeight2 = textView4.getLineHeight();
                AbstractC21593a abstractC21593a2 = view$OnClickListenerC21577e.f60214c;
                if (abstractC21593a2 == null) {
                    l.l("colorProvider");
                    throw null;
                }
                textView3.setText(abstractC21606g02.mo9372e(mo9375b2, lineHeight2, abstractC21593a2.mo9390b(C3909R.attr.theme_flash_round_button_enabled_icon_color), C3909R.C3910drawable.flash_ic_call_24dp, context));
                ViewPager viewPager = view$OnClickListenerC21577e.f60215d;
                if (viewPager == null) {
                    l.l("tipsPager");
                    throw null;
                }
                viewPager.setVisibility(8);
                View view = view$OnClickListenerC21577e.f60220i;
                if (view == null) {
                    l.l("buttonContainer");
                    throw null;
                }
                view.setVisibility(0);
                ProgressBar progressBar = view$OnClickListenerC21577e.f60216e;
                if (progressBar == null) {
                    l.l("progressBar");
                    throw null;
                }
                progressBar.setProgress(0);
                TextView textView5 = view$OnClickListenerC21577e.f60219h;
                if (textView5 == null) {
                    l.l("statusText");
                    throw null;
                }
                textView5.setText(view$OnClickListenerC21577e.getText(C3909R.string.flash_missed));
                ImageView imageView = view$OnClickListenerC21577e.f60218g;
                if (imageView == null) {
                    l.l("centralIcon");
                    throw null;
                }
                imageView.setImageResource(C3909R.C3910drawable.flash_ic_flash_missed_outgoing_white_24dp);
                Bundle arguments = view$OnClickListenerC21577e.getArguments();
                if (arguments == null) {
                    return;
                }
                l.d(arguments, "arguments ?: return");
                if (!arguments.getBoolean("isFirstFlashKey")) {
                    return;
                }
                C21584c c21584c = view$OnClickListenerC21577e.f60224m;
                if (c21584c != null && (popupWindow = c21584c.f60229a) != null) {
                    popupWindow.dismiss();
                }
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(C3909R.dimen.control_quadspace);
                String string = arguments.getString("flashSentToKey");
                String e0 = string != null ? v.e0(string, StringConstant.SPACE, (String) null, 2) : null;
                String string2 = view$OnClickListenerC21577e.getString(C3909R.string.post_flash_popup_2, new Object[]{e0, e0});
                l.d(string2, "getString(R.string.post_flash_popup_2, name, name)");
                C21584c c21584c2 = new C21584c(context, string2, C3909R.C3910drawable.flash_ic_tooltip_center_bottom);
                view$OnClickListenerC21577e.f60224m = c21584c2;
                ImageView imageView2 = view$OnClickListenerC21577e.f60218g;
                if (imageView2 != null) {
                    c21584c2.m9404a(imageView2, dimensionPixelSize);
                } else {
                    l.l("centralIcon");
                    throw null;
                }
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
            ProgressBar progressBar = View$OnClickListenerC21577e.this.f60216e;
            if (progressBar != null) {
                progressBar.setProgress((int) j);
            } else {
                l.l("progressBar");
                throw null;
            }
        }
    }

    /* renamed from: e.a.y.a.k.e$c */
    /* loaded from: classes9-dex2jar.jar:e/a/y/a/k/e$c.class */
    public static final class RunnableC21580c implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ int f60227b;

        public RunnableC21580c(int i) {
            View$OnClickListenerC21577e.this = r4;
            this.f60227b = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            View$OnClickListenerC21577e view$OnClickListenerC21577e = View$OnClickListenerC21577e.this;
            C21584c c21584c = view$OnClickListenerC21577e.f60224m;
            if (c21584c != null) {
                ImageView imageView = view$OnClickListenerC21577e.f60218g;
                if (imageView != null) {
                    c21584c.m9404a(imageView, this.f60227b);
                } else {
                    l.l("centralIcon");
                    throw null;
                }
            }
        }
    }

    /* renamed from: OA */
    public final void m9411OA(String str) {
        l.e(str, "message");
        CountDownTimerC21579b countDownTimerC21579b = this.f60223l;
        if (countDownTimerC21579b == null) {
            l.l("countDownTimer");
            throw null;
        }
        countDownTimerC21579b.cancel();
        ViewPager viewPager = this.f60215d;
        if (viewPager == null) {
            l.l("tipsPager");
            throw null;
        }
        viewPager.setVisibility(8);
        ProgressBar progressBar = this.f60216e;
        if (progressBar == null) {
            l.l("progressBar");
            throw null;
        }
        progressBar.setProgress(0);
        TextView textView = this.f60219h;
        if (textView != null) {
            textView.setText(str);
        } else {
            l.l("statusText");
            throw null;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        l.e(view, ViewAction.VIEW);
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            l.d(activity, "activity ?: return");
            Bundle arguments = getArguments();
            if (arguments == null) {
                return;
            }
            l.d(arguments, "arguments ?: return");
            long j = arguments.getLong("flashSentPhoneKey");
            String string = arguments.getString("flashSentToKey");
            int id = view.getId();
            if (id != C3909R.C3911id.btnCall) {
                if (id != C3909R.C3911id.btnSendFlash) {
                    return;
                }
                activity.finish();
                C21632c.m9330b().mo9319K(activity, j, string, "waitingScreen");
                return;
            }
            AbstractC21603f abstractC21603f = this.f60212a;
            if (abstractC21603f == null) {
                l.l("deviceUtils");
                throw null;
            }
            if (abstractC21603f.mo9381d()) {
                Intent intent = new Intent("android.intent.action.CALL");
                intent.setData(Uri.parse(getString(C3909R.string.tel_num, new Object[]{String.valueOf(j)})));
                activity.startActivity(intent);
            } else {
                activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(getString(C3909R.string.tel_num, new Object[]{String.valueOf(j)}))));
            }
            activity.finish();
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C3909R.layout.waiting_reply_fragment, viewGroup, false);
    }

    public void onDestroyView() {
        PopupWindow popupWindow;
        View$OnClickListenerC21577e.super.onDestroyView();
        Bundle bundle = new Bundle();
        ProgressBar progressBar = this.f60216e;
        if (progressBar == null) {
            l.l("progressBar");
            throw null;
        }
        bundle.putString("flashWaitingTimer", String.valueOf(progressBar.getProgress() / 1000));
        C21632c.m9330b().mo9308j("FlashCloseWaiting", bundle);
        CountDownTimerC21579b countDownTimerC21579b = this.f60223l;
        if (countDownTimerC21579b == null) {
            l.l("countDownTimer");
            throw null;
        }
        countDownTimerC21579b.cancel();
        C21584c c21584c = this.f60224m;
        if (c21584c == null || (popupWindow = c21584c.f60229a) == null) {
            return;
        }
        popupWindow.dismiss();
    }

    public void onViewCreated(View view, Bundle bundle) {
        String[] stringArray;
        l.e(view, ViewAction.VIEW);
        View findViewById = view.findViewById(C3909R.C3911id.historyText);
        l.d(findViewById, "view.findViewById(R.id.historyText)");
        this.f60217f = (TextView) findViewById;
        View findViewById2 = view.findViewById(C3909R.C3911id.tipsPager);
        l.d(findViewById2, "view.findViewById(R.id.tipsPager)");
        this.f60215d = (ViewPager) findViewById2;
        View findViewById3 = view.findViewById(C3909R.C3911id.progressBarWaiting);
        l.d(findViewById3, "view.findViewById(R.id.progressBarWaiting)");
        this.f60216e = (ProgressBar) findViewById3;
        View findViewById4 = view.findViewById(C3909R.C3911id.centralIcon);
        l.d(findViewById4, "view.findViewById(R.id.centralIcon)");
        this.f60218g = (ImageView) findViewById4;
        View findViewById5 = view.findViewById(C3909R.C3911id.statusText);
        l.d(findViewById5, "view.findViewById(R.id.statusText)");
        this.f60219h = (TextView) findViewById5;
        View findViewById6 = view.findViewById(C3909R.C3911id.replyButtonContainer);
        l.d(findViewById6, "view.findViewById(R.id.replyButtonContainer)");
        this.f60220i = findViewById6;
        View findViewById7 = view.findViewById(C3909R.C3911id.btnSendFlash);
        l.d(findViewById7, "view.findViewById(R.id.btnSendFlash)");
        this.f60221j = (TextView) findViewById7;
        View findViewById8 = view.findViewById(C3909R.C3911id.btnCall);
        l.d(findViewById8, "view.findViewById(R.id.btnCall)");
        this.f60222k = (TextView) findViewById8;
        C21632c c21632c = C21632c.f60288b;
        AbstractC21666a m9331a = C21632c.m9331a();
        Context context = getContext();
        Objects.requireNonNull(context, "null cannot be cast to non-null type android.app.Activity");
        C21667b.C21670c c21670c = (C21667b.C21670c) m9331a.mo9195t(new C21574b((Activity) context));
        this.f60212a = (AbstractC21603f) c21670c.f60421a.f60403l.get();
        this.f60213b = (AbstractC21606g0) c21670c.f60421a.f60402k.get();
        this.f60214c = (AbstractC21593a) c21670c.f60423c.get();
        ViewPager viewPager = this.f60215d;
        if (viewPager == null) {
            l.l("tipsPager");
            throw null;
        }
        viewPager.setPageMargin(getResources().getDimensionPixelSize(C3909R.dimen.control_space));
        ViewPager viewPager2 = this.f60215d;
        if (viewPager2 == null) {
            l.l("tipsPager");
            throw null;
        }
        viewPager2.setOffscreenPageLimit(3);
        n3.r.a.l activity = getActivity();
        if (activity == null) {
            return;
        }
        l.d(activity, "activity ?: return");
        Resources resources = activity.getResources();
        if (resources == null || (stringArray = resources.getStringArray(C3909R.array.flash_tips)) == null) {
            return;
        }
        l.d(stringArray, "activity.resources?.getS…ray.flash_tips) ?: return");
        ViewPager viewPager3 = this.f60215d;
        if (viewPager3 == null) {
            l.l("tipsPager");
            throw null;
        }
        viewPager3.setAdapter(new C21581f(stringArray));
        ProgressBar progressBar = this.f60216e;
        if (progressBar == null) {
            l.l("progressBar");
            throw null;
        }
        Drawable progressDrawable = progressBar.getProgressDrawable();
        AbstractC21593a abstractC21593a = this.f60214c;
        if (abstractC21593a == null) {
            l.l("colorProvider");
            throw null;
        }
        int i = C3909R.attr.theme_incoming_text;
        progressDrawable.setColorFilter(abstractC21593a.mo9390b(i), PorterDuff.Mode.SRC_IN);
        ProgressBar progressBar2 = this.f60216e;
        if (progressBar2 == null) {
            l.l("progressBar");
            throw null;
        }
        Drawable background = progressBar2.getBackground();
        AbstractC21593a abstractC21593a2 = this.f60214c;
        if (abstractC21593a2 == null) {
            l.l("colorProvider");
            throw null;
        }
        background.setColorFilter(abstractC21593a2.mo9390b(i), PorterDuff.Mode.SRC_IN);
        ImageView imageView = this.f60218g;
        if (imageView == null) {
            l.l("centralIcon");
            throw null;
        }
        AbstractC21593a abstractC21593a3 = this.f60214c;
        if (abstractC21593a3 == null) {
            l.l("colorProvider");
            throw null;
        }
        imageView.setColorFilter(abstractC21593a3.mo9390b(i), PorterDuff.Mode.SRC_IN);
        ProgressBar progressBar3 = this.f60216e;
        if (progressBar3 == null) {
            l.l("progressBar");
            throw null;
        }
        progressBar3.setMax((int) DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL);
        Bundle arguments = getArguments();
        if (arguments == null) {
            return;
        }
        l.d(arguments, "arguments ?: return");
        String string = arguments.getString("flashHistoryKey");
        long j = arguments.getLong("time_left");
        TextView textView = this.f60217f;
        if (textView == null) {
            l.l("historyText");
            throw null;
        }
        textView.setText(string);
        CountDownTimerC21579b countDownTimerC21579b = new CountDownTimerC21579b(j);
        this.f60223l = countDownTimerC21579b;
        if (countDownTimerC21579b == null) {
            l.l("countDownTimer");
            throw null;
        }
        countDownTimerC21579b.start();
        if (arguments.getBoolean("isFirstFlashKey")) {
            int dimensionPixelSize = activity.getResources().getDimensionPixelSize(C3909R.dimen.control_triplespace);
            String string2 = arguments.getString("flashSentToKey");
            String string3 = getString(C3909R.string.post_flash_popup_1, new Object[]{string2 != null ? v.e0(string2, StringConstant.SPACE, (String) null, 2) : null});
            l.d(string3, "getString(R.string.post_flash_popup_1, name)");
            this.f60224m = new C21584c(activity, string3, C3909R.C3910drawable.flash_ic_tooltip_center_bottom);
            ImageView imageView2 = this.f60218g;
            if (imageView2 == null) {
                l.l("centralIcon");
                throw null;
            }
            imageView2.post(new RunnableC21580c(dimensionPixelSize));
        }
        TextView textView2 = this.f60222k;
        if (textView2 == null) {
            l.l("buttonCall");
            throw null;
        }
        textView2.setOnClickListener(this);
        TextView textView3 = this.f60221j;
        if (textView3 != null) {
            textView3.setOnClickListener(this);
        } else {
            l.l("buttonSendFlash");
            throw null;
        }
    }
}
