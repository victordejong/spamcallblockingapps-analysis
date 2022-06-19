package com.facebook.appevents.p026i0;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import com.facebook.AccessToken;
import com.facebook.appevents.C1096x;
import com.facebook.appevents.p026i0.p027n.C0993a;
import com.facebook.appevents.p026i0.p027n.C1000f;
import com.facebook.internal.C1168q0;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
@Metadata(d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018��2\u00020\u0001:\u0002\u0014\u0015B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0007J$\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\fH\u0007J%\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0001¢\u0006\u0002\b\u000fJ\u0015\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H��¢\u0006\u0002\b\u0013¨\u0006\u0016"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;", "", "()V", "getOnClickListener", "Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;", "mapping", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "rootView", "Landroid/view/View;", "hostView", "getOnItemClickListener", "Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;", "Landroid/widget/AdapterView;", "logEvent", "", "logEvent$facebook_core_release", "updateParameters", "parameters", "Landroid/os/Bundle;", "updateParameters$facebook_core_release", "AutoLoggingOnClickListener", "AutoLoggingOnItemClickListener", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.i0.h */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/h.class */
public final class C0977h {

    /* renamed from: a */
    public static final C0977h f2683a = new C0977h();

    @Metadata(d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005H\u0016R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00050\tX\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnClickListener;", "Landroid/view/View$OnClickListener;", "mapping", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "rootView", "Landroid/view/View;", "hostView", "(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)V", "existingOnClickListener", "Ljava/lang/ref/WeakReference;", "supportCodelessLogging", "", "getSupportCodelessLogging", "()Z", "setSupportCodelessLogging", "(Z)V", "onClick", "", ViewAction.VIEW, "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.i0.h$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/h$a.class */
    public static final class View$OnClickListenerC0978a implements View.OnClickListener {

        /* renamed from: a */
        public C0993a f2684a;

        /* renamed from: b */
        public WeakReference<View> f2685b;

        /* renamed from: c */
        public WeakReference<View> f2686c;

        /* renamed from: d */
        public View.OnClickListener f2687d;

        /* renamed from: e */
        public boolean f2688e = true;

        public View$OnClickListenerC0978a(C0993a c0993a, View view, View view2) {
            l.e(c0993a, "mapping");
            l.e(view, "rootView");
            l.e(view2, "hostView");
            this.f2684a = c0993a;
            this.f2685b = new WeakReference<>(view2);
            this.f2686c = new WeakReference<>(view);
            C1000f c1000f = C1000f.f2756a;
            this.f2687d = C1000f.m41924f(view2);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (C1220a.m41623b(this)) {
                return;
            }
            try {
                l.e(view, ViewAction.VIEW);
                View.OnClickListener onClickListener = this.f2687d;
                if (onClickListener != null) {
                    onClickListener.onClick(view);
                }
                View view2 = this.f2686c.get();
                View view3 = this.f2685b.get();
                if (view2 == null || view3 == null) {
                    return;
                }
                C0977h.m41954a(this.f2684a, view2, view3);
            } catch (Throwable th) {
                C1220a.m41624a(th, this);
            }
        }
    }

    @Metadata(d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0010\t\n��\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0010\u0006\u001a\u0006\u0012\u0002\b\u00030\u0007¢\u0006\u0002\u0010\bJ.\u0010\u0011\u001a\u00020\u00122\f\u0010\u0013\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00072\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n��R\u0018\u0010\u0006\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00050\nX\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0019"}, d2 = {"Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingOnItemClickListener;", "Landroid/widget/AdapterView$OnItemClickListener;", "mapping", "Lcom/facebook/appevents/codeless/internal/EventBinding;", "rootView", "Landroid/view/View;", "hostView", "Landroid/widget/AdapterView;", "(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/widget/AdapterView;)V", "existingOnItemClickListener", "Ljava/lang/ref/WeakReference;", "supportCodelessLogging", "", "getSupportCodelessLogging", "()Z", "setSupportCodelessLogging", "(Z)V", "onItemClick", "", "parent", ViewAction.VIEW, "position", "", "id", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.i0.h$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/i0/h$b.class */
    public static final class C0979b implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public C0993a f2689a;

        /* renamed from: b */
        public WeakReference<AdapterView<?>> f2690b;

        /* renamed from: c */
        public WeakReference<View> f2691c;

        /* renamed from: d */
        public AdapterView.OnItemClickListener f2692d;

        /* renamed from: e */
        public boolean f2693e = true;

        public C0979b(C0993a c0993a, View view, AdapterView<?> adapterView) {
            l.e(c0993a, "mapping");
            l.e(view, "rootView");
            l.e(adapterView, "hostView");
            this.f2689a = c0993a;
            this.f2690b = new WeakReference<>(adapterView);
            this.f2691c = new WeakReference<>(view);
            this.f2692d = adapterView.getOnItemClickListener();
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            l.e(view, ViewAction.VIEW);
            AdapterView.OnItemClickListener onItemClickListener = this.f2692d;
            if (onItemClickListener != null) {
                onItemClickListener.onItemClick(adapterView, view, i, j);
            }
            View view2 = this.f2691c.get();
            AdapterView<?> adapterView2 = this.f2690b.get();
            if (view2 == null || adapterView2 == null) {
                return;
            }
            C0977h.m41954a(this.f2689a, view2, adapterView2);
        }
    }

    /* renamed from: a */
    public static final void m41954a(C0993a c0993a, View view, View view2) {
        if (C1220a.m41623b(C0977h.class)) {
            return;
        }
        try {
            l.e(c0993a, "mapping");
            l.e(view, "rootView");
            l.e(view2, "hostView");
            final String str = c0993a.f2731a;
            final Bundle m41945b = C0981j.f2702f.m41945b(c0993a, view, view2);
            f2683a.m41953b(m41945b);
            C23228f0 c23228f0 = C23228f0.f64291a;
            C23228f0.m7350e().execute(new Runnable() { // from class: com.facebook.appevents.i0.a
                @Override // java.lang.Runnable
                public final void run() {
                    String str2 = str;
                    Bundle bundle = m41945b;
                    if (C1220a.m41623b(C0977h.class)) {
                        return;
                    }
                    try {
                        l.e(str2, "$eventName");
                        l.e(bundle, "$parameters");
                        C23228f0 c23228f02 = C23228f0.f64291a;
                        Context m7354a = C23228f0.m7354a();
                        l.e(m7354a, AnalyticsConstants.CONTEXT);
                        new C1096x(m7354a, (String) null, (AccessToken) null).m41763e(str2, bundle);
                    } catch (Throwable th) {
                        C1220a.m41624a(th, C0977h.class);
                    }
                }
            });
        } catch (Throwable th) {
            C1220a.m41624a(th, C0977h.class);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [double] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* renamed from: b */
    public final void m41953b(Bundle bundle) {
        ?? r10;
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            l.e(bundle, "parameters");
            String string = bundle.getString("_valueToSum");
            if (string != null) {
                try {
                    Matcher matcher = Pattern.compile("[-+]*\\d+([.,]\\d+)*([.,]\\d+)?", 8).matcher(string);
                    r10 = false;
                    if (matcher.find()) {
                        String group = matcher.group(0);
                        Locale m41662u = C1168q0.m41662u();
                        Locale locale = m41662u;
                        if (m41662u == null) {
                            locale = Locale.getDefault();
                            l.d(locale, "getDefault()");
                        }
                        r10 = NumberFormat.getNumberInstance(locale).parse(group).doubleValue();
                    }
                } catch (ParseException e) {
                    r10 = false;
                }
                bundle.putDouble("_valueToSum", r10 == true ? 1.0d : 0.0d);
            }
            bundle.putString("_is_fb_codeless", "1");
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
