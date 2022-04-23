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
import androidx.appcompat.a;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController.class */
public final class AlertController {
    NestedScrollView A;
    Drawable C;
    ImageView D;
    TextView E;
    TextView F;
    View G;
    ListAdapter H;
    int J;
    int K;
    int L;
    int M;
    int N;
    int O;
    boolean P;
    Handler R;

    /* renamed from: a  reason: collision with root package name */
    final Context f568a;

    /* renamed from: b  reason: collision with root package name */
    final f f569b;

    /* renamed from: c  reason: collision with root package name */
    final Window f570c;

    /* renamed from: d  reason: collision with root package name */
    final int f571d;
    CharSequence e;
    CharSequence f;
    public ListView g;
    View h;
    int i;
    int j;
    int k;
    int l;
    int m;
    Button o;
    CharSequence p;
    Message q;
    Drawable r;
    Button s;
    CharSequence t;
    Message u;
    Drawable v;
    Button w;
    CharSequence x;
    Message y;
    Drawable z;
    boolean n = false;
    int B = 0;
    int I = -1;
    int Q = 0;
    final View.OnClickListener S = new View.OnClickListener() { // from class: androidx.appcompat.app.AlertController.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Message obtain = (view != AlertController.this.o || AlertController.this.q == null) ? (view != AlertController.this.s || AlertController.this.u == null) ? (view != AlertController.this.w || AlertController.this.y == null) ? null : Message.obtain(AlertController.this.y) : Message.obtain(AlertController.this.u) : Message.obtain(AlertController.this.q);
            if (obtain != null) {
                obtain.sendToTarget();
            }
            AlertController.this.R.obtainMessage(1, AlertController.this.f569b).sendToTarget();
        }
    };

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$RecycleListView.class */
    public static class RecycleListView extends ListView {

        /* renamed from: a  reason: collision with root package name */
        private final int f585a;

        /* renamed from: b  reason: collision with root package name */
        private final int f586b;

        public RecycleListView(Context context) {
            this(context, null);
        }

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.RecycleListView);
            this.f586b = obtainStyledAttributes.getDimensionPixelOffset(a.j.RecycleListView_paddingBottomNoButtons, -1);
            this.f585a = obtainStyledAttributes.getDimensionPixelOffset(a.j.RecycleListView_paddingTopNoTitle, -1);
        }

        public void setHasDecor(boolean z, boolean z2) {
            if (!z2 || !z) {
                setPadding(getPaddingLeft(), z ? getPaddingTop() : this.f585a, getPaddingRight(), z2 ? getPaddingBottom() : this.f586b);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$a.class */
    public static final class a {
        public int A;
        public int B;
        public int C;
        public int D;
        public boolean[] F;
        public boolean G;
        public boolean H;
        public DialogInterface.OnMultiChoiceClickListener J;
        public Cursor K;
        public String L;
        public String M;
        public AdapterView.OnItemSelectedListener N;

        /* renamed from: a  reason: collision with root package name */
        public final Context f587a;

        /* renamed from: b  reason: collision with root package name */
        public final LayoutInflater f588b;

        /* renamed from: d  reason: collision with root package name */
        public Drawable f590d;
        public CharSequence f;
        public View g;
        public CharSequence h;
        public CharSequence i;
        public Drawable j;
        public DialogInterface.OnClickListener k;
        public CharSequence l;
        public Drawable m;
        public DialogInterface.OnClickListener n;
        public CharSequence o;
        public Drawable p;
        public DialogInterface.OnClickListener q;
        public DialogInterface.OnCancelListener s;
        public DialogInterface.OnDismissListener t;
        public DialogInterface.OnKeyListener u;
        public CharSequence[] v;
        public ListAdapter w;
        public DialogInterface.OnClickListener x;
        public int y;
        public View z;

        /* renamed from: c  reason: collision with root package name */
        public int f589c = 0;
        public int e = 0;
        public boolean E = false;
        public int I = -1;
        public boolean O = true;
        public boolean r = true;

        public a(Context context) {
            this.f587a = context;
            this.f588b = (LayoutInflater) context.getSystemService("layout_inflater");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$b.class */
    static final class b extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<DialogInterface> f602a;

        public b(DialogInterface dialogInterface) {
            this.f602a = new WeakReference<>(dialogInterface);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i == -3 || i == -2 || i == -1) {
                ((DialogInterface.OnClickListener) message.obj).onClick(this.f602a.get(), message.what);
            } else if (i == 1) {
                ((DialogInterface) message.obj).dismiss();
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AlertController$c.class */
    static final class c extends ArrayAdapter<CharSequence> {
        public c(Context context, int i, int i2, CharSequence[] charSequenceArr) {
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

    public AlertController(Context context, f fVar, Window window) {
        this.f568a = context;
        this.f569b = fVar;
        this.f570c = window;
        this.R = new b(fVar);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, a.j.AlertDialog, a.C0018a.alertDialogStyle, 0);
        this.J = obtainStyledAttributes.getResourceId(a.j.AlertDialog_android_layout, 0);
        this.K = obtainStyledAttributes.getResourceId(a.j.AlertDialog_buttonPanelSideLayout, 0);
        this.L = obtainStyledAttributes.getResourceId(a.j.AlertDialog_listLayout, 0);
        this.M = obtainStyledAttributes.getResourceId(a.j.AlertDialog_multiChoiceItemLayout, 0);
        this.N = obtainStyledAttributes.getResourceId(a.j.AlertDialog_singleChoiceItemLayout, 0);
        this.O = obtainStyledAttributes.getResourceId(a.j.AlertDialog_listItemLayout, 0);
        this.P = obtainStyledAttributes.getBoolean(a.j.AlertDialog_showTitle, true);
        this.f571d = obtainStyledAttributes.getDimensionPixelSize(a.j.AlertDialog_buttonIconDimen, 0);
        obtainStyledAttributes.recycle();
        fVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ViewGroup a(View view, View view2) {
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

    static void a(View view, View view2, View view3) {
        int i = 0;
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            if (!view.canScrollVertically(1)) {
                i = 4;
            }
            view3.setVisibility(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(View view) {
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
            if (a(viewGroup.getChildAt(i))) {
                return true;
            }
        }
        return false;
    }

    public final void a(int i) {
        this.C = null;
        this.B = i;
        ImageView imageView = this.D;
        if (imageView == null) {
            return;
        }
        if (i != 0) {
            imageView.setVisibility(0);
            this.D.setImageResource(this.B);
            return;
        }
        imageView.setVisibility(8);
    }

    public final void a(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener, Message message, Drawable drawable) {
        if (onClickListener != null) {
            message = this.R.obtainMessage(i, onClickListener);
        }
        if (i == -3) {
            this.x = charSequence;
            this.y = message;
            this.z = drawable;
        } else if (i == -2) {
            this.t = charSequence;
            this.u = message;
            this.v = drawable;
        } else if (i == -1) {
            this.p = charSequence;
            this.q = message;
            this.r = drawable;
        } else {
            throw new IllegalArgumentException("Button does not exist");
        }
    }

    public final void a(CharSequence charSequence) {
        this.e = charSequence;
        TextView textView = this.E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
