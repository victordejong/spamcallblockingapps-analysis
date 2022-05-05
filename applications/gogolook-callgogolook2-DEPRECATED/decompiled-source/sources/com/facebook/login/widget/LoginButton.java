package com.facebook.login.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.content.res.AppCompatResources;
import com.facebook.AccessToken;
import com.facebook.Profile;
import com.facebook.appevents.C2283m;
import com.facebook.common.R$color;
import com.facebook.common.R$drawable;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2464o;
import com.facebook.internal.C2466p;
import com.facebook.login.C2539g;
import com.facebook.login.EnumC2531a;
import com.facebook.login.EnumC2534d;
import com.facebook.login.R$string;
import com.facebook.login.R$style;
import com.facebook.login.R$styleable;
import com.facebook.login.p045j.C2548a;
import java.util.Collections;
import java.util.List;
import p081h.p154f.AbstractC6118d;
import p081h.p154f.AbstractC6126g;
import p081h.p154f.C6135n;
/* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton.class */
public class LoginButton extends AbstractC6126g {

    /* renamed from: i */
    public boolean f3384i;

    /* renamed from: j */
    public String f3385j;

    /* renamed from: k */
    public String f3386k;

    /* renamed from: n */
    public boolean f3389n;

    /* renamed from: p */
    public EnumC2563f f3391p;

    /* renamed from: r */
    public C2548a f3393r;

    /* renamed from: s */
    public AbstractC6118d f3394s;

    /* renamed from: l */
    public C2560d f3387l = new C2560d();

    /* renamed from: m */
    public String f3388m = "fb_login_view_usage";

    /* renamed from: o */
    public C2548a.EnumC2553e f3390o = C2548a.EnumC2553e.BLUE;

    /* renamed from: q */
    public long f3392q = 6000;

    /* renamed from: com.facebook.login.widget.LoginButton$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$a.class */
    public class RunnableC2556a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f3395a;

        /* renamed from: com.facebook.login.widget.LoginButton$a$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$a$a.class */
        public class RunnableC2557a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2464o f3397a;

            public RunnableC2557a(C2464o oVar) {
                this.f3397a = oVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                LoginButton.this.m34320a(this.f3397a);
            }
        }

        public RunnableC2556a(String str) {
            this.f3395a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            LoginButton.this.m23782a().runOnUiThread(new RunnableC2557a(C2466p.m34643a(this.f3395a, false)));
        }
    }

    /* renamed from: com.facebook.login.widget.LoginButton$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$b.class */
    public class C2558b extends AbstractC6118d {
        public C2558b() {
        }

        @Override // p081h.p154f.AbstractC6118d
        /* renamed from: a */
        public void mo23796a(AccessToken accessToken, AccessToken accessToken2) {
            LoginButton.this.m34302m();
        }
    }

    /* renamed from: com.facebook.login.widget.LoginButton$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$c.class */
    public static /* synthetic */ class C2559c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3400a = new int[EnumC2563f.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f3400a[EnumC2563f.AUTOMATIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3400a[EnumC2563f.DISPLAY_ALWAYS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3400a[EnumC2563f.NEVER_DISPLAY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.facebook.login.widget.LoginButton$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$d.class */
    public static class C2560d {

        /* renamed from: a */
        public EnumC2531a f3401a = EnumC2531a.FRIENDS;

        /* renamed from: b */
        public List<String> f3402b = Collections.emptyList();

        /* renamed from: c */
        public EnumC2534d f3403c = EnumC2534d.NATIVE_WITH_FALLBACK;

        /* renamed from: d */
        public String f3404d = "rerequest";

        /* renamed from: a */
        public String m34301a() {
            return this.f3404d;
        }

        /* renamed from: b */
        public EnumC2531a m34299b() {
            return this.f3401a;
        }

        /* renamed from: c */
        public EnumC2534d m34298c() {
            return this.f3403c;
        }
    }

    /* renamed from: com.facebook.login.widget.LoginButton$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$e.class */
    public class View$OnClickListenerC2561e implements View.OnClickListener {

        /* renamed from: com.facebook.login.widget.LoginButton$e$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$e$a.class */
        public class DialogInterface$OnClickListenerC2562a implements DialogInterface.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ C2539g f3406a;

            public DialogInterface$OnClickListenerC2562a(View$OnClickListenerC2561e eVar, C2539g gVar) {
                this.f3406a = gVar;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                this.f3406a.m34370a();
            }
        }

        public View$OnClickListenerC2561e() {
        }

        /* renamed from: a */
        public C2539g mo34297a() {
            C2539g b = C2539g.m34350b();
            b.m34357a(LoginButton.this.m34305j());
            b.m34356a(LoginButton.this.m34304k());
            b.m34353a(LoginButton.this.m34306i());
            return b;
        }

        /* renamed from: a */
        public void m34296a(Context context) {
            C2539g a = mo34297a();
            if (LoginButton.this.f3384i) {
                String string = LoginButton.this.getResources().getString(R$string.com_facebook_loginview_log_out_action);
                String string2 = LoginButton.this.getResources().getString(R$string.com_facebook_loginview_cancel_action);
                Profile r = Profile.m35384r();
                String string3 = (r == null || r.m35389a() == null) ? LoginButton.this.getResources().getString(R$string.com_facebook_loginview_logged_in_using_facebook) : String.format(LoginButton.this.getResources().getString(R$string.com_facebook_loginview_logged_in_as), r.m35389a());
                AlertDialog.Builder builder = new AlertDialog.Builder(context);
                builder.setMessage(string3).setCancelable(true).setPositiveButton(string, new DialogInterface$OnClickListenerC2562a(this, a)).setNegativeButton(string2, (DialogInterface.OnClickListener) null);
                builder.create().show();
                return;
            }
            a.m34370a();
        }

        /* renamed from: b */
        public void m34295b() {
            C2539g a = mo34297a();
            if (LoginButton.this.m23768d() != null) {
                a.m34362a(LoginButton.this.m23768d(), LoginButton.this.f3387l.f3402b);
            } else if (LoginButton.this.m23766e() != null) {
                a.m34366a(LoginButton.this.m23766e(), LoginButton.this.f3387l.f3402b);
            } else {
                a.m34367a(LoginButton.this.m23782a(), LoginButton.this.f3387l.f3402b);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LoginButton.this.m23778a(view);
            AccessToken B = AccessToken.m35507B();
            if (AccessToken.m35506C()) {
                m34296a(LoginButton.this.getContext());
            } else {
                m34295b();
            }
            C2283m mVar = new C2283m(LoginButton.this.getContext());
            Bundle bundle = new Bundle();
            bundle.putInt("logging_in", B != null ? 0 : 1);
            bundle.putInt("access_token_expired", AccessToken.m35506C() ? 1 : 0);
            mVar.m35293b(LoginButton.this.f3388m, bundle);
        }
    }

    /* renamed from: com.facebook.login.widget.LoginButton$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$f.class */
    public enum EnumC2563f {
        AUTOMATIC("automatic", 0),
        DISPLAY_ALWAYS("display_always", 1),
        NEVER_DISPLAY("never_display", 2);
        

        /* renamed from: a */
        public String f3412a;

        /* renamed from: b */
        public int f3413b;

        /* renamed from: f */
        public static EnumC2563f f3410f = AUTOMATIC;

        EnumC2563f(String str, int i) {
            this.f3412a = str;
            this.f3413b = i;
        }

        /* renamed from: a */
        public static EnumC2563f m34293a(int i) {
            EnumC2563f[] values;
            for (EnumC2563f fVar : values()) {
                if (fVar.m34294a() == i) {
                    return fVar;
                }
            }
            return null;
        }

        /* renamed from: a */
        public int m34294a() {
            return this.f3413b;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f3412a;
        }
    }

    public LoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0, "fb_login_button_create", "fb_login_button_did_tap");
    }

    public LoginButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0, "fb_login_button_create", "fb_login_button_did_tap");
    }

    @Override // p081h.p154f.AbstractC6126g
    /* renamed from: a */
    public void mo23780a(Context context, AttributeSet attributeSet, int i, int i2) {
        super.mo23780a(context, attributeSet, i, i2);
        m23779a(mo34303l());
        m34310f(context, attributeSet, i, i2);
        if (isInEditMode()) {
            setBackgroundColor(getResources().getColor(R$color.com_facebook_blue));
            this.f3385j = "Continue with Facebook";
        } else {
            this.f3394s = new C2558b();
        }
        m34302m();
        setCompoundDrawablesWithIntrinsicBounds(AppCompatResources.getDrawable(getContext(), R$drawable.com_facebook_button_icon), (Drawable) null, (Drawable) null, (Drawable) null);
    }

    /* renamed from: a */
    public final void m34320a(C2464o oVar) {
        if (oVar != null && oVar.m34659h() && getVisibility() == 0) {
            m34315b(oVar.m34660g());
        }
    }

    /* renamed from: b */
    public final void m34315b(String str) {
        this.f3393r = new C2548a(str, this);
        this.f3393r.m34336a(this.f3390o);
        this.f3393r.m34337a(this.f3392q);
        this.f3393r.m34332c();
    }

    @Override // p081h.p154f.AbstractC6126g
    /* renamed from: c */
    public int mo23770c() {
        return R$style.com_facebook_loginview_default_style;
    }

    /* renamed from: c */
    public final int m34313c(String str) {
        return getCompoundPaddingLeft() + getCompoundDrawablePadding() + m23775a(str) + getCompoundPaddingRight();
    }

    /* renamed from: f */
    public final void m34310f(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f3391p = EnumC2563f.f3410f;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.com_facebook_login_view, i, i2);
        try {
            this.f3384i = obtainStyledAttributes.getBoolean(R$styleable.com_facebook_login_view_com_facebook_confirm_logout, true);
            this.f3385j = obtainStyledAttributes.getString(R$styleable.com_facebook_login_view_com_facebook_login_text);
            this.f3386k = obtainStyledAttributes.getString(R$styleable.com_facebook_login_view_com_facebook_logout_text);
            this.f3391p = EnumC2563f.m34293a(obtainStyledAttributes.getInt(R$styleable.com_facebook_login_view_com_facebook_tooltip_mode, EnumC2563f.f3410f.m34294a()));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: g */
    public final void m34308g() {
        int i = C2559c.f3400a[this.f3391p.ordinal()];
        if (i == 1) {
            C6135n.m23737n().execute(new RunnableC2556a(C2408g0.m34818d(getContext())));
        } else if (i == 2) {
            m34315b(getResources().getString(R$string.com_facebook_tooltip_default));
        }
    }

    /* renamed from: h */
    public void m34307h() {
        C2548a aVar = this.f3393r;
        if (aVar != null) {
            aVar.m34338a();
            this.f3393r = null;
        }
    }

    /* renamed from: i */
    public String m34306i() {
        return this.f3387l.m34301a();
    }

    /* renamed from: j */
    public EnumC2531a m34305j() {
        return this.f3387l.m34299b();
    }

    /* renamed from: k */
    public EnumC2534d m34304k() {
        return this.f3387l.m34298c();
    }

    /* renamed from: l */
    public View$OnClickListenerC2561e mo34303l() {
        return new View$OnClickListenerC2561e();
    }

    /* renamed from: m */
    public final void m34302m() {
        Resources resources = getResources();
        if (isInEditMode() || !AccessToken.m35506C()) {
            String str = this.f3385j;
            if (str != null) {
                setText(str);
                return;
            }
            String string = resources.getString(R$string.com_facebook_loginview_log_in_button_continue);
            int width = getWidth();
            String str2 = string;
            if (width != 0) {
                str2 = string;
                if (m34313c(string) > width) {
                    str2 = resources.getString(R$string.com_facebook_loginview_log_in_button);
                }
            }
            setText(str2);
            return;
        }
        String str3 = this.f3386k;
        if (str3 == null) {
            str3 = resources.getString(R$string.com_facebook_loginview_log_out_button);
        }
        setText(str3);
    }

    @Override // p081h.p154f.AbstractC6126g, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC6118d dVar = this.f3394s;
        if (dVar != null && !dVar.m23795b()) {
            this.f3394s.m23794c();
            m34302m();
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC6118d dVar = this.f3394s;
        if (dVar != null) {
            dVar.m23793d();
        }
        m34307h();
    }

    @Override // p081h.p154f.AbstractC6126g, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f3389n && !isInEditMode()) {
            this.f3389n = true;
            m34308g();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m34302m();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
        int compoundPaddingTop = getCompoundPaddingTop();
        int ceil = (int) Math.ceil(Math.abs(fontMetrics.top) + Math.abs(fontMetrics.bottom));
        int compoundPaddingBottom = getCompoundPaddingBottom();
        Resources resources = getResources();
        String str = this.f3385j;
        String str2 = str;
        if (str == null) {
            str2 = resources.getString(R$string.com_facebook_loginview_log_in_button_continue);
            int c = m34313c(str2);
            if (Button.resolveSize(c, i) < c) {
                str2 = resources.getString(R$string.com_facebook_loginview_log_in_button);
            }
        }
        int c2 = m34313c(str2);
        String str3 = this.f3386k;
        String str4 = str3;
        if (str3 == null) {
            str4 = resources.getString(R$string.com_facebook_loginview_log_out_button);
        }
        setMeasuredDimension(Button.resolveSize(Math.max(c2, m34313c(str4)), i), compoundPaddingTop + ceil + compoundPaddingBottom);
    }

    @Override // android.widget.TextView, android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            m34307h();
        }
    }
}
