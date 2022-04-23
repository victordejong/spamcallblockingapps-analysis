package p459j.p460a.p613z0;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.util.ProgressWheel;
import java.util.IllegalFormatException;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14206w4;
/* renamed from: j.a.z0.h */
/* loaded from: classes3-dex2jar.jar:j/a/z0/h.class */
public class DialogC14628h extends Dialog {

    /* renamed from: f */
    public static int f32660f = 1;

    /* renamed from: g */
    public static int f32661g = 2;

    /* renamed from: a */
    public TextView f32662a;

    /* renamed from: b */
    public TextView f32663b;

    /* renamed from: c */
    public String f32664c;

    /* renamed from: d */
    public String f32665d;

    /* renamed from: e */
    public ProgressBar f32666e;

    public DialogC14628h(Context context, int i) {
        this(context, C14206w4.m2225a(i), f32660f);
    }

    public DialogC14628h(Context context, String str) {
        this(context, str, f32660f);
    }

    public DialogC14628h(Context context, String str, int i) throws IllegalFormatException {
        super(context);
        View view = null;
        this.f32664c = null;
        this.f32665d = null;
        getWindow().requestFeature(1);
        if (i == f32660f) {
            view = LayoutInflater.from(context).inflate(R$layout.dialog_m_progress_spinner, (ViewGroup) null);
        } else if (i == f32661g) {
            view = LayoutInflater.from(context).inflate(R$layout.dialog_m_progress_horizontal, (ViewGroup) null);
        }
        if (view != null) {
            this.f32662a = (TextView) view.findViewById(R$id.tv_messsage);
            ProgressWheel progressWheel = (ProgressWheel) view.findViewById(R$id.progress_wheel);
            this.f32666e = (ProgressBar) view.findViewById(R$id.pb_progress);
            this.f32663b = (TextView) view.findViewById(R$id.tv_percentage);
            ProgressBar progressBar = this.f32666e;
            if (progressBar != null) {
                progressBar.getProgressDrawable().setColorFilter(Color.parseColor("#00b500"), PorterDuff.Mode.SRC_IN);
            }
            this.f32664c = str;
            setContentView(view);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        if (!TextUtils.isEmpty(this.f32665d)) {
            this.f32663b.setText(this.f32665d);
        } else {
            this.f32663b.setVisibility(8);
        }
        this.f32662a.setText(this.f32664c);
        getWindow().setBackgroundDrawableResource(17170445);
        try {
            C14123p4.m2445a(getOwnerActivity(), getWindow());
            super.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
