package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
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
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.C0142a;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController.class */
public final class AlertController {

    /* renamed from: A */
    NestedScrollView f283A;

    /* renamed from: C */
    Drawable f285C;

    /* renamed from: D */
    ImageView f286D;

    /* renamed from: E */
    TextView f287E;

    /* renamed from: F */
    TextView f288F;

    /* renamed from: G */
    View f289G;

    /* renamed from: H */
    ListAdapter f290H;

    /* renamed from: J */
    int f292J;

    /* renamed from: K */
    int f293K;

    /* renamed from: L */
    int f294L;

    /* renamed from: M */
    int f295M;

    /* renamed from: N */
    int f296N;

    /* renamed from: O */
    int f297O;

    /* renamed from: P */
    boolean f298P;

    /* renamed from: R */
    Handler f300R;

    /* renamed from: a */
    final Context f302a;

    /* renamed from: b */
    final DialogC0200f f303b;

    /* renamed from: c */
    final Window f304c;

    /* renamed from: d */
    final int f305d;

    /* renamed from: e */
    CharSequence f306e;

    /* renamed from: f */
    CharSequence f307f;

    /* renamed from: g */
    public ListView f308g;

    /* renamed from: h */
    View f309h;

    /* renamed from: i */
    int f310i;

    /* renamed from: j */
    int f311j;

    /* renamed from: k */
    int f312k;

    /* renamed from: l */
    int f313l;

    /* renamed from: m */
    int f314m;

    /* renamed from: o */
    Button f316o;

    /* renamed from: p */
    CharSequence f317p;

    /* renamed from: q */
    Message f318q;

    /* renamed from: r */
    Drawable f319r;

    /* renamed from: s */
    Button f320s;

    /* renamed from: t */
    CharSequence f321t;

    /* renamed from: u */
    Message f322u;

    /* renamed from: v */
    Drawable f323v;

    /* renamed from: w */
    Button f324w;

    /* renamed from: x */
    CharSequence f325x;

    /* renamed from: y */
    Message f326y;

    /* renamed from: z */
    Drawable f327z;

    /* renamed from: n */
    boolean f315n = false;

    /* renamed from: B */
    int f284B = 0;

    /* renamed from: I */
    int f291I = -1;

    /* renamed from: Q */
    int f299Q = 0;

    /* renamed from: S */
    final View.OnClickListener f301S = new View.OnClickListener() { // from class: androidx.appcompat.app.AlertController.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Message obtain = (view != AlertController.this.f316o || AlertController.this.f318q == null) ? (view != AlertController.this.f320s || AlertController.this.f322u == null) ? (view != AlertController.this.f324w || AlertController.this.f326y == null) ? null : Message.obtain(AlertController.this.f326y) : Message.obtain(AlertController.this.f322u) : Message.obtain(AlertController.this.f318q);
            if (obtain != null) {
                obtain.sendToTarget();
            }
            AlertController.this.f300R.obtainMessage(1, AlertController.this.f303b).sendToTarget();
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$RecycleListView.class */
    public static class RecycleListView extends ListView {

        /* renamed from: a */
        private final int f341a;

        /* renamed from: b */
        private final int f342b;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0142a.C0152j.RecycleListView);
            this.f342b = obtainStyledAttributes.getDimensionPixelOffset(C0142a.C0152j.RecycleListView_paddingBottomNoButtons, -1);
            this.f341a = obtainStyledAttributes.getDimensionPixelOffset(C0142a.C0152j.RecycleListView_paddingTopNoTitle, -1);
        }

        public void setHasDecor(boolean z, boolean z2) {
            if (!z2 || !z) {
                setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f341a, getPaddingRight(), z2 ? getPaddingBottom() : this.f342b);
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$a.class */
    public static final class C0161a {

        /* renamed from: A */
        public int f343A;

        /* renamed from: B */
        public int f344B;

        /* renamed from: C */
        public int f345C;

        /* renamed from: D */
        public int f346D;

        /* renamed from: F */
        public boolean[] f348F;

        /* renamed from: G */
        public boolean f349G;

        /* renamed from: H */
        public boolean f350H;

        /* renamed from: J */
        public DialogInterface.OnMultiChoiceClickListener f352J;

        /* renamed from: K */
        public Cursor f353K;

        /* renamed from: L */
        public String f354L;

        /* renamed from: M */
        public String f355M;

        /* renamed from: N */
        public AdapterView.OnItemSelectedListener f356N;

        /* renamed from: a */
        public final Context f358a;

        /* renamed from: b */
        public final LayoutInflater f359b;

        /* renamed from: d */
        public Drawable f361d;

        /* renamed from: f */
        public CharSequence f363f;

        /* renamed from: g */
        public View f364g;

        /* renamed from: h */
        public CharSequence f365h;

        /* renamed from: i */
        public CharSequence f366i;

        /* renamed from: j */
        public Drawable f367j;

        /* renamed from: k */
        public DialogInterface.OnClickListener f368k;

        /* renamed from: l */
        public CharSequence f369l;

        /* renamed from: m */
        public Drawable f370m;

        /* renamed from: n */
        public DialogInterface.OnClickListener f371n;

        /* renamed from: o */
        public CharSequence f372o;

        /* renamed from: p */
        public Drawable f373p;

        /* renamed from: q */
        public DialogInterface.OnClickListener f374q;

        /* renamed from: s */
        public DialogInterface.OnCancelListener f376s;

        /* renamed from: t */
        public DialogInterface.OnDismissListener f377t;

        /* renamed from: u */
        public DialogInterface.OnKeyListener f378u;

        /* renamed from: v */
        public CharSequence[] f379v;

        /* renamed from: w */
        public ListAdapter f380w;

        /* renamed from: x */
        public DialogInterface.OnClickListener f381x;

        /* renamed from: y */
        public int f382y;

        /* renamed from: z */
        public View f383z;

        /* renamed from: c */
        public int f360c = 0;

        /* renamed from: e */
        public int f362e = 0;

        /* renamed from: E */
        public boolean f347E = false;

        /* renamed from: I */
        public int f351I = -1;

        /* renamed from: O */
        public boolean f357O = true;

        /* renamed from: r */
        public boolean f375r = true;

        public C0161a(Context context) {
            this.f358a = context;
            this.f359b = (LayoutInflater) context.getSystemService("layout_inflater");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.app.AlertController$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$b.class */
    public static final class HandlerC0166b extends Handler {

        /* renamed from: a */
        private WeakReference<DialogInterface> f396a;

        public HandlerC0166b(DialogInterface dialogInterface) {
            this.f396a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f396a.get(), message.what);
            } else if (i != 1) {
            } else {
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$c.class */
    static final class C0167c extends ArrayAdapter<CharSequence> {
        public C0167c(Context context, int i, int i2, CharSequence[] charSequenceArr) {
            super(context, i, i2, charSequenceArr);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final boolean hasStableIds() {
            return true;
        }
    }

    public AlertController(Context context, DialogC0200f dialogC0200f, Window window) {
        this.f302a = context;
        this.f303b = dialogC0200f;
        this.f304c = window;
        this.f300R = new HandlerC0166b(dialogC0200f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C0142a.C0152j.AlertDialog, C0142a.C0143a.alertDialogStyle, 0);
        this.f292J = obtainStyledAttributes.getResourceId(C0142a.C0152j.AlertDialog_android_layout, 0);
        this.f293K = obtainStyledAttributes.getResourceId(C0142a.C0152j.AlertDialog_buttonPanelSideLayout, 0);
        this.f294L = obtainStyledAttributes.getResourceId(C0142a.C0152j.AlertDialog_listLayout, 0);
        this.f295M = obtainStyledAttributes.getResourceId(C0142a.C0152j.AlertDialog_multiChoiceItemLayout, 0);
        this.f296N = obtainStyledAttributes.getResourceId(C0142a.C0152j.AlertDialog_singleChoiceItemLayout, 0);
        this.f297O = obtainStyledAttributes.getResourceId(C0142a.C0152j.AlertDialog_listItemLayout, 0);
        this.f298P = obtainStyledAttributes.getBoolean(C0142a.C0152j.AlertDialog_showTitle, true);
        this.f305d = obtainStyledAttributes.getDimensionPixelSize(C0142a.C0152j.AlertDialog_buttonIconDimen, 0);
        obtainStyledAttributes.recycle();
        dialogC0200f.m46269a();
    }

    /* renamed from: a */
    public static ViewGroup m46364a(View view, View view2) {
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

    /* renamed from: a */
    static void m46363a(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    /* renamed from: a */
    public static void m46362a(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    public static boolean m46365a(View view) {
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
            if (m46365a(viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final void m46367a(int i) {
        this.f285C = null;
        this.f284B = i;
        ImageView imageView = this.f286D;
        if (imageView != null) {
            if (i == 0) {
                imageView.setVisibility(8);
                return;
            }
            imageView.setVisibility(0);
            this.f286D.setImageResource(this.f284B);
        }
    }

    /* renamed from: a */
    public final void m46366a(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (onClickListener != null) {
            message = this.f300R.obtainMessage(i, onClickListener);
        }
        if (i == -3) {
            this.f325x = charSequence;
            this.f326y = message;
            this.f327z = drawable;
        } else if (i == -2) {
            this.f321t = charSequence;
            this.f322u = message;
            this.f323v = drawable;
        } else if (i != -1) {
            throw new IllegalArgumentException("Button does not exist");
        } else {
            this.f317p = charSequence;
            this.f318q = message;
            this.f319r = drawable;
        }
    }

    /* renamed from: a */
    public final void m46361a(CharSequence charSequence) {
        this.f306e = charSequence;
        TextView textView = this.f287E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
