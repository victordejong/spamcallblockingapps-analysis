package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import androidx.appcompat.a;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.v;
import androidx.core.widget.NestedScrollView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/c.class */
public final class c extends f implements DialogInterface {

    /* renamed from: a  reason: collision with root package name */
    public final AlertController f648a;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/c$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final AlertController.a f649a;

        /* renamed from: b  reason: collision with root package name */
        private final int f650b;

        public a(Context context) {
            this(context, c.a(context, 0));
        }

        public a(Context context, int i) {
            this.f649a = new AlertController.a(new ContextThemeWrapper(context, c.a(context, i)));
            this.f650b = i;
        }

        public final c create() {
            ListAdapter listAdapter;
            c cVar = new c(this.f649a.f587a, this.f650b);
            final AlertController.a aVar = this.f649a;
            final AlertController alertController = cVar.f648a;
            if (aVar.g != null) {
                alertController.G = aVar.g;
            } else {
                if (aVar.f != null) {
                    alertController.a(aVar.f);
                }
                if (aVar.f590d != null) {
                    Drawable drawable = aVar.f590d;
                    alertController.C = drawable;
                    alertController.B = 0;
                    if (alertController.D != null) {
                        if (drawable != null) {
                            alertController.D.setVisibility(0);
                            alertController.D.setImageDrawable(drawable);
                        } else {
                            alertController.D.setVisibility(8);
                        }
                    }
                }
                if (aVar.f589c != 0) {
                    alertController.a(aVar.f589c);
                }
                if (aVar.e != 0) {
                    int i = aVar.e;
                    TypedValue typedValue = new TypedValue();
                    alertController.f568a.getTheme().resolveAttribute(i, typedValue, true);
                    alertController.a(typedValue.resourceId);
                }
            }
            if (aVar.h != null) {
                CharSequence charSequence = aVar.h;
                alertController.f = charSequence;
                if (alertController.F != null) {
                    alertController.F.setText(charSequence);
                }
            }
            if (!(aVar.i == null && aVar.j == null)) {
                alertController.a(-1, aVar.i, aVar.k, null, aVar.j);
            }
            if (!(aVar.l == null && aVar.m == null)) {
                alertController.a(-2, aVar.l, aVar.n, null, aVar.m);
            }
            if (!(aVar.o == null && aVar.p == null)) {
                alertController.a(-3, aVar.o, aVar.q, null, aVar.p);
            }
            if (!(aVar.v == null && aVar.K == null && aVar.w == null)) {
                final AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) aVar.f588b.inflate(alertController.L, (ViewGroup) null);
                if (aVar.G) {
                    listAdapter = aVar.K == null ? new ArrayAdapter<CharSequence>(aVar.f587a, alertController.M, 16908308, aVar.v) { // from class: androidx.appcompat.app.AlertController.a.1
                        @Override // android.widget.ArrayAdapter, android.widget.Adapter
                        public final View getView(int i2, View view, ViewGroup viewGroup) {
                            View view2 = super.getView(i2, view, viewGroup);
                            if (aVar.F != null && aVar.F[i2]) {
                                recycleListView.setItemChecked(i2, true);
                            }
                            return view2;
                        }
                    } : new CursorAdapter(aVar.f587a, aVar.K, false, recycleListView, alertController) { // from class: androidx.appcompat.app.AlertController.a.2

                        /* renamed from: a */
                        final /* synthetic */ RecycleListView f593a;

                        /* renamed from: b */
                        final /* synthetic */ AlertController f594b;

                        /* renamed from: d */
                        private final int f596d;
                        private final int e;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(r7, r8, r9);
                            a.this = aVar;
                            this.f593a = recycleListView;
                            this.f594b = alertController;
                            Cursor cursor = getCursor();
                            this.f596d = cursor.getColumnIndexOrThrow(aVar.L);
                            this.e = cursor.getColumnIndexOrThrow(aVar.M);
                        }

                        @Override // android.widget.CursorAdapter
                        public final void bindView(View view, Context context, Cursor cursor) {
                            ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.f596d));
                            RecycleListView recycleListView2 = this.f593a;
                            int position = cursor.getPosition();
                            boolean z = true;
                            if (cursor.getInt(this.e) != 1) {
                                z = false;
                            }
                            recycleListView2.setItemChecked(position, z);
                        }

                        @Override // android.widget.CursorAdapter
                        public final View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                            return a.this.f588b.inflate(this.f594b.M, viewGroup, false);
                        }
                    };
                } else {
                    int i2 = aVar.H ? alertController.N : alertController.O;
                    listAdapter = aVar.K != null ? new SimpleCursorAdapter(aVar.f587a, i2, aVar.K, new String[]{aVar.L}, new int[]{16908308}) : aVar.w != null ? aVar.w : new AlertController.c(aVar.f587a, i2, 16908308, aVar.v);
                }
                alertController.H = listAdapter;
                alertController.I = aVar.I;
                if (aVar.x != null) {
                    recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.a.3
                        @Override // android.widget.AdapterView.OnItemClickListener
                        public final void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                            aVar.x.onClick(alertController.f569b, i3);
                            if (!aVar.H) {
                                alertController.f569b.dismiss();
                            }
                        }
                    });
                } else if (aVar.J != null) {
                    recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.a.4
                        @Override // android.widget.AdapterView.OnItemClickListener
                        public final void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                            if (aVar.F != null) {
                                aVar.F[i3] = recycleListView.isItemChecked(i3);
                            }
                            aVar.J.onClick(alertController.f569b, i3, recycleListView.isItemChecked(i3));
                        }
                    });
                }
                if (aVar.N != null) {
                    recycleListView.setOnItemSelectedListener(aVar.N);
                }
                if (aVar.H) {
                    recycleListView.setChoiceMode(1);
                } else if (aVar.G) {
                    recycleListView.setChoiceMode(2);
                }
                alertController.g = recycleListView;
            }
            if (aVar.z != null) {
                if (aVar.E) {
                    View view = aVar.z;
                    int i3 = aVar.A;
                    int i4 = aVar.B;
                    int i5 = aVar.C;
                    int i6 = aVar.D;
                    alertController.h = view;
                    alertController.i = 0;
                    alertController.n = true;
                    alertController.j = i3;
                    alertController.k = i4;
                    alertController.l = i5;
                    alertController.m = i6;
                } else {
                    alertController.h = aVar.z;
                    alertController.i = 0;
                    alertController.n = false;
                }
            } else if (aVar.y != 0) {
                int i7 = aVar.y;
                alertController.h = null;
                alertController.i = i7;
                alertController.n = false;
            }
            cVar.setCancelable(this.f649a.r);
            if (this.f649a.r) {
                cVar.setCanceledOnTouchOutside(true);
            }
            cVar.setOnCancelListener(this.f649a.s);
            cVar.setOnDismissListener(this.f649a.t);
            if (this.f649a.u != null) {
                cVar.setOnKeyListener(this.f649a.u);
            }
            return cVar;
        }

        public final Context getContext() {
            return this.f649a.f587a;
        }

        public final a setNegativeButton(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.a aVar = this.f649a;
            aVar.l = aVar.f587a.getText(i);
            this.f649a.n = onClickListener;
            return this;
        }

        public final a setPositiveButton(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.a aVar = this.f649a;
            aVar.i = aVar.f587a.getText(i);
            this.f649a.k = onClickListener;
            return this;
        }

        public final a setTitle(CharSequence charSequence) {
            this.f649a.f = charSequence;
            return this;
        }

        public final a setView(View view) {
            this.f649a.z = view;
            this.f649a.y = 0;
            this.f649a.E = false;
            return this;
        }
    }

    protected c(Context context) {
        this(context, 0);
    }

    protected c(Context context, int i) {
        super(context, a(context, i));
        this.f648a = new AlertController(getContext(), this, getWindow());
    }

    protected c(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        this(context, 0);
        setCancelable(z);
        setOnCancelListener(onCancelListener);
    }

    static int a(Context context, int i) {
        if (((i >>> 24) & 255) > 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(a.C0018a.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.f, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        boolean z;
        View findViewById;
        View findViewById2;
        super.onCreate(bundle);
        final AlertController alertController = this.f648a;
        alertController.f569b.setContentView((alertController.K == 0 || alertController.Q != 1) ? alertController.J : alertController.K);
        View findViewById3 = alertController.f570c.findViewById(a.f.parentPanel);
        View findViewById4 = findViewById3.findViewById(a.f.topPanel);
        View findViewById5 = findViewById3.findViewById(a.f.contentPanel);
        View findViewById6 = findViewById3.findViewById(a.f.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(a.f.customPanel);
        final View view = null;
        int i = 0;
        View inflate = alertController.h != null ? alertController.h : alertController.i != 0 ? LayoutInflater.from(alertController.f568a).inflate(alertController.i, viewGroup, false) : null;
        boolean z2 = inflate != null;
        if (!z2 || !AlertController.a(inflate)) {
            alertController.f570c.setFlags(131072, 131072);
        }
        if (z2) {
            FrameLayout frameLayout = (FrameLayout) alertController.f570c.findViewById(a.f.custom);
            frameLayout.addView(inflate, new ViewGroup.LayoutParams(-1, -1));
            if (alertController.n) {
                frameLayout.setPadding(alertController.j, alertController.k, alertController.l, alertController.m);
            }
            if (alertController.g != null) {
                ((LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams()).g = BitmapDescriptorFactory.HUE_RED;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View findViewById7 = viewGroup.findViewById(a.f.topPanel);
        View findViewById8 = viewGroup.findViewById(a.f.contentPanel);
        View findViewById9 = viewGroup.findViewById(a.f.buttonPanel);
        ViewGroup a2 = AlertController.a(findViewById7, findViewById4);
        ViewGroup a3 = AlertController.a(findViewById8, findViewById5);
        ViewGroup a4 = AlertController.a(findViewById9, findViewById6);
        alertController.A = (NestedScrollView) alertController.f570c.findViewById(a.f.scrollView);
        alertController.A.setFocusable(false);
        alertController.A.setNestedScrollingEnabled(false);
        alertController.F = (TextView) a3.findViewById(16908299);
        if (alertController.F != null) {
            if (alertController.f != null) {
                alertController.F.setText(alertController.f);
            } else {
                alertController.F.setVisibility(8);
                alertController.A.removeView(alertController.F);
                if (alertController.g != null) {
                    ViewGroup viewGroup2 = (ViewGroup) alertController.A.getParent();
                    int indexOfChild = viewGroup2.indexOfChild(alertController.A);
                    viewGroup2.removeViewAt(indexOfChild);
                    viewGroup2.addView(alertController.g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    a3.setVisibility(8);
                }
            }
        }
        alertController.o = (Button) a4.findViewById(16908313);
        alertController.o.setOnClickListener(alertController.S);
        if (!TextUtils.isEmpty(alertController.p) || alertController.r != null) {
            alertController.o.setText(alertController.p);
            if (alertController.r != null) {
                alertController.r.setBounds(0, 0, alertController.f571d, alertController.f571d);
                alertController.o.setCompoundDrawables(alertController.r, null, null, null);
            }
            alertController.o.setVisibility(0);
            z = true;
        } else {
            alertController.o.setVisibility(8);
            z = false;
        }
        alertController.s = (Button) a4.findViewById(16908314);
        alertController.s.setOnClickListener(alertController.S);
        if (!TextUtils.isEmpty(alertController.t) || alertController.v != null) {
            alertController.s.setText(alertController.t);
            if (alertController.v != null) {
                alertController.v.setBounds(0, 0, alertController.f571d, alertController.f571d);
                alertController.s.setCompoundDrawables(alertController.v, null, null, null);
            }
            alertController.s.setVisibility(0);
            z |= true;
        } else {
            alertController.s.setVisibility(8);
        }
        alertController.w = (Button) a4.findViewById(16908315);
        alertController.w.setOnClickListener(alertController.S);
        if (!TextUtils.isEmpty(alertController.x) || alertController.z != null) {
            alertController.w.setText(alertController.x);
            if (alertController.z != null) {
                alertController.z.setBounds(0, 0, alertController.f571d, alertController.f571d);
                alertController.w.setCompoundDrawables(alertController.z, null, null, null);
            }
            alertController.w.setVisibility(0);
            z |= true;
        } else {
            alertController.w.setVisibility(8);
        }
        Context context = alertController.f568a;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(a.C0018a.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (z) {
                AlertController.a(alertController.o);
            } else if (z) {
                AlertController.a(alertController.s);
            } else if (z) {
                AlertController.a(alertController.w);
            }
        }
        if (!(z)) {
            a4.setVisibility(8);
        }
        if (alertController.G != null) {
            a2.addView(alertController.G, 0, new ViewGroup.LayoutParams(-1, -2));
            alertController.f570c.findViewById(a.f.title_template).setVisibility(8);
        } else {
            alertController.D = (ImageView) alertController.f570c.findViewById(16908294);
            if (!(!TextUtils.isEmpty(alertController.e)) || !alertController.P) {
                alertController.f570c.findViewById(a.f.title_template).setVisibility(8);
                alertController.D.setVisibility(8);
                a2.setVisibility(8);
            } else {
                alertController.E = (TextView) alertController.f570c.findViewById(a.f.alertTitle);
                alertController.E.setText(alertController.e);
                if (alertController.B != 0) {
                    alertController.D.setImageResource(alertController.B);
                } else if (alertController.C != null) {
                    alertController.D.setImageDrawable(alertController.C);
                } else {
                    alertController.E.setPadding(alertController.D.getPaddingLeft(), alertController.D.getPaddingTop(), alertController.D.getPaddingRight(), alertController.D.getPaddingBottom());
                    alertController.D.setVisibility(8);
                }
            }
        }
        boolean z3 = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z4 = (a2 == null || a2.getVisibility() == 8) ? false : true;
        boolean z5 = (a4 == null || a4.getVisibility() == 8) ? false : true;
        if (!(z5 || a3 == null || (findViewById2 = a3.findViewById(a.f.textSpacerNoButtons)) == null)) {
            findViewById2.setVisibility(0);
        }
        if (z4) {
            if (alertController.A != null) {
                alertController.A.setClipToPadding(true);
            }
            View findViewById10 = (alertController.f == null && alertController.g == null) ? null : a2.findViewById(a.f.titleDividerNoCustom);
            if (findViewById10 != null) {
                findViewById10.setVisibility(0);
            }
        } else if (!(a3 == null || (findViewById = a3.findViewById(a.f.textSpacerNoTitle)) == null)) {
            findViewById.setVisibility(0);
        }
        if (alertController.g instanceof AlertController.RecycleListView) {
            ((AlertController.RecycleListView) alertController.g).setHasDecor(z4, z5);
        }
        if (!z3) {
            View view2 = alertController.g != null ? alertController.g : alertController.A;
            if (view2 != null) {
                if (z5) {
                    i = 2;
                }
                int i2 = z4 ? 1 : 0;
                char c2 = z4 ? 1 : 0;
                int i3 = i2 | i;
                View findViewById11 = alertController.f570c.findViewById(a.f.scrollIndicatorUp);
                View findViewById12 = alertController.f570c.findViewById(a.f.scrollIndicatorDown);
                if (Build.VERSION.SDK_INT >= 23) {
                    v.a(view2, i3, 3);
                    if (findViewById11 != null) {
                        a3.removeView(findViewById11);
                    }
                    if (findViewById12 != null) {
                        a3.removeView(findViewById12);
                    }
                } else {
                    final View view3 = findViewById11;
                    if (findViewById11 != null) {
                        view3 = findViewById11;
                        if ((i3 & 1) == 0) {
                            a3.removeView(findViewById11);
                            view3 = null;
                        }
                    }
                    if (findViewById12 == null || (i3 & 2) != 0) {
                        view = findViewById12;
                    } else {
                        a3.removeView(findViewById12);
                    }
                    if (!(view3 == null && view == null)) {
                        if (alertController.f != null) {
                            alertController.A.setOnScrollChangeListener(new NestedScrollView.b() { // from class: androidx.appcompat.app.AlertController.2
                                @Override // androidx.core.widget.NestedScrollView.b
                                public final void a(NestedScrollView nestedScrollView) {
                                    AlertController.a(nestedScrollView, view3, view);
                                }
                            });
                            alertController.A.post(new Runnable() { // from class: androidx.appcompat.app.AlertController.3
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AlertController.a(alertController.A, view3, view);
                                }
                            });
                        } else if (alertController.g != null) {
                            alertController.g.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: androidx.appcompat.app.AlertController.4
                                @Override // android.widget.AbsListView.OnScrollListener
                                public final void onScroll(AbsListView absListView, int i4, int i5, int i6) {
                                    AlertController.a(absListView, view3, view);
                                }

                                @Override // android.widget.AbsListView.OnScrollListener
                                public final void onScrollStateChanged(AbsListView absListView, int i4) {
                                }
                            });
                            alertController.g.post(new Runnable() { // from class: androidx.appcompat.app.AlertController.5
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AlertController.a(alertController.g, view3, view);
                                }
                            });
                        } else {
                            if (view3 != null) {
                                a3.removeView(view3);
                            }
                            if (view != null) {
                                a3.removeView(view);
                            }
                        }
                    }
                }
            }
        }
        ListView listView = alertController.g;
        if (listView != null && alertController.H != null) {
            listView.setAdapter(alertController.H);
            int i4 = alertController.I;
            if (i4 >= 0) {
                listView.setItemChecked(i4, true);
                listView.setSelection(i4);
            }
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        AlertController alertController = this.f648a;
        if (alertController.A != null && alertController.A.a(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        AlertController alertController = this.f648a;
        if (alertController.A != null && alertController.A.a(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // androidx.appcompat.app.f, android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f648a.a(charSequence);
    }
}
