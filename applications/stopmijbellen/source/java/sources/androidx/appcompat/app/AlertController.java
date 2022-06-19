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
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;
import me.zhanghai.android.materialprogressbar.C3681R;
import p086f.DialogC2674r;
import p117h8.C3035k;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController.class */
public class AlertController {

    /* renamed from: A */
    public NestedScrollView f270A;

    /* renamed from: C */
    public Drawable f272C;

    /* renamed from: D */
    public ImageView f273D;

    /* renamed from: E */
    public TextView f274E;

    /* renamed from: F */
    public TextView f275F;

    /* renamed from: G */
    public View f276G;

    /* renamed from: H */
    public ListAdapter f277H;

    /* renamed from: J */
    public int f279J;

    /* renamed from: K */
    public int f280K;

    /* renamed from: L */
    public int f281L;

    /* renamed from: M */
    public int f282M;

    /* renamed from: N */
    public int f283N;

    /* renamed from: O */
    public int f284O;

    /* renamed from: P */
    public boolean f285P;

    /* renamed from: Q */
    public Handler f286Q;

    /* renamed from: a */
    public final Context f288a;

    /* renamed from: b */
    public final DialogC2674r f289b;

    /* renamed from: c */
    public final Window f290c;

    /* renamed from: d */
    public final int f291d;

    /* renamed from: e */
    public CharSequence f292e;

    /* renamed from: f */
    public CharSequence f293f;

    /* renamed from: g */
    public ListView f294g;

    /* renamed from: h */
    public View f295h;

    /* renamed from: i */
    public int f296i;

    /* renamed from: j */
    public int f297j;

    /* renamed from: k */
    public int f298k;

    /* renamed from: l */
    public int f299l;

    /* renamed from: m */
    public int f300m;

    /* renamed from: o */
    public Button f302o;

    /* renamed from: p */
    public CharSequence f303p;

    /* renamed from: q */
    public Message f304q;

    /* renamed from: r */
    public Drawable f305r;

    /* renamed from: s */
    public Button f306s;

    /* renamed from: t */
    public CharSequence f307t;

    /* renamed from: u */
    public Message f308u;

    /* renamed from: v */
    public Drawable f309v;

    /* renamed from: w */
    public Button f310w;

    /* renamed from: x */
    public CharSequence f311x;

    /* renamed from: y */
    public Message f312y;

    /* renamed from: z */
    public Drawable f313z;

    /* renamed from: n */
    public boolean f301n = false;

    /* renamed from: B */
    public int f271B = 0;

    /* renamed from: I */
    public int f278I = -1;

    /* renamed from: R */
    public final View.OnClickListener f287R = new View$OnClickListenerC0117a();

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$RecycleListView.class */
    public static class RecycleListView extends ListView {

        /* renamed from: a */
        public final int f314a;

        /* renamed from: b */
        public final int f315b;

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3035k.f10234u);
            this.f315b = obtainStyledAttributes.getDimensionPixelOffset(0, -1);
            this.f314a = obtainStyledAttributes.getDimensionPixelOffset(1, -1);
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$a.class */
    public class View$OnClickListenerC0117a implements View.OnClickListener {
        public View$OnClickListenerC0117a() {
            AlertController.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Message message;
            Message message2;
            Message message3;
            AlertController alertController = AlertController.this;
            Message obtain = (view != alertController.f302o || (message3 = alertController.f304q) == null) ? (view != alertController.f306s || (message2 = alertController.f308u) == null) ? (view != alertController.f310w || (message = alertController.f312y) == null) ? null : Message.obtain(message) : Message.obtain(message2) : Message.obtain(message3);
            if (obtain != null) {
                obtain.sendToTarget();
            }
            AlertController alertController2 = AlertController.this;
            alertController2.f286Q.obtainMessage(1, alertController2.f289b).sendToTarget();
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$b.class */
    public static class C0118b {

        /* renamed from: a */
        public final Context f317a;

        /* renamed from: b */
        public final LayoutInflater f318b;

        /* renamed from: c */
        public Drawable f319c;

        /* renamed from: d */
        public CharSequence f320d;

        /* renamed from: e */
        public View f321e;

        /* renamed from: f */
        public CharSequence f322f;

        /* renamed from: g */
        public DialogInterface.OnClickListener f323g;

        /* renamed from: h */
        public DialogInterface.OnKeyListener f324h;

        /* renamed from: i */
        public ListAdapter f325i;

        /* renamed from: j */
        public DialogInterface.OnClickListener f326j;

        /* renamed from: k */
        public int f327k;

        /* renamed from: l */
        public boolean f328l;

        /* renamed from: m */
        public int f329m = -1;

        public C0118b(Context context) {
            this.f317a = context;
            this.f318b = (LayoutInflater) context.getSystemService("layout_inflater");
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$c.class */
    public static final class HandlerC0119c extends Handler {

        /* renamed from: a */
        public WeakReference<DialogInterface> f330a;

        public HandlerC0119c(DialogInterface dialogInterface) {
            this.f330a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f330a.get(), message.what);
            } else if (i != 1) {
            } else {
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$d.class */
    public static class C0120d extends ArrayAdapter<CharSequence> {
        public C0120d(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, (Object[]) null);
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

    public AlertController(Context context, DialogC2674r dialogC2674r, Window window) {
        this.f288a = context;
        this.f289b = dialogC2674r;
        this.f290c = window;
        this.f286Q = new HandlerC0119c(dialogC2674r);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C3035k.f10218e, C3681R.attr.alertDialogStyle, 0);
        this.f279J = obtainStyledAttributes.getResourceId(0, 0);
        this.f280K = obtainStyledAttributes.getResourceId(2, 0);
        this.f281L = obtainStyledAttributes.getResourceId(4, 0);
        this.f282M = obtainStyledAttributes.getResourceId(5, 0);
        this.f283N = obtainStyledAttributes.getResourceId(7, 0);
        this.f284O = obtainStyledAttributes.getResourceId(3, 0);
        this.f285P = obtainStyledAttributes.getBoolean(6, true);
        this.f291d = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        obtainStyledAttributes.recycle();
        dialogC2674r.m3300a().mo3318u(1);
    }

    /* renamed from: a */
    public static boolean m8732a(View view) {
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
            if (m8732a(viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: c */
    public static void m8730c(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            int i = 4;
            if (view.canScrollVertically(1)) {
                i = 0;
            }
            view3.setVisibility(i);
        }
    }

    /* renamed from: b */
    public final void m8731b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* renamed from: d */
    public final ViewGroup m8729d(View view, View view2) {
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

    /* renamed from: e */
    public void m8728e(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        Message obtainMessage = onClickListener != null ? this.f286Q.obtainMessage(i, onClickListener) : null;
        if (i == -3) {
            this.f311x = charSequence;
            this.f312y = obtainMessage;
            this.f313z = null;
        } else if (i == -2) {
            this.f307t = charSequence;
            this.f308u = obtainMessage;
            this.f309v = null;
        } else if (i != -1) {
            throw new IllegalArgumentException("Button does not exist");
        } else {
            this.f303p = charSequence;
            this.f304q = obtainMessage;
            this.f305r = null;
        }
    }
}
