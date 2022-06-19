package com.mglab.scm.visual;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.p012v4.media.C0082b;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.C0608b;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.applovin.mediation.MaxErrorCode;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Date;
import me.zhanghai.android.materialprogressbar.C3681R;
import p066d0.C2134a;
import p095f8.C2779g;
import p095f8.C2780h;
import p107g9.C2953s;
import p107g9.C2967w;
import p117h8.C3036l;
import p182n8.C3795d;
import p193o8.AbstractC3946d;
import p193o8.C3944c;
import p193o8.View$OnLongClickListenerC3952g;
import p193o8.View$OnLongClickListenerC3954h;
/* loaded from: classes2-dex2jar.jar:com/mglab/scm/visual/CallItem.class */
public class CallItem implements AbstractC3946d {

    /* renamed from: a */
    public Context f7340a;

    /* renamed from: b */
    public boolean f7341b;

    /* renamed from: c */
    public boolean f7342c;
    @BindView
    public ImageView callImageView;
    @BindView
    public TextView callTimeTextView;
    @BindView
    public CheckBox checkBox;
    @BindView
    public ImageView contactImageView;
    @BindView
    public LinearLayout contactLayout;

    /* renamed from: d */
    public C3036l f7343d;
    @BindView
    public RelativeLayout dndLayout;
    @BindView
    public TextView durationTextView;

    /* renamed from: e */
    public boolean f7344e;

    /* renamed from: f */
    public boolean f7345f;

    /* renamed from: g */
    public String f7346g;

    /* renamed from: h */
    public String f7347h;

    /* renamed from: i */
    public Date f7348i;

    /* renamed from: j */
    public Integer f7349j;

    /* renamed from: k */
    public String f7350k;

    /* renamed from: l */
    public boolean f7351l;

    /* renamed from: m */
    public int f7352m;
    @BindView
    public LinearLayout mainLL;

    /* renamed from: n */
    public boolean f7353n;
    @BindView
    public LinearLayout nameAndPhoneLL;
    @BindView
    public LinearLayout namePhoneSimTimeLL;
    @BindView
    public TextView nameTextView;
    @BindView
    public TextView numberTextView;
    @BindView
    public RelativeLayout presetLayout;
    @BindView
    public TextView presetTextView;
    @BindView
    public LinearLayout simAndTimeLL;
    @BindView
    public ImageView simImageView;

    public CallItem(C3036l c3036l) {
        this.f7353n = false;
        this.f7343d = c3036l;
        Integer num = c3036l.f10262d;
        this.f7342c = num != null;
        boolean z = c3036l.f10265g != null;
        this.f7341b = z;
        this.f7345f = false;
        this.f7352m = c3036l.f10251L;
        this.f7351l = true;
        if (z) {
            try {
                if (num.intValue() <= 0 && c3036l.f10262d.intValue() != -666) {
                    return;
                }
                this.f7351l = c3036l.f10243D.contains(RequestConfiguration.MAX_AD_CONTENT_RATING_T);
            } catch (Exception e) {
            }
        }
    }

    public CallItem(String str, String str2, Date date, Integer num, String str3) {
        this.f7346g = str;
        this.f7347h = str2;
        this.f7348i = date;
        this.f7349j = num;
        this.f7350k = str3;
        this.f7351l = true;
        this.f7345f = true;
        this.f7344e = false;
        this.f7353n = true;
        this.f7342c = false;
    }

    @Override // p193o8.AbstractC3946d
    /* renamed from: a */
    public int mo1591a() {
        return 0;
    }

    @Override // p193o8.AbstractC3946d
    @SuppressLint({"InflateParams"})
    /* renamed from: b */
    public View mo1590b(LayoutInflater layoutInflater, View view) {
        View view2 = view;
        if (view == null) {
            view2 = layoutInflater.inflate(2131492907, (ViewGroup) null);
        }
        ButterKnife.m7385a(this, view2);
        this.f7340a = view2.getContext();
        if (this.f7345f) {
            this.nameTextView.setText(this.f7346g);
            this.numberTextView.setText(this.f7346g);
            if (this.f7353n) {
                this.checkBox.setVisibility(0);
                this.checkBox.setChecked(this.f7344e);
            }
            this.presetLayout.setVisibility(8);
            this.dndLayout.setVisibility((this.f7352m != 1 || (this.f7343d.f10262d.intValue() <= 0 && this.f7343d.f10262d.intValue() != -666)) ? 8 : 0);
            String str = this.f7347h;
            if (str == null || str.isEmpty()) {
                this.numberTextView.setVisibility(8);
            } else {
                this.nameTextView.setText(this.f7347h);
                this.numberTextView.setVisibility(0);
            }
            String str2 = this.f7347h;
            if (str2 != null && !str2.isEmpty()) {
                this.nameTextView.setText(this.f7347h);
            }
            if (C3795d.m1789d(this.f7346g)) {
                this.nameTextView.setText(2131820782);
                this.numberTextView.setVisibility(8);
            }
            this.durationTextView.setVisibility(0);
            this.durationTextView.setText(C2779g.m3108g(this.f7349j.intValue()));
            this.callTimeTextView.setText(C2779g.m3102m(this.f7340a, this.f7348i));
            this.simImageView.setVisibility(8);
            this.callImageView.setImageDrawable(m3953f());
            C2967w m2820e = C2953s.m2821d().m2820e(this.f7350k);
            m2820e.m2807c(2131230944);
            m2820e.m2806d(new C3944c(1, 100, C2134a.m3845b(this.f7340a, 2131099737)));
            m2820e.m2808b(this.contactImageView, null);
        } else {
            this.nameTextView.setText(this.f7343d.f10261c);
            this.numberTextView.setText(this.f7343d.f10261c);
            if (this.f7353n) {
                this.checkBox.setVisibility(0);
                this.checkBox.setChecked(this.f7344e);
            }
            String str3 = this.f7343d.f10266h;
            if (str3 == null || str3.isEmpty()) {
                this.numberTextView.setVisibility(8);
            } else {
                this.nameTextView.setText(this.f7343d.f10266h);
                this.numberTextView.setVisibility(0);
            }
            String str4 = this.f7343d.f10266h;
            if (str4 != null && !str4.isEmpty()) {
                this.nameTextView.setText(this.f7343d.f10266h);
            }
            if (C3795d.m1789d(this.f7343d.f10261c)) {
                this.nameTextView.setText(2131820782);
                this.numberTextView.setVisibility(8);
            }
            this.durationTextView.setVisibility(0);
            this.durationTextView.setText(C2779g.m3108g(this.f7341b ? this.f7343d.f10269k.intValue() : 0));
            this.callTimeTextView.setText(C2779g.m3102m(this.f7340a, this.f7341b ? this.f7343d.f10267i : this.f7343d.f10263e));
            if (this.f7342c) {
                this.presetLayout.setVisibility(this.f7343d.f10246G == 0 ? 8 : 0);
                this.presetTextView.setText(String.valueOf(this.f7343d.f10246G));
            } else {
                this.presetLayout.setVisibility(8);
            }
            this.dndLayout.setVisibility((this.f7352m != 1 || (this.f7343d.f10262d.intValue() <= 0 && this.f7343d.f10262d.intValue() != -666)) ? 8 : 0);
            if (!C2780h.m3069T(this.f7340a) || !this.f7342c) {
                this.simImageView.setVisibility(8);
            } else {
                if (this.f7343d.f10264f.intValue() > C2780h.m3059b0(this.f7340a).intValue()) {
                    this.simImageView.setImageResource(2131230996);
                    this.simImageView.setOnLongClickListener(View$OnLongClickListenerC3952g.f12445a);
                } else {
                    this.simImageView.setImageResource(2131230994);
                    this.simImageView.setOnLongClickListener(View$OnLongClickListenerC3954h.f12448a);
                }
                this.simImageView.setVisibility(0);
            }
            this.callImageView.setImageDrawable(m3953f());
            C2967w m2820e2 = C2953s.m2821d().m2820e(this.f7343d.f10280v);
            m2820e2.m2807c(2131230944);
            m2820e2.m2806d(new C3944c(1, 100, C2134a.m3845b(this.f7340a, 2131099737)));
            m2820e2.m2808b(this.contactImageView, null);
        }
        if (this.numberTextView.getVisibility() == 8) {
            this.nameAndPhoneLL.getLayoutParams().height = -1;
            this.nameTextView.getLayoutParams().height = -1;
            this.namePhoneSimTimeLL.getLayoutParams().height = -1;
        } else {
            this.nameAndPhoneLL.getLayoutParams().height = -2;
            this.nameTextView.getLayoutParams().height = -2;
            this.namePhoneSimTimeLL.getLayoutParams().height = -2;
        }
        return view2;
    }

    /* renamed from: c */
    public String m3956c(boolean z) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String m8756f = C0082b.m8756f(this.f7340a, 2131820731, new StringBuilder(), ": ");
        if (C3795d.m1789d(this.f7343d.f10261c)) {
            StringBuilder m8752j = C0082b.m8752j(m8756f);
            m8752j.append(this.f7340a.getString(2131820782));
            str = m8752j.toString();
        } else {
            StringBuilder m8752j2 = C0082b.m8752j(m8756f);
            m8752j2.append(this.f7343d.f10261c);
            str = m8752j2.toString();
        }
        String str6 = str;
        if (this.f7341b) {
            StringBuilder m8752j3 = C0082b.m8752j(str);
            if (this.f7342c) {
                StringBuilder m8752j4 = C0082b.m8752j("\n");
                m8752j4.append(this.f7340a.getString(2131820629, this.f7343d.f10264f.intValue() > C2780h.m3059b0(this.f7340a).intValue() ? "2" : "1"));
                str4 = m8752j4.toString();
            } else {
                str4 = "";
            }
            m8752j3.append(str4);
            if (z) {
                str5 = "";
            } else if (this.f7343d.f10266h == null) {
                str5 = "";
            } else {
                StringBuilder m8752j5 = C0082b.m8752j("\n");
                m8752j5.append(this.f7340a.getString(2131820728));
                m8752j5.append(": ");
                m8752j5.append(this.f7343d.f10266h);
                str5 = m8752j5.toString();
            }
            m8752j3.append(str5);
            m8752j3.append("\n");
            m8752j3.append(this.f7340a.getString(2131821071));
            m8752j3.append(": ");
            m8752j3.append(C2779g.m3096s(this.f7340a, this.f7343d.f10267i));
            m8752j3.append(" ");
            m8752j3.append(C2779g.m3102m(this.f7340a, this.f7343d.f10267i));
            m8752j3.append("\n");
            m8752j3.append(this.f7340a.getString(2131820627));
            m8752j3.append(": ");
            m8752j3.append(this.f7343d.f10270l);
            str6 = m8752j3.toString();
        }
        if (!this.f7342c) {
            StringBuilder m7624k = C0608b.m7624k(str6, "\n\n");
            m7624k.append(this.f7340a.getString(2131820628));
            m7624k.append("\n\n");
            m7624k.append(this.f7340a.getString(2131820724));
            str2 = m7624k.toString();
        } else {
            StringBuilder m7624k2 = C0608b.m7624k(str6, "\n\n");
            m7624k2.append(this.f7340a.getString(2131820630));
            String sb = m7624k2.toString();
            String str7 = sb;
            if (this.f7343d.f10262d.intValue() != -1000) {
                if (this.f7343d.f10246G == 0) {
                    StringBuilder m7624k3 = C0608b.m7624k(sb, "\n");
                    m7624k3.append(this.f7340a.getString(2131820975));
                    str7 = m7624k3.toString();
                } else {
                    StringBuilder m7624k4 = C0608b.m7624k(sb, "\n");
                    m7624k4.append(this.f7340a.getString(2131820775, String.valueOf(this.f7343d.f10246G)));
                    str7 = m7624k4.toString();
                }
            }
            StringBuilder m7624k5 = C0608b.m7624k(str7, "\n");
            Context context = this.f7340a;
            switch (this.f7343d.f10262d.intValue()) {
                case MaxErrorCode.NETWORK_ERROR /* -1000 */:
                    str3 = context.getString(2131820622);
                    break;
                case -777:
                    str3 = context.getString(2131820623);
                    break;
                case -666:
                    str3 = context.getString(2131820618);
                    break;
                case -100:
                    str3 = context.getString(2131820626);
                    break;
                case -90:
                    str3 = context.getString(2131820625);
                    break;
                case -10:
                    str3 = context.getString(2131820616);
                    break;
                case 0:
                    str3 = context.getString(2131820621);
                    break;
                case 1:
                    str3 = context.getString(2131820620);
                    break;
                case 5:
                    str3 = context.getString(2131820612);
                    break;
                case 7:
                    str3 = context.getString(2131820613);
                    break;
                case 10:
                    str3 = context.getString(2131820619);
                    break;
                case 20:
                    str3 = context.getString(2131820615);
                    break;
                case 25:
                    str3 = context.getString(2131820614);
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    str3 = context.getString(2131820617);
                    break;
                default:
                    str3 = context.getString(2131820624);
                    break;
            }
            m7624k5.append(str3);
            str2 = m7624k5.toString();
        }
        return str2;
    }

    /* renamed from: d */
    public String m3955d() {
        return this.f7345f ? this.f7347h : this.f7343d.f10266h;
    }

    /* renamed from: e */
    public String m3954e() {
        return this.f7345f ? this.f7346g : this.f7343d.f10261c;
    }

    /* renamed from: f */
    public Drawable m3953f() {
        Drawable drawable;
        Context context;
        Context context2;
        int i;
        Drawable drawable2;
        Context context3;
        int i2;
        Drawable drawable3;
        Context context4;
        int i3;
        Drawable drawable4;
        Drawable drawable5;
        Drawable drawable6;
        Drawable drawable7;
        Drawable drawable8;
        if (this.f7342c && this.f7343d.f10262d.intValue() > 0) {
            boolean m3081H = C2780h.m3081H(this.f7340a);
            int intValue = this.f7343d.f10262d.intValue();
            if (intValue == 5) {
                if (m3081H) {
                    Context context5 = this.f7340a;
                    Object obj = C2134a.f7832a;
                    drawable4 = C2134a.C2136b.m3841b(context5, 2131230927);
                } else {
                    Context context6 = this.f7340a;
                    Object obj2 = C2134a.f7832a;
                    drawable4 = C2134a.C2136b.m3841b(context6, 2131230926);
                }
                return drawable4;
            } else if (intValue == 7) {
                if (m3081H) {
                    Context context7 = this.f7340a;
                    Object obj3 = C2134a.f7832a;
                    drawable5 = C2134a.C2136b.m3841b(context7, 2131230929);
                } else {
                    Context context8 = this.f7340a;
                    Object obj4 = C2134a.f7832a;
                    drawable5 = C2134a.C2136b.m3841b(context8, 2131230928);
                }
                return drawable5;
            } else if (intValue == 10) {
                if (m3081H) {
                    Context context9 = this.f7340a;
                    Object obj5 = C2134a.f7832a;
                    drawable6 = C2134a.C2136b.m3841b(context9, 2131230937);
                } else {
                    Context context10 = this.f7340a;
                    Object obj6 = C2134a.f7832a;
                    drawable6 = C2134a.C2136b.m3841b(context10, 2131230936);
                }
                return drawable6;
            } else if (intValue == 20) {
                if (m3081H) {
                    Context context11 = this.f7340a;
                    Object obj7 = C2134a.f7832a;
                    drawable7 = C2134a.C2136b.m3841b(context11, 2131230932);
                } else {
                    Context context12 = this.f7340a;
                    Object obj8 = C2134a.f7832a;
                    drawable7 = C2134a.C2136b.m3841b(context12, 2131230931);
                }
                return drawable7;
            } else if (intValue != 25) {
                Context context13 = this.f7340a;
                Object obj9 = C2134a.f7832a;
                return C2134a.C2136b.m3841b(context13, 2131230924);
            } else {
                if (m3081H) {
                    Context context14 = this.f7340a;
                    Object obj10 = C2134a.f7832a;
                    drawable8 = C2134a.C2136b.m3841b(context14, 2131230934);
                } else {
                    Context context15 = this.f7340a;
                    Object obj11 = C2134a.f7832a;
                    drawable8 = C2134a.C2136b.m3841b(context15, 2131230933);
                }
                return drawable8;
            }
        }
        int i4 = 2131231005;
        if (this.f7341b) {
            int intValue2 = this.f7343d.f10268j.intValue();
            if (intValue2 != 9) {
                switch (intValue2) {
                    case 1:
                        if (this.f7342c) {
                            if (this.f7351l) {
                                context = this.f7340a;
                            } else {
                                context = this.f7340a;
                                i4 = 2131231008;
                            }
                            Object obj12 = C2134a.f7832a;
                            drawable = C2134a.C2136b.m3841b(context, i4);
                        } else {
                            Context context16 = this.f7340a;
                            Object obj13 = C2134a.f7832a;
                            drawable = C2134a.C2136b.m3841b(context16, 2131231006);
                        }
                        return drawable;
                    case 2:
                        if (this.f7342c) {
                            context2 = this.f7340a;
                            i = 2131231012;
                        } else {
                            context2 = this.f7340a;
                            i = 2131231013;
                        }
                        Object obj14 = C2134a.f7832a;
                        return C2134a.C2136b.m3841b(context2, i);
                    case 3:
                        if (this.f7342c) {
                            if (this.f7351l) {
                                context3 = this.f7340a;
                                i2 = 2131231009;
                            } else {
                                context3 = this.f7340a;
                                i2 = 2131231011;
                            }
                            Object obj15 = C2134a.f7832a;
                            drawable2 = C2134a.C2136b.m3841b(context3, i2);
                        } else {
                            Context context17 = this.f7340a;
                            Object obj16 = C2134a.f7832a;
                            drawable2 = C2134a.C2136b.m3841b(context17, 2131231010);
                        }
                        return drawable2;
                    case 4:
                        Context context18 = this.f7340a;
                        int identifier = context18.getResources().getIdentifier("android:drawable/ic_btn_speak_now", null, null);
                        Object obj17 = C2134a.f7832a;
                        return C2134a.C2136b.m3841b(context18, identifier);
                    case 5:
                        if (this.f7342c) {
                            if (this.f7351l) {
                                context4 = this.f7340a;
                                i3 = 2131231002;
                            } else {
                                context4 = this.f7340a;
                                i3 = 2131231004;
                            }
                            Object obj18 = C2134a.f7832a;
                            drawable3 = C2134a.C2136b.m3841b(context4, i3);
                        } else {
                            Context context19 = this.f7340a;
                            Object obj19 = C2134a.f7832a;
                            drawable3 = C2134a.C2136b.m3841b(context19, 2131231003);
                        }
                        return drawable3;
                }
            }
            Context context20 = this.f7340a;
            int identifier2 = context20.getResources().getIdentifier("android:drawable/ic_menu_directions", null, null);
            Object obj20 = C2134a.f7832a;
            return C2134a.C2136b.m3841b(context20, identifier2);
        }
        Context context21 = this.f7340a;
        Object obj21 = C2134a.f7832a;
        return C2134a.C2136b.m3841b(context21, 2131231005);
    }
}
