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
import androidx.appcompat.p008a.p009a.C0094a;
import com.facebook.AbstractC1982e;
import com.facebook.AbstractC1985f;
import com.facebook.AbstractC1987g;
import com.facebook.AbstractC1989h;
import com.facebook.C1803a;
import com.facebook.C2095j;
import com.facebook.C2198r;
import com.facebook.common.C1974a;
import com.facebook.internal.C2025d;
import com.facebook.internal.C2048l;
import com.facebook.internal.C2050m;
import com.facebook.internal.C2079x;
import com.facebook.login.C2154m;
import com.facebook.login.C2162o;
import com.facebook.login.C2164q;
import com.facebook.login.EnumC2118b;
import com.facebook.login.EnumC2140i;
import com.facebook.login.widget.C2185a;
import com.facebook.p094a.C1927m;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton.class */
public class LoginButton extends AbstractC1987g {

    /* renamed from: a */
    private static final String f6353a = LoginButton.class.getName();

    /* renamed from: b */
    private boolean f6354b;

    /* renamed from: c */
    private String f6355c;

    /* renamed from: d */
    private String f6356d;

    /* renamed from: g */
    private boolean f6359g;

    /* renamed from: i */
    private EnumC2184c f6361i;

    /* renamed from: k */
    private C2185a f6363k;

    /* renamed from: l */
    private AbstractC1982e f6364l;

    /* renamed from: m */
    private C2154m f6365m;

    /* renamed from: e */
    private C2181a f6357e = new C2181a();

    /* renamed from: f */
    private String f6358f = "fb_login_view_usage";

    /* renamed from: h */
    private C2185a.EnumC2190b f6360h = C2185a.EnumC2190b.BLUE;

    /* renamed from: j */
    private long f6362j = 6000;

    /* renamed from: com.facebook.login.widget.LoginButton$3 */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$3.class */
    public static /* synthetic */ class C21803 {

        /* renamed from: a */
        static final /* synthetic */ int[] f6371a = new int[EnumC2184c.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:14:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0033 -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f6371a[EnumC2184c.AUTOMATIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6371a[EnumC2184c.DISPLAY_ALWAYS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6371a[EnumC2184c.NEVER_DISPLAY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.facebook.login.widget.LoginButton$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$a.class */
    public static class C2181a {

        /* renamed from: a */
        private EnumC2118b f6372a = EnumC2118b.FRIENDS;

        /* renamed from: b */
        private List<String> f6373b = Collections.emptyList();

        /* renamed from: c */
        private EnumC2140i f6374c = EnumC2140i.NATIVE_WITH_FALLBACK;

        /* renamed from: d */
        private String f6375d = "rerequest";

        C2181a() {
        }

        /* renamed from: a */
        public EnumC2118b m15037a() {
            return this.f6372a;
        }

        /* renamed from: a */
        public void m15036a(EnumC2118b enumC2118b) {
            this.f6372a = enumC2118b;
        }

        /* renamed from: a */
        public void m15035a(EnumC2140i enumC2140i) {
            this.f6374c = enumC2140i;
        }

        /* renamed from: a */
        public void m15033a(String str) {
            this.f6375d = str;
        }

        /* renamed from: a */
        public void m15032a(List<String> list) {
            this.f6373b = list;
        }

        /* renamed from: b */
        List<String> m15031b() {
            return this.f6373b;
        }

        /* renamed from: c */
        public EnumC2140i m15030c() {
            return this.f6374c;
        }

        /* renamed from: d */
        public String m15029d() {
            return this.f6375d;
        }
    }

    /* renamed from: com.facebook.login.widget.LoginButton$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$b.class */
    public class View$OnClickListenerC2182b implements View.OnClickListener {
        protected View$OnClickListenerC2182b() {
            LoginButton.this = r4;
        }

        /* renamed from: a */
        protected void m15028a() {
            C2154m m15026b = m15026b();
            if (LoginButton.this.getFragment() != null) {
                m15026b.m15112a(LoginButton.this.getFragment(), LoginButton.this.f6357e.f6373b);
            } else if (LoginButton.this.getNativeFragment() != null) {
                m15026b.m15116a(LoginButton.this.getNativeFragment(), LoginButton.this.f6357e.f6373b);
            } else {
                m15026b.m15117a(LoginButton.this.getActivity(), LoginButton.this.f6357e.f6373b);
            }
        }

        /* renamed from: a */
        protected void m15027a(Context context) {
            final C2154m m15026b = m15026b();
            if (!LoginButton.this.f6354b) {
                m15026b.m15100b();
                return;
            }
            String string = LoginButton.this.getResources().getString(C2164q.C2168d.com_facebook_loginview_log_out_action);
            String string2 = LoginButton.this.getResources().getString(C2164q.C2168d.com_facebook_loginview_cancel_action);
            C2198r m14971a = C2198r.m14971a();
            String string3 = (m14971a == null || m14971a.m14968c() == null) ? LoginButton.this.getResources().getString(C2164q.C2168d.com_facebook_loginview_logged_in_using_facebook) : String.format(LoginButton.this.getResources().getString(C2164q.C2168d.com_facebook_loginview_logged_in_as), m14971a.m14968c());
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setMessage(string3).setCancelable(true).setPositiveButton(string, new DialogInterface.OnClickListener() { // from class: com.facebook.login.widget.LoginButton.b.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    m15026b.m15100b();
                }
            }).setNegativeButton(string2, (DialogInterface.OnClickListener) null);
            builder.create().show();
        }

        /* renamed from: b */
        protected C2154m m15026b() {
            C2154m m15120a = C2154m.m15120a();
            m15120a.m15108a(LoginButton.this.getDefaultAudience());
            m15120a.m15107a(LoginButton.this.getLoginBehavior());
            m15120a.m15103a(LoginButton.this.getAuthType());
            return m15120a;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LoginButton.this.m15719a(view);
            C1803a m16259a = C1803a.m16259a();
            if (C1803a.m16253b()) {
                m15027a(LoginButton.this.getContext());
            } else {
                m15028a();
            }
            C1927m c1927m = new C1927m(LoginButton.this.getContext());
            Bundle bundle = new Bundle();
            bundle.putInt("logging_in", m16259a != null ? 0 : 1);
            bundle.putInt("access_token_expired", C1803a.m16253b() ? 1 : 0);
            c1927m.m15851b(LoginButton.this.f6358f, bundle);
        }
    }

    /* renamed from: com.facebook.login.widget.LoginButton$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$c.class */
    public enum EnumC2184c {
        AUTOMATIC("automatic", 0),
        DISPLAY_ALWAYS("display_always", 1),
        NEVER_DISPLAY("never_display", 2);
        

        /* renamed from: e */
        private String f6384e;

        /* renamed from: f */
        private int f6385f;

        /* renamed from: d */
        public static EnumC2184c f6382d = AUTOMATIC;

        EnumC2184c(String str, int i) {
            this.f6384e = str;
            this.f6385f = i;
        }

        /* renamed from: a */
        public static EnumC2184c m15024a(int i) {
            EnumC2184c enumC2184c;
            EnumC2184c[] values = values();
            int length = values.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    enumC2184c = null;
                    break;
                }
                enumC2184c = values[i2];
                if (enumC2184c.m15025a() == i) {
                    break;
                }
                i2++;
            }
            return enumC2184c;
        }

        /* renamed from: a */
        public int m15025a() {
            return this.f6385f;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f6384e;
        }
    }

    public LoginButton(Context context) {
        super(context, null, 0, 0, "fb_login_button_create", "fb_login_button_did_tap");
    }

    public LoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0, 0, "fb_login_button_create", "fb_login_button_did_tap");
    }

    public LoginButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0, "fb_login_button_create", "fb_login_button_did_tap");
    }

    /* renamed from: a */
    public void m15052a(C2048l c2048l) {
        if (c2048l == null || !c2048l.m15603c() || getVisibility() != 0) {
            return;
        }
        m15045b(c2048l.m15604b());
    }

    /* renamed from: b */
    private void m15048b() {
        switch (C21803.f6371a[this.f6361i.ordinal()]) {
            case 1:
                final String m15489a = C2079x.m15489a(getContext());
                C2095j.m15362f().execute(new Runnable() { // from class: com.facebook.login.widget.LoginButton.1
                    @Override // java.lang.Runnable
                    public void run() {
                        final C2048l m15584a = C2050m.m15584a(m15489a, false);
                        LoginButton.this.getActivity().runOnUiThread(new Runnable() { // from class: com.facebook.login.widget.LoginButton.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                LoginButton.this.m15052a(m15584a);
                            }
                        });
                    }
                });
                return;
            case 2:
                m15045b(getResources().getString(C2164q.C2168d.com_facebook_tooltip_default));
                return;
            default:
                return;
        }
    }

    /* renamed from: b */
    private void m15047b(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f6361i = EnumC2184c.f6382d;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C2164q.C2170f.com_facebook_login_view, i, i2);
        try {
            this.f6354b = obtainStyledAttributes.getBoolean(C2164q.C2170f.com_facebook_login_view_com_facebook_confirm_logout, true);
            this.f6355c = obtainStyledAttributes.getString(C2164q.C2170f.com_facebook_login_view_com_facebook_login_text);
            this.f6356d = obtainStyledAttributes.getString(C2164q.C2170f.com_facebook_login_view_com_facebook_logout_text);
            this.f6361i = EnumC2184c.m15024a(obtainStyledAttributes.getInt(C2164q.C2170f.com_facebook_login_view_com_facebook_tooltip_mode, EnumC2184c.f6382d.m15025a()));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: b */
    private void m15045b(String str) {
        this.f6363k = new C2185a(str, this);
        this.f6363k.m15021a(this.f6360h);
        this.f6363k.m15022a(this.f6362j);
        this.f6363k.m15023a();
    }

    /* renamed from: c */
    private int m15042c(String str) {
        return m15716a(str) + getCompoundPaddingLeft() + getCompoundDrawablePadding() + getCompoundPaddingRight();
    }

    /* renamed from: c */
    public void m15044c() {
        Resources resources = getResources();
        if (!isInEditMode() && C1803a.m16253b()) {
            setText(this.f6356d != null ? this.f6356d : resources.getString(C2164q.C2168d.com_facebook_loginview_log_out_button));
        } else if (this.f6355c != null) {
            setText(this.f6355c);
        } else {
            String string = resources.getString(C2164q.C2168d.com_facebook_loginview_log_in_button_continue);
            int width = getWidth();
            String str = string;
            if (width != 0) {
                str = string;
                if (m15042c(string) > width) {
                    str = resources.getString(C2164q.C2168d.com_facebook_loginview_log_in_button);
                }
            }
            setText(str);
        }
    }

    /* renamed from: a */
    public void m15055a() {
        if (this.f6363k != null) {
            this.f6363k.m15019b();
            this.f6363k = null;
        }
    }

    @Override // com.facebook.AbstractC1987g
    /* renamed from: a */
    public void mo15054a(Context context, AttributeSet attributeSet, int i, int i2) {
        super.mo15054a(context, attributeSet, i, i2);
        setInternalOnClickListener(getNewLoginClickListener());
        m15047b(context, attributeSet, i, i2);
        if (isInEditMode()) {
            setBackgroundColor(getResources().getColor(C1974a.C1975a.com_facebook_blue));
            this.f6355c = "Continue with Facebook";
        } else {
            this.f6364l = new AbstractC1982e() { // from class: com.facebook.login.widget.LoginButton.2
                @Override // com.facebook.AbstractC1982e
                /* renamed from: a */
                protected void mo15038a(C1803a c1803a, C1803a c1803a2) {
                    LoginButton.this.m15044c();
                }
            };
        }
        m15044c();
        setCompoundDrawablesWithIntrinsicBounds(C0094a.m22275b(getContext(), C1974a.C1976b.com_facebook_button_icon), (Drawable) null, (Drawable) null, (Drawable) null);
    }

    /* renamed from: a */
    public void m15053a(AbstractC1985f abstractC1985f, AbstractC1989h<C2162o> abstractC1989h) {
        getLoginManager().m15110a(abstractC1985f, abstractC1989h);
    }

    public String getAuthType() {
        return this.f6357e.m15029d();
    }

    public EnumC2118b getDefaultAudience() {
        return this.f6357e.m15037a();
    }

    @Override // com.facebook.AbstractC1987g
    protected int getDefaultRequestCode() {
        return C2025d.EnumC2027b.Login.m15643a();
    }

    @Override // com.facebook.AbstractC1987g
    protected int getDefaultStyleResource() {
        return C2164q.C2169e.com_facebook_loginview_default_style;
    }

    public EnumC2140i getLoginBehavior() {
        return this.f6357e.m15030c();
    }

    C2154m getLoginManager() {
        if (this.f6365m == null) {
            this.f6365m = C2154m.m15120a();
        }
        return this.f6365m;
    }

    protected View$OnClickListenerC2182b getNewLoginClickListener() {
        return new View$OnClickListenerC2182b();
    }

    List<String> getPermissions() {
        return this.f6357e.m15031b();
    }

    public long getToolTipDisplayTime() {
        return this.f6362j;
    }

    public EnumC2184c getToolTipMode() {
        return this.f6361i;
    }

    @Override // com.facebook.AbstractC1987g, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f6364l == null || this.f6364l.m15725c()) {
            return;
        }
        this.f6364l.m15727a();
        m15044c();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f6364l != null) {
            this.f6364l.m15726b();
        }
        m15055a();
    }

    @Override // com.facebook.AbstractC1987g, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f6359g || isInEditMode()) {
            return;
        }
        this.f6359g = true;
        m15048b();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m15044c();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
        int compoundPaddingTop = getCompoundPaddingTop();
        int ceil = (int) Math.ceil(Math.abs(fontMetrics.bottom) + Math.abs(fontMetrics.top));
        int compoundPaddingBottom = getCompoundPaddingBottom();
        Resources resources = getResources();
        String str = this.f6355c;
        String str2 = str;
        if (str == null) {
            str2 = resources.getString(C2164q.C2168d.com_facebook_loginview_log_in_button_continue);
            int m15042c = m15042c(str2);
            if (resolveSize(m15042c, i) < m15042c) {
                str2 = resources.getString(C2164q.C2168d.com_facebook_loginview_log_in_button);
            }
        }
        int m15042c2 = m15042c(str2);
        String str3 = this.f6356d;
        String str4 = str3;
        if (str3 == null) {
            str4 = resources.getString(C2164q.C2168d.com_facebook_loginview_log_out_button);
        }
        setMeasuredDimension(resolveSize(Math.max(m15042c2, m15042c(str4)), i), compoundPaddingBottom + ceil + compoundPaddingTop);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            m15055a();
        }
    }

    public void setAuthType(String str) {
        this.f6357e.m15033a(str);
    }

    public void setDefaultAudience(EnumC2118b enumC2118b) {
        this.f6357e.m15036a(enumC2118b);
    }

    public void setLoginBehavior(EnumC2140i enumC2140i) {
        this.f6357e.m15035a(enumC2140i);
    }

    void setLoginManager(C2154m c2154m) {
        this.f6365m = c2154m;
    }

    public void setLoginText(String str) {
        this.f6355c = str;
        m15044c();
    }

    public void setLogoutText(String str) {
        this.f6356d = str;
        m15044c();
    }

    public void setPermissions(List<String> list) {
        this.f6357e.m15032a(list);
    }

    public void setPermissions(String... strArr) {
        this.f6357e.m15032a(Arrays.asList(strArr));
    }

    void setProperties(C2181a c2181a) {
        this.f6357e = c2181a;
    }

    public void setPublishPermissions(List<String> list) {
        this.f6357e.m15032a(list);
    }

    public void setPublishPermissions(String... strArr) {
        this.f6357e.m15032a(Arrays.asList(strArr));
    }

    public void setReadPermissions(List<String> list) {
        this.f6357e.m15032a(list);
    }

    public void setReadPermissions(String... strArr) {
        this.f6357e.m15032a(Arrays.asList(strArr));
    }

    public void setToolTipDisplayTime(long j) {
        this.f6362j = j;
    }

    public void setToolTipMode(EnumC2184c enumC2184c) {
        this.f6361i = enumC2184c;
    }

    public void setToolTipStyle(C2185a.EnumC2190b enumC2190b) {
        this.f6360h = enumC2190b;
    }
}
