package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.C0032R;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;
import p1727n3.p1734b.p1735a.DialogC25424p;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController.class */
public class AlertController {

    /* renamed from: A */
    public NestedScrollView f104A;

    /* renamed from: C */
    public Drawable f106C;

    /* renamed from: D */
    public ImageView f107D;

    /* renamed from: E */
    public TextView f108E;

    /* renamed from: F */
    public TextView f109F;

    /* renamed from: G */
    public View f110G;

    /* renamed from: H */
    public ListAdapter f111H;

    /* renamed from: J */
    public int f113J;

    /* renamed from: K */
    public int f114K;

    /* renamed from: L */
    public int f115L;

    /* renamed from: M */
    public int f116M;

    /* renamed from: N */
    public int f117N;

    /* renamed from: O */
    public int f118O;

    /* renamed from: P */
    public boolean f119P;

    /* renamed from: Q */
    public Handler f120Q;

    /* renamed from: a */
    public final Context f122a;

    /* renamed from: b */
    public final DialogC25424p f123b;

    /* renamed from: c */
    public final Window f124c;

    /* renamed from: d */
    public final int f125d;

    /* renamed from: e */
    public CharSequence f126e;

    /* renamed from: f */
    public CharSequence f127f;

    /* renamed from: g */
    public ListView f128g;

    /* renamed from: h */
    public View f129h;

    /* renamed from: i */
    public int f130i;

    /* renamed from: j */
    public int f131j;

    /* renamed from: k */
    public int f132k;

    /* renamed from: l */
    public int f133l;

    /* renamed from: m */
    public int f134m;

    /* renamed from: o */
    public Button f136o;

    /* renamed from: p */
    public CharSequence f137p;

    /* renamed from: q */
    public Message f138q;

    /* renamed from: r */
    public Drawable f139r;

    /* renamed from: s */
    public Button f140s;

    /* renamed from: t */
    public CharSequence f141t;

    /* renamed from: u */
    public Message f142u;

    /* renamed from: v */
    public Drawable f143v;

    /* renamed from: w */
    public Button f144w;

    /* renamed from: x */
    public CharSequence f145x;

    /* renamed from: y */
    public Message f146y;

    /* renamed from: z */
    public Drawable f147z;

    /* renamed from: n */
    public boolean f135n = false;

    /* renamed from: B */
    public int f105B = 0;

    /* renamed from: I */
    public int f112I = -1;

    /* renamed from: R */
    public final View.OnClickListener f121R = new View$OnClickListenerC0036a();

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$RecycleListView.class */
    public static class RecycleListView extends ListView {

        /* renamed from: a */
        public final int f148a;

        /* renamed from: b */
        public final int f149b;

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0032R.styleable.RecycleListView);
            this.f149b = obtainStyledAttributes.getDimensionPixelOffset(C0032R.styleable.RecycleListView_paddingBottomNoButtons, -1);
            this.f148a = obtainStyledAttributes.getDimensionPixelOffset(C0032R.styleable.RecycleListView_paddingTopNoTitle, -1);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$a.class */
    public class View$OnClickListenerC0036a implements View.OnClickListener {
        public View$OnClickListenerC0036a() {
            AlertController.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message message;
            Message message2;
            Message message3;
            AlertController alertController = AlertController.this;
            Message obtain = (view != alertController.f136o || (message3 = alertController.f138q) == null) ? (view != alertController.f140s || (message2 = alertController.f142u) == null) ? (view != alertController.f144w || (message = alertController.f146y) == null) ? null : Message.obtain(message) : Message.obtain(message2) : Message.obtain(message3);
            if (obtain != null) {
                obtain.sendToTarget();
            }
            AlertController alertController2 = AlertController.this;
            alertController2.f120Q.obtainMessage(1, alertController2.f123b).sendToTarget();
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$b.class */
    public static class C0037b {

        /* renamed from: a */
        public final Context f151a;

        /* renamed from: b */
        public final LayoutInflater f152b;

        /* renamed from: c */
        public Drawable f153c;

        /* renamed from: d */
        public CharSequence f154d;

        /* renamed from: e */
        public View f155e;

        /* renamed from: f */
        public CharSequence f156f;

        /* renamed from: g */
        public CharSequence f157g;

        /* renamed from: h */
        public DialogInterface.OnClickListener f158h;

        /* renamed from: i */
        public CharSequence f159i;

        /* renamed from: j */
        public DialogInterface.OnClickListener f160j;

        /* renamed from: k */
        public CharSequence f161k;

        /* renamed from: l */
        public DialogInterface.OnClickListener f162l;

        /* renamed from: n */
        public DialogInterface.OnCancelListener f164n;

        /* renamed from: o */
        public DialogInterface.OnDismissListener f165o;

        /* renamed from: p */
        public DialogInterface.OnKeyListener f166p;

        /* renamed from: q */
        public CharSequence[] f167q;

        /* renamed from: r */
        public ListAdapter f168r;

        /* renamed from: s */
        public DialogInterface.OnClickListener f169s;

        /* renamed from: t */
        public int f170t;

        /* renamed from: u */
        public View f171u;

        /* renamed from: v */
        public boolean[] f172v;

        /* renamed from: w */
        public boolean f173w;

        /* renamed from: x */
        public boolean f174x;

        /* renamed from: z */
        public DialogInterface.OnMultiChoiceClickListener f176z;

        /* renamed from: y */
        public int f175y = -1;

        /* renamed from: m */
        public boolean f163m = true;

        public C0037b(Context context) {
            this.f151a = context;
            this.f152b = (LayoutInflater) context.getSystemService("layout_inflater");
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$c.class */
    public static final class HandlerC0038c extends Handler {

        /* renamed from: a */
        public WeakReference<DialogInterface> f177a;

        public HandlerC0038c(DialogInterface dialogInterface) {
            this.f177a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f177a.get(), message.what);
            } else if (i != 1) {
            } else {
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$d.class */
    public static class C0039d extends ArrayAdapter<CharSequence> {
        public C0039d(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, DialogC25424p dialogC25424p, Window window) {
        this.f122a = context;
        this.f123b = dialogC25424p;
        this.f124c = window;
        this.f120Q = new HandlerC0038c(dialogC25424p);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C0032R.styleable.AlertDialog, C0032R.attr.alertDialogStyle, 0);
        this.f113J = obtainStyledAttributes.getResourceId(C0032R.styleable.AlertDialog_android_layout, 0);
        this.f114K = obtainStyledAttributes.getResourceId(C0032R.styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.f115L = obtainStyledAttributes.getResourceId(C0032R.styleable.AlertDialog_listLayout, 0);
        this.f116M = obtainStyledAttributes.getResourceId(C0032R.styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.f117N = obtainStyledAttributes.getResourceId(C0032R.styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.f118O = obtainStyledAttributes.getResourceId(C0032R.styleable.AlertDialog_listItemLayout, 0);
        this.f119P = obtainStyledAttributes.getBoolean(C0032R.styleable.AlertDialog_showTitle, true);
        this.f125d = obtainStyledAttributes.getDimensionPixelSize(C0032R.styleable.AlertDialog_buttonIconDimen, 0);
        obtainStyledAttributes.recycle();
        dialogC25424p.m3585c(1);
    }

    /* renamed from: a */
    public static boolean m43167a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            int i = childCount - 1;
            childCount = i;
            if (m43167a(viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final void m43166b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* renamed from: c */
    public final ViewGroup m43165c(View view, View view2) {
        if (view == null) {
            View view3 = view2;
            if (view2 instanceof ViewStub) {
                view3 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view3;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        View view4 = view;
        if (view instanceof ViewStub) {
            view4 = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view4;
    }

    /* renamed from: d */
    public void m43164d(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        Message obtainMessage = onClickListener != null ? this.f120Q.obtainMessage(i, onClickListener) : null;
        if (i == -3) {
            this.f145x = charSequence;
            this.f146y = obtainMessage;
            this.f147z = null;
        } else if (i == -2) {
            this.f141t = charSequence;
            this.f142u = obtainMessage;
            this.f143v = null;
        } else if (i != -1) {
            throw new IllegalArgumentException("Button does not exist");
        } else {
            this.f137p = charSequence;
            this.f138q = obtainMessage;
            this.f139r = null;
        }
    }
}
