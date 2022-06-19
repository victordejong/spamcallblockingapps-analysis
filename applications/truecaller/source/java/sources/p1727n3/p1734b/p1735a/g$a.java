package p1727n3.p1734b.p1735a;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
/* renamed from: n3.b.a.g$a */
/* loaded from: classes-dex2jar.jar:n3/b/a/g$a.class */
public class g$a {

    /* renamed from: a */
    public final AlertController.C0037b f70854a;

    /* renamed from: b */
    public final int f70855b;

    public g$a(Context context) {
        this(context, g.e(context, 0));
    }

    public g$a(Context context, int i) {
        this.f70854a = new AlertController.C0037b(new ContextThemeWrapper(context, g.e(context, i)));
        this.f70855b = i;
    }

    /* renamed from: a */
    public g m3668a() {
        C25403d c25403d;
        g gVar = new g(this.f70854a.f151a, this.f70855b);
        AlertController.C0037b c0037b = this.f70854a;
        AlertController alertController = gVar.c;
        View view = c0037b.f155e;
        if (view != null) {
            alertController.f110G = view;
        } else {
            CharSequence charSequence = c0037b.f154d;
            if (charSequence != null) {
                alertController.f126e = charSequence;
                TextView textView = alertController.f108E;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = c0037b.f153c;
            if (drawable != null) {
                alertController.f106C = drawable;
                alertController.f105B = 0;
                ImageView imageView = alertController.f107D;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    alertController.f107D.setImageDrawable(drawable);
                }
            }
        }
        CharSequence charSequence2 = c0037b.f156f;
        if (charSequence2 != null) {
            alertController.f127f = charSequence2;
            TextView textView2 = alertController.f109F;
            if (textView2 != null) {
                textView2.setText(charSequence2);
            }
        }
        CharSequence charSequence3 = c0037b.f157g;
        if (charSequence3 != null) {
            alertController.m43164d(-1, charSequence3, c0037b.f158h, null, null);
        }
        CharSequence charSequence4 = c0037b.f159i;
        if (charSequence4 != null) {
            alertController.m43164d(-2, charSequence4, c0037b.f160j, null, null);
        }
        CharSequence charSequence5 = c0037b.f161k;
        if (charSequence5 != null) {
            alertController.m43164d(-3, charSequence5, c0037b.f162l, null, null);
        }
        if (c0037b.f167q != null || c0037b.f168r != null) {
            AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) c0037b.f152b.inflate(alertController.f115L, (ViewGroup) null);
            if (c0037b.f173w) {
                c25403d = new C25403d(c0037b, c0037b.f151a, alertController.f116M, 16908308, c0037b.f167q, recycleListView);
            } else {
                int i = c0037b.f174x ? alertController.f117N : alertController.f118O;
                c25403d = c0037b.f168r;
                if (c25403d == null) {
                    c25403d = new AlertController.C0039d(c0037b.f151a, i, 16908308, c0037b.f167q);
                }
            }
            alertController.f111H = c25403d;
            alertController.f112I = c0037b.f175y;
            if (c0037b.f169s != null) {
                recycleListView.setOnItemClickListener(new C25404e(c0037b, alertController));
            } else if (c0037b.f176z != null) {
                recycleListView.setOnItemClickListener(new C25405f(c0037b, recycleListView, alertController));
            }
            if (c0037b.f174x) {
                recycleListView.setChoiceMode(1);
            } else if (c0037b.f173w) {
                recycleListView.setChoiceMode(2);
            }
            alertController.f128g = recycleListView;
        }
        View view2 = c0037b.f171u;
        if (view2 != null) {
            alertController.f129h = view2;
            alertController.f130i = 0;
            alertController.f135n = false;
        } else {
            int i2 = c0037b.f170t;
            if (i2 != 0) {
                alertController.f129h = null;
                alertController.f130i = i2;
                alertController.f135n = false;
            }
        }
        gVar.setCancelable(this.f70854a.f163m);
        if (this.f70854a.f163m) {
            gVar.setCanceledOnTouchOutside(true);
        }
        gVar.setOnCancelListener(this.f70854a.f164n);
        gVar.setOnDismissListener(this.f70854a.f165o);
        DialogInterface.OnKeyListener onKeyListener = this.f70854a.f166p;
        if (onKeyListener != null) {
            gVar.setOnKeyListener(onKeyListener);
        }
        return gVar;
    }

    /* renamed from: b */
    public g$a m3667b(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0037b c0037b = this.f70854a;
        c0037b.f168r = listAdapter;
        c0037b.f169s = onClickListener;
        return this;
    }

    /* renamed from: c */
    public g$a m3666c(int i, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0037b c0037b = this.f70854a;
        c0037b.f167q = c0037b.f151a.getResources().getTextArray(i);
        this.f70854a.f169s = onClickListener;
        return this;
    }

    /* renamed from: d */
    public g$a m3665d(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0037b c0037b = this.f70854a;
        c0037b.f167q = charSequenceArr;
        c0037b.f169s = null;
        return this;
    }

    /* renamed from: e */
    public g$a m3664e(int i) {
        AlertController.C0037b c0037b = this.f70854a;
        c0037b.f156f = c0037b.f151a.getText(i);
        return this;
    }

    /* renamed from: f */
    public g$a m3663f(CharSequence charSequence) {
        this.f70854a.f156f = charSequence;
        return this;
    }

    /* renamed from: g */
    public g$a m3662g(int i, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0037b c0037b = this.f70854a;
        c0037b.f159i = c0037b.f151a.getText(i);
        this.f70854a.f160j = onClickListener;
        return this;
    }

    /* renamed from: h */
    public g$a m3661h(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0037b c0037b = this.f70854a;
        c0037b.f159i = charSequence;
        c0037b.f160j = null;
        return this;
    }

    /* renamed from: i */
    public g$a m3660i(int i, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0037b c0037b = this.f70854a;
        c0037b.f157g = c0037b.f151a.getText(i);
        this.f70854a.f158h = onClickListener;
        return this;
    }

    /* renamed from: j */
    public g$a m3659j(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0037b c0037b = this.f70854a;
        c0037b.f157g = charSequence;
        c0037b.f158h = onClickListener;
        return this;
    }

    /* renamed from: k */
    public g$a m3658k(int i, int i2, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0037b c0037b = this.f70854a;
        c0037b.f167q = c0037b.f151a.getResources().getTextArray(i);
        AlertController.C0037b c0037b2 = this.f70854a;
        c0037b2.f169s = onClickListener;
        c0037b2.f175y = i2;
        c0037b2.f174x = true;
        return this;
    }

    /* renamed from: l */
    public g$a m3657l(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
        AlertController.C0037b c0037b = this.f70854a;
        c0037b.f167q = charSequenceArr;
        c0037b.f169s = onClickListener;
        c0037b.f175y = i;
        c0037b.f174x = true;
        return this;
    }

    /* renamed from: m */
    public g$a m3656m(int i) {
        AlertController.C0037b c0037b = this.f70854a;
        c0037b.f154d = c0037b.f151a.getText(i);
        return this;
    }

    /* renamed from: n */
    public g$a m3655n(CharSequence charSequence) {
        this.f70854a.f154d = charSequence;
        return this;
    }

    /* renamed from: o */
    public g$a m3654o(int i) {
        AlertController.C0037b c0037b = this.f70854a;
        c0037b.f171u = null;
        c0037b.f170t = i;
        return this;
    }

    /* renamed from: p */
    public g$a m3653p(View view) {
        AlertController.C0037b c0037b = this.f70854a;
        c0037b.f171u = view;
        c0037b.f170t = 0;
        return this;
    }

    /* renamed from: q */
    public g m3652q() {
        g m3668a = m3668a();
        m3668a.show();
        return m3668a;
    }
}
