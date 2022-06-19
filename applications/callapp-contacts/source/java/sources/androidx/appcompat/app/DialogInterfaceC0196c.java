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
import android.widget.ListView;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import androidx.appcompat.C0142a;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.view.C0926v;
import androidx.core.widget.NestedScrollView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* renamed from: androidx.appcompat.app.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/c.class */
public final class DialogInterfaceC0196c extends DialogC0200f implements DialogInterface {

    /* renamed from: a */
    public final AlertController f514a;

    /* renamed from: androidx.appcompat.app.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/c$a.class */
    public static final class C0197a {

        /* renamed from: a */
        public final AlertController.C0161a f515a;

        /* renamed from: b */
        private final int f516b;

        public C0197a(Context context) {
            this(context, DialogInterfaceC0196c.m46300a(context, 0));
        }

        public C0197a(Context context, int i) {
            this.f515a = new AlertController.C0161a(new ContextThemeWrapper(context, DialogInterfaceC0196c.m46300a(context, i)));
            this.f516b = i;
        }

        public final DialogInterfaceC0196c create() {
            ArrayAdapter<CharSequence> arrayAdapter;
            DialogInterfaceC0196c dialogInterfaceC0196c = new DialogInterfaceC0196c(this.f515a.f358a, this.f516b);
            final AlertController.C0161a c0161a = this.f515a;
            final AlertController alertController = dialogInterfaceC0196c.f514a;
            if (c0161a.f364g != null) {
                alertController.f289G = c0161a.f364g;
            } else {
                if (c0161a.f363f != null) {
                    alertController.m46361a(c0161a.f363f);
                }
                if (c0161a.f361d != null) {
                    Drawable drawable = c0161a.f361d;
                    alertController.f285C = drawable;
                    alertController.f284B = 0;
                    if (alertController.f286D != null) {
                        if (drawable != null) {
                            alertController.f286D.setVisibility(0);
                            alertController.f286D.setImageDrawable(drawable);
                        } else {
                            alertController.f286D.setVisibility(8);
                        }
                    }
                }
                if (c0161a.f360c != 0) {
                    alertController.m46367a(c0161a.f360c);
                }
                if (c0161a.f362e != 0) {
                    int i = c0161a.f362e;
                    TypedValue typedValue = new TypedValue();
                    alertController.f302a.getTheme().resolveAttribute(i, typedValue, true);
                    alertController.m46367a(typedValue.resourceId);
                }
            }
            if (c0161a.f365h != null) {
                CharSequence charSequence = c0161a.f365h;
                alertController.f307f = charSequence;
                if (alertController.f288F != null) {
                    alertController.f288F.setText(charSequence);
                }
            }
            if (c0161a.f366i != null || c0161a.f367j != null) {
                alertController.m46366a(-1, c0161a.f366i, c0161a.f368k, null, c0161a.f367j);
            }
            if (c0161a.f369l != null || c0161a.f370m != null) {
                alertController.m46366a(-2, c0161a.f369l, c0161a.f371n, null, c0161a.f370m);
            }
            if (c0161a.f372o != null || c0161a.f373p != null) {
                alertController.m46366a(-3, c0161a.f372o, c0161a.f374q, null, c0161a.f373p);
            }
            if (c0161a.f379v != null || c0161a.f353K != null || c0161a.f380w != null) {
                final AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) c0161a.f359b.inflate(alertController.f294L, (ViewGroup) null);
                if (c0161a.f349G) {
                    arrayAdapter = c0161a.f353K == null ? new ArrayAdapter<CharSequence>(c0161a.f358a, alertController.f295M, 16908308, c0161a.f379v) { // from class: androidx.appcompat.app.AlertController.a.1
                        @Override // android.widget.ArrayAdapter, android.widget.Adapter
                        public final View getView(int i2, View view, ViewGroup viewGroup) {
                            View view2 = super.getView(i2, view, viewGroup);
                            if (c0161a.f348F != null && c0161a.f348F[i2]) {
                                recycleListView.setItemChecked(i2, true);
                            }
                            return view2;
                        }
                    } : new CursorAdapter(c0161a.f358a, c0161a.f353K, false, recycleListView, alertController) { // from class: androidx.appcompat.app.AlertController.a.2

                        /* renamed from: a */
                        final /* synthetic */ RecycleListView f386a;

                        /* renamed from: b */
                        final /* synthetic */ AlertController f387b;

                        /* renamed from: d */
                        private final int f389d;

                        /* renamed from: e */
                        private final int f390e;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(r7, r8, r9);
                            C0161a.this = c0161a;
                            this.f386a = recycleListView;
                            this.f387b = alertController;
                            Cursor cursor = getCursor();
                            this.f389d = cursor.getColumnIndexOrThrow(c0161a.f354L);
                            this.f390e = cursor.getColumnIndexOrThrow(c0161a.f355M);
                        }

                        @Override // android.widget.CursorAdapter
                        public final void bindView(View view, Context context, Cursor cursor) {
                            ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.f389d));
                            RecycleListView recycleListView2 = this.f386a;
                            int position = cursor.getPosition();
                            boolean z = true;
                            if (cursor.getInt(this.f390e) != 1) {
                                z = false;
                            }
                            recycleListView2.setItemChecked(position, z);
                        }

                        @Override // android.widget.CursorAdapter
                        public final View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                            return C0161a.this.f359b.inflate(this.f387b.f295M, viewGroup, false);
                        }
                    };
                } else {
                    int i2 = c0161a.f350H ? alertController.f296N : alertController.f297O;
                    arrayAdapter = c0161a.f353K != null ? new SimpleCursorAdapter(c0161a.f358a, i2, c0161a.f353K, new String[]{c0161a.f354L}, new int[]{16908308}) : c0161a.f380w != null ? c0161a.f380w : new AlertController.C0167c(c0161a.f358a, i2, 16908308, c0161a.f379v);
                }
                alertController.f290H = arrayAdapter;
                alertController.f291I = c0161a.f351I;
                if (c0161a.f381x != null) {
                    recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.a.3
                        @Override // android.widget.AdapterView.OnItemClickListener
                        public final void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                            c0161a.f381x.onClick(alertController.f303b, i3);
                            if (!c0161a.f350H) {
                                alertController.f303b.dismiss();
                            }
                        }
                    });
                } else if (c0161a.f352J != null) {
                    recycleListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: androidx.appcompat.app.AlertController.a.4
                        @Override // android.widget.AdapterView.OnItemClickListener
                        public final void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                            if (c0161a.f348F != null) {
                                c0161a.f348F[i3] = recycleListView.isItemChecked(i3);
                            }
                            c0161a.f352J.onClick(alertController.f303b, i3, recycleListView.isItemChecked(i3));
                        }
                    });
                }
                if (c0161a.f356N != null) {
                    recycleListView.setOnItemSelectedListener(c0161a.f356N);
                }
                if (c0161a.f350H) {
                    recycleListView.setChoiceMode(1);
                } else if (c0161a.f349G) {
                    recycleListView.setChoiceMode(2);
                }
                alertController.f308g = recycleListView;
            }
            if (c0161a.f383z != null) {
                if (c0161a.f347E) {
                    View view = c0161a.f383z;
                    int i3 = c0161a.f343A;
                    int i4 = c0161a.f344B;
                    int i5 = c0161a.f345C;
                    int i6 = c0161a.f346D;
                    alertController.f309h = view;
                    alertController.f310i = 0;
                    alertController.f315n = true;
                    alertController.f311j = i3;
                    alertController.f312k = i4;
                    alertController.f313l = i5;
                    alertController.f314m = i6;
                } else {
                    alertController.f309h = c0161a.f383z;
                    alertController.f310i = 0;
                    alertController.f315n = false;
                }
            } else if (c0161a.f382y != 0) {
                int i7 = c0161a.f382y;
                alertController.f309h = null;
                alertController.f310i = i7;
                alertController.f315n = false;
            }
            dialogInterfaceC0196c.setCancelable(this.f515a.f375r);
            if (this.f515a.f375r) {
                dialogInterfaceC0196c.setCanceledOnTouchOutside(true);
            }
            dialogInterfaceC0196c.setOnCancelListener(this.f515a.f376s);
            dialogInterfaceC0196c.setOnDismissListener(this.f515a.f377t);
            if (this.f515a.f378u != null) {
                dialogInterfaceC0196c.setOnKeyListener(this.f515a.f378u);
            }
            return dialogInterfaceC0196c;
        }

        public final Context getContext() {
            return this.f515a.f358a;
        }

        public final C0197a setNegativeButton(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0161a c0161a = this.f515a;
            c0161a.f369l = c0161a.f358a.getText(i);
            this.f515a.f371n = onClickListener;
            return this;
        }

        public final C0197a setPositiveButton(int i, DialogInterface.OnClickListener onClickListener) {
            AlertController.C0161a c0161a = this.f515a;
            c0161a.f366i = c0161a.f358a.getText(i);
            this.f515a.f368k = onClickListener;
            return this;
        }

        public final C0197a setTitle(CharSequence charSequence) {
            this.f515a.f363f = charSequence;
            return this;
        }

        public final C0197a setView(View view) {
            this.f515a.f383z = view;
            this.f515a.f382y = 0;
            this.f515a.f347E = false;
            return this;
        }
    }

    protected DialogInterfaceC0196c(Context context) {
        this(context, 0);
    }

    protected DialogInterfaceC0196c(Context context, int i) {
        super(context, m46300a(context, i));
        this.f514a = new AlertController(getContext(), this, getWindow());
    }

    protected DialogInterfaceC0196c(Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        this(context, 0);
        setCancelable(z);
        setOnCancelListener(onCancelListener);
    }

    /* renamed from: a */
    static int m46300a(Context context, int i) {
        if (((i >>> 24) & 255) > 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C0142a.C0143a.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // androidx.appcompat.app.DialogC0200f, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        boolean z;
        View findViewById;
        View findViewById2;
        super.onCreate(bundle);
        final AlertController alertController = this.f514a;
        alertController.f303b.setContentView((alertController.f293K == 0 || alertController.f299Q != 1) ? alertController.f292J : alertController.f293K);
        View findViewById3 = alertController.f304c.findViewById(C0142a.C0148f.parentPanel);
        View findViewById4 = findViewById3.findViewById(C0142a.C0148f.topPanel);
        View findViewById5 = findViewById3.findViewById(C0142a.C0148f.contentPanel);
        View findViewById6 = findViewById3.findViewById(C0142a.C0148f.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById3.findViewById(C0142a.C0148f.customPanel);
        View view = null;
        View inflate = alertController.f309h != null ? alertController.f309h : alertController.f310i != 0 ? LayoutInflater.from(alertController.f302a).inflate(alertController.f310i, viewGroup, false) : null;
        boolean z2 = inflate != null;
        if (!z2 || !AlertController.m46365a(inflate)) {
            alertController.f304c.setFlags(131072, 131072);
        }
        if (z2) {
            FrameLayout frameLayout = (FrameLayout) alertController.f304c.findViewById(C0142a.C0148f.custom);
            frameLayout.addView(inflate, new ViewGroup.LayoutParams(-1, -1));
            if (alertController.f315n) {
                frameLayout.setPadding(alertController.f311j, alertController.f312k, alertController.f313l, alertController.f314m);
            }
            if (alertController.f308g != null) {
                ((LinearLayoutCompat.LayoutParams) viewGroup.getLayoutParams()).f1237g = BitmapDescriptorFactory.HUE_RED;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View findViewById7 = viewGroup.findViewById(C0142a.C0148f.topPanel);
        View findViewById8 = viewGroup.findViewById(C0142a.C0148f.contentPanel);
        View findViewById9 = viewGroup.findViewById(C0142a.C0148f.buttonPanel);
        ViewGroup m46364a = AlertController.m46364a(findViewById7, findViewById4);
        ViewGroup m46364a2 = AlertController.m46364a(findViewById8, findViewById5);
        ViewGroup m46364a3 = AlertController.m46364a(findViewById9, findViewById6);
        alertController.f283A = (NestedScrollView) alertController.f304c.findViewById(C0142a.C0148f.scrollView);
        alertController.f283A.setFocusable(false);
        alertController.f283A.setNestedScrollingEnabled(false);
        alertController.f288F = (TextView) m46364a2.findViewById(16908299);
        if (alertController.f288F != null) {
            if (alertController.f307f != null) {
                alertController.f288F.setText(alertController.f307f);
            } else {
                alertController.f288F.setVisibility(8);
                alertController.f283A.removeView(alertController.f288F);
                if (alertController.f308g != null) {
                    ViewGroup viewGroup2 = (ViewGroup) alertController.f283A.getParent();
                    int indexOfChild = viewGroup2.indexOfChild(alertController.f283A);
                    viewGroup2.removeViewAt(indexOfChild);
                    viewGroup2.addView(alertController.f308g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    m46364a2.setVisibility(8);
                }
            }
        }
        alertController.f316o = (Button) m46364a3.findViewById(16908313);
        alertController.f316o.setOnClickListener(alertController.f301S);
        if (!TextUtils.isEmpty(alertController.f317p) || alertController.f319r != null) {
            alertController.f316o.setText(alertController.f317p);
            if (alertController.f319r != null) {
                alertController.f319r.setBounds(0, 0, alertController.f305d, alertController.f305d);
                alertController.f316o.setCompoundDrawables(alertController.f319r, null, null, null);
            }
            alertController.f316o.setVisibility(0);
            z = true;
        } else {
            alertController.f316o.setVisibility(8);
            z = false;
        }
        alertController.f320s = (Button) m46364a3.findViewById(16908314);
        alertController.f320s.setOnClickListener(alertController.f301S);
        if (!TextUtils.isEmpty(alertController.f321t) || alertController.f323v != null) {
            alertController.f320s.setText(alertController.f321t);
            if (alertController.f323v != null) {
                alertController.f323v.setBounds(0, 0, alertController.f305d, alertController.f305d);
                alertController.f320s.setCompoundDrawables(alertController.f323v, null, null, null);
            }
            alertController.f320s.setVisibility(0);
            z |= true;
        } else {
            alertController.f320s.setVisibility(8);
        }
        alertController.f324w = (Button) m46364a3.findViewById(16908315);
        alertController.f324w.setOnClickListener(alertController.f301S);
        if (!TextUtils.isEmpty(alertController.f325x) || alertController.f327z != null) {
            alertController.f324w.setText(alertController.f325x);
            if (alertController.f327z != null) {
                alertController.f327z.setBounds(0, 0, alertController.f305d, alertController.f305d);
                alertController.f324w.setCompoundDrawables(alertController.f327z, null, null, null);
            }
            alertController.f324w.setVisibility(0);
            z |= true;
        } else {
            alertController.f324w.setVisibility(8);
        }
        Context context = alertController.f302a;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C0142a.C0143a.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (z) {
                AlertController.m46362a(alertController.f316o);
            } else if (z) {
                AlertController.m46362a(alertController.f320s);
            } else if (z) {
                AlertController.m46362a(alertController.f324w);
            }
        }
        if (!(z)) {
            m46364a3.setVisibility(8);
        }
        if (alertController.f289G != null) {
            m46364a.addView(alertController.f289G, 0, new ViewGroup.LayoutParams(-1, -2));
            alertController.f304c.findViewById(C0142a.C0148f.title_template).setVisibility(8);
        } else {
            alertController.f286D = (ImageView) alertController.f304c.findViewById(16908294);
            if (!(!TextUtils.isEmpty(alertController.f306e)) || !alertController.f298P) {
                alertController.f304c.findViewById(C0142a.C0148f.title_template).setVisibility(8);
                alertController.f286D.setVisibility(8);
                m46364a.setVisibility(8);
            } else {
                alertController.f287E = (TextView) alertController.f304c.findViewById(C0142a.C0148f.alertTitle);
                alertController.f287E.setText(alertController.f306e);
                if (alertController.f284B != 0) {
                    alertController.f286D.setImageResource(alertController.f284B);
                } else if (alertController.f285C != null) {
                    alertController.f286D.setImageDrawable(alertController.f285C);
                } else {
                    alertController.f287E.setPadding(alertController.f286D.getPaddingLeft(), alertController.f286D.getPaddingTop(), alertController.f286D.getPaddingRight(), alertController.f286D.getPaddingBottom());
                    alertController.f286D.setVisibility(8);
                }
            }
        }
        boolean z3 = (viewGroup == null || viewGroup.getVisibility() == 8) ? false : true;
        boolean z4 = (m46364a == null || m46364a.getVisibility() == 8) ? false : true;
        boolean z5 = (m46364a3 == null || m46364a3.getVisibility() == 8) ? false : true;
        if (!z5 && m46364a2 != null && (findViewById2 = m46364a2.findViewById(C0142a.C0148f.textSpacerNoButtons)) != null) {
            findViewById2.setVisibility(0);
        }
        if (z4) {
            if (alertController.f283A != null) {
                alertController.f283A.setClipToPadding(true);
            }
            View findViewById10 = (alertController.f307f == null && alertController.f308g == null) ? null : m46364a.findViewById(C0142a.C0148f.titleDividerNoCustom);
            if (findViewById10 != null) {
                findViewById10.setVisibility(0);
            }
        } else if (m46364a2 != null && (findViewById = m46364a2.findViewById(C0142a.C0148f.textSpacerNoTitle)) != null) {
            findViewById.setVisibility(0);
        }
        if (alertController.f308g instanceof AlertController.RecycleListView) {
            ((AlertController.RecycleListView) alertController.f308g).setHasDecor(z4, z5);
        }
        if (!z3) {
            ListView listView = alertController.f308g != null ? alertController.f308g : alertController.f283A;
            if (listView != null) {
                int i = 0;
                if (z5) {
                    i = 2;
                }
                int i2 = z4 | i;
                View findViewById11 = alertController.f304c.findViewById(C0142a.C0148f.scrollIndicatorUp);
                View findViewById12 = alertController.f304c.findViewById(C0142a.C0148f.scrollIndicatorDown);
                if (Build.VERSION.SDK_INT >= 23) {
                    C0926v.m44136a(listView, i2, 3);
                    if (findViewById11 != null) {
                        m46364a2.removeView(findViewById11);
                    }
                    if (findViewById12 != null) {
                        m46364a2.removeView(findViewById12);
                    }
                } else {
                    View view2 = findViewById11;
                    if (findViewById11 != null) {
                        view2 = findViewById11;
                        if ((i2 & 1) == 0) {
                            m46364a2.removeView(findViewById11);
                            view2 = null;
                        }
                    }
                    if (findViewById12 == null || (i2 & 2) != 0) {
                        view = findViewById12;
                    } else {
                        m46364a2.removeView(findViewById12);
                    }
                    if (view2 != null || view != null) {
                        if (alertController.f307f != null) {
                            final View view3 = view2;
                            final View view4 = view;
                            alertController.f283A.setOnScrollChangeListener(new NestedScrollView.AbstractC0949b() { // from class: androidx.appcompat.app.AlertController.2
                                @Override // androidx.core.widget.NestedScrollView.AbstractC0949b
                                /* renamed from: a */
                                public final void mo43996a(NestedScrollView nestedScrollView) {
                                    AlertController.m46363a(nestedScrollView, view3, view4);
                                }
                            });
                            final View view5 = view2;
                            final View view6 = view;
                            alertController.f283A.post(new Runnable() { // from class: androidx.appcompat.app.AlertController.3
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AlertController.m46363a(alertController.f283A, view5, view6);
                                }
                            });
                        } else if (alertController.f308g != null) {
                            final View view7 = view2;
                            final View view8 = view;
                            alertController.f308g.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: androidx.appcompat.app.AlertController.4
                                @Override // android.widget.AbsListView.OnScrollListener
                                public final void onScroll(AbsListView absListView, int i3, int i4, int i5) {
                                    AlertController.m46363a(absListView, view7, view8);
                                }

                                @Override // android.widget.AbsListView.OnScrollListener
                                public final void onScrollStateChanged(AbsListView absListView, int i3) {
                                }
                            });
                            final View view9 = view2;
                            final View view10 = view;
                            alertController.f308g.post(new Runnable() { // from class: androidx.appcompat.app.AlertController.5
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AlertController.m46363a(alertController.f308g, view9, view10);
                                }
                            });
                        } else {
                            if (view2 != null) {
                                m46364a2.removeView(view2);
                            }
                            if (view != null) {
                                m46364a2.removeView(view);
                            }
                        }
                    }
                }
            }
        }
        ListView listView2 = alertController.f308g;
        if (listView2 == null || alertController.f290H == null) {
            return;
        }
        listView2.setAdapter(alertController.f290H);
        int i3 = alertController.f291I;
        if (i3 < 0) {
            return;
        }
        listView2.setItemChecked(i3, true);
        listView2.setSelection(i3);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        AlertController alertController = this.f514a;
        if (alertController.f283A != null && alertController.f283A.m44026a(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        AlertController alertController = this.f514a;
        if (alertController.f283A != null && alertController.f283A.m44026a(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // androidx.appcompat.app.DialogC0200f, android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f514a.m46361a(charSequence);
    }
}
