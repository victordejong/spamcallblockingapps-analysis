package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
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
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.widget.NestedScrollView;
import java.util.Objects;
import java.util.WeakHashMap;
import me.zhanghai.android.materialprogressbar.C3681R;
import p086f.C2645d;
import p086f.C2647f;
import p086f.DialogC2674r;
import p086f.RunnableC2646e;
import p086f.RunnableC2648g;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: androidx.appcompat.app.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/b.class */
public class DialogC0122b extends DialogC2674r {

    /* renamed from: c */
    public final AlertController f333c = new AlertController(getContext(), this, getWindow());

    /* renamed from: androidx.appcompat.app.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/b$a.class */
    public static class C0123a {

        /* renamed from: a */
        public final AlertController.C0118b f334a;

        /* renamed from: b */
        public final int f335b;

        public C0123a(Context context) {
            int m8727d = DialogC0122b.m8727d(context, 0);
            this.f334a = new AlertController.C0118b(new ContextThemeWrapper(context, DialogC0122b.m8727d(context, m8727d)));
            this.f335b = m8727d;
        }

        public C0123a(Context context, int i) {
            this.f334a = new AlertController.C0118b(new ContextThemeWrapper(context, DialogC0122b.m8727d(context, i)));
            this.f335b = i;
        }

        /* renamed from: a */
        public DialogC0122b m8726a() {
            DialogC0122b dialogC0122b = new DialogC0122b(this.f334a.f317a, this.f335b);
            AlertController.C0118b c0118b = this.f334a;
            AlertController alertController = dialogC0122b.f333c;
            View view = c0118b.f321e;
            if (view != null) {
                alertController.f276G = view;
            } else {
                CharSequence charSequence = c0118b.f320d;
                if (charSequence != null) {
                    alertController.f292e = charSequence;
                    TextView textView = alertController.f274E;
                    if (textView != null) {
                        textView.setText(charSequence);
                    }
                }
                Drawable drawable = c0118b.f319c;
                if (drawable != null) {
                    alertController.f272C = drawable;
                    alertController.f271B = 0;
                    ImageView imageView = alertController.f273D;
                    if (imageView != null) {
                        imageView.setVisibility(0);
                        alertController.f273D.setImageDrawable(drawable);
                    }
                }
            }
            CharSequence charSequence2 = c0118b.f322f;
            if (charSequence2 != null) {
                alertController.m8728e(-1, charSequence2, c0118b.f323g, null, null);
            }
            if (c0118b.f325i != null) {
                AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) c0118b.f318b.inflate(alertController.f281L, (ViewGroup) null);
                int i = c0118b.f328l ? alertController.f283N : alertController.f284O;
                AlertController.C0120d c0120d = c0118b.f325i;
                if (c0120d == null) {
                    c0120d = new AlertController.C0120d(c0118b.f317a, i, 16908308, null);
                }
                alertController.f277H = c0120d;
                alertController.f278I = c0118b.f329m;
                if (c0118b.f326j != null) {
                    recycleListView.setOnItemClickListener(new C0121a(c0118b, alertController));
                }
                if (c0118b.f328l) {
                    recycleListView.setChoiceMode(1);
                }
                alertController.f294g = recycleListView;
            }
            int i2 = c0118b.f327k;
            if (i2 != 0) {
                alertController.f295h = null;
                alertController.f296i = i2;
                alertController.f301n = false;
            }
            Objects.requireNonNull(this.f334a);
            dialogC0122b.setCancelable(true);
            Objects.requireNonNull(this.f334a);
            dialogC0122b.setCanceledOnTouchOutside(true);
            Objects.requireNonNull(this.f334a);
            dialogC0122b.setOnCancelListener(null);
            Objects.requireNonNull(this.f334a);
            dialogC0122b.setOnDismissListener(null);
            DialogInterface.OnKeyListener onKeyListener = this.f334a.f324h;
            if (onKeyListener != null) {
                dialogC0122b.setOnKeyListener(onKeyListener);
            }
            return dialogC0122b;
        }
    }

    public DialogC0122b(Context context, int i) {
        super(context, m8727d(context, i));
    }

    /* renamed from: d */
    public static int m8727d(Context context, int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C3681R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // p086f.DialogC2674r, android.app.Dialog
    public void onCreate(Bundle bundle) {
        boolean z;
        ListAdapter listAdapter;
        View findViewById;
        super.onCreate(bundle);
        AlertController alertController = this.f333c;
        alertController.f289b.setContentView(alertController.f280K == 0 ? alertController.f279J : alertController.f279J);
        View findViewById2 = alertController.f290c.findViewById(C3681R.C3684id.parentPanel);
        View findViewById3 = findViewById2.findViewById(C3681R.C3684id.topPanel);
        View findViewById4 = findViewById2.findViewById(C3681R.C3684id.contentPanel);
        View findViewById5 = findViewById2.findViewById(C3681R.C3684id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById2.findViewById(C3681R.C3684id.customPanel);
        View view = alertController.f295h;
        if (view == null) {
            view = alertController.f296i != 0 ? LayoutInflater.from(alertController.f288a).inflate(alertController.f296i, viewGroup, false) : null;
        }
        boolean z2 = view != null;
        if (!z2 || !AlertController.m8732a(view)) {
            alertController.f290c.setFlags(131072, 131072);
        }
        if (z2) {
            FrameLayout frameLayout = (FrameLayout) alertController.f290c.findViewById(C3681R.C3684id.custom);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (alertController.f301n) {
                frameLayout.setPadding(alertController.f297j, alertController.f298k, alertController.f299l, alertController.f300m);
            }
            if (alertController.f294g != null) {
                ((LinearLayout.LayoutParams) ((LinearLayoutCompat.C0164a) viewGroup.getLayoutParams())).weight = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View findViewById6 = viewGroup.findViewById(C3681R.C3684id.topPanel);
        View findViewById7 = viewGroup.findViewById(C3681R.C3684id.contentPanel);
        View findViewById8 = viewGroup.findViewById(C3681R.C3684id.buttonPanel);
        ViewGroup m8729d = alertController.m8729d(findViewById6, findViewById3);
        ViewGroup m8729d2 = alertController.m8729d(findViewById7, findViewById4);
        ViewGroup m8729d3 = alertController.m8729d(findViewById8, findViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) alertController.f290c.findViewById(C3681R.C3684id.scrollView);
        alertController.f270A = nestedScrollView;
        nestedScrollView.setFocusable(false);
        alertController.f270A.setNestedScrollingEnabled(false);
        TextView textView = (TextView) m8729d2.findViewById(16908299);
        alertController.f275F = textView;
        if (textView != null) {
            CharSequence charSequence = alertController.f293f;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                alertController.f270A.removeView(alertController.f275F);
                if (alertController.f294g != null) {
                    ViewGroup viewGroup2 = (ViewGroup) alertController.f270A.getParent();
                    int indexOfChild = viewGroup2.indexOfChild(alertController.f270A);
                    viewGroup2.removeViewAt(indexOfChild);
                    viewGroup2.addView(alertController.f294g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    m8729d2.setVisibility(8);
                }
            }
        }
        Button button = (Button) m8729d3.findViewById(16908313);
        alertController.f302o = button;
        button.setOnClickListener(alertController.f287R);
        if (!TextUtils.isEmpty(alertController.f303p) || alertController.f305r != null) {
            alertController.f302o.setText(alertController.f303p);
            Drawable drawable = alertController.f305r;
            if (drawable != null) {
                int i = alertController.f291d;
                drawable.setBounds(0, 0, i, i);
                alertController.f302o.setCompoundDrawables(alertController.f305r, null, null, null);
            }
            alertController.f302o.setVisibility(0);
            z = true;
        } else {
            alertController.f302o.setVisibility(8);
            z = false;
        }
        Button button2 = (Button) m8729d3.findViewById(16908314);
        alertController.f306s = button2;
        button2.setOnClickListener(alertController.f287R);
        if (!TextUtils.isEmpty(alertController.f307t) || alertController.f309v != null) {
            alertController.f306s.setText(alertController.f307t);
            Drawable drawable2 = alertController.f309v;
            if (drawable2 != null) {
                int i2 = alertController.f291d;
                drawable2.setBounds(0, 0, i2, i2);
                alertController.f306s.setCompoundDrawables(alertController.f309v, null, null, null);
            }
            alertController.f306s.setVisibility(0);
            z |= true;
        } else {
            alertController.f306s.setVisibility(8);
        }
        Button button3 = (Button) m8729d3.findViewById(16908315);
        alertController.f310w = button3;
        button3.setOnClickListener(alertController.f287R);
        if (!TextUtils.isEmpty(alertController.f311x) || alertController.f313z != null) {
            alertController.f310w.setText(alertController.f311x);
            Drawable drawable3 = alertController.f313z;
            if (drawable3 != null) {
                int i3 = alertController.f291d;
                drawable3.setBounds(0, 0, i3, i3);
                alertController.f310w.setCompoundDrawables(alertController.f313z, null, null, null);
            }
            alertController.f310w.setVisibility(0);
            z |= true;
        } else {
            alertController.f310w.setVisibility(8);
        }
        Context context = alertController.f288a;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(C3681R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (z) {
                alertController.m8731b(alertController.f302o);
            } else if (z) {
                alertController.m8731b(alertController.f306s);
            } else if (z) {
                alertController.m8731b(alertController.f310w);
            }
        }
        if (!(z)) {
            m8729d3.setVisibility(8);
        }
        if (alertController.f276G != null) {
            m8729d.addView(alertController.f276G, 0, new ViewGroup.LayoutParams(-1, -2));
            alertController.f290c.findViewById(C3681R.C3684id.title_template).setVisibility(8);
        } else {
            alertController.f273D = (ImageView) alertController.f290c.findViewById(16908294);
            if (!(!TextUtils.isEmpty(alertController.f292e)) || !alertController.f285P) {
                alertController.f290c.findViewById(C3681R.C3684id.title_template).setVisibility(8);
                alertController.f273D.setVisibility(8);
                m8729d.setVisibility(8);
            } else {
                TextView textView2 = (TextView) alertController.f290c.findViewById(C3681R.C3684id.alertTitle);
                alertController.f274E = textView2;
                textView2.setText(alertController.f292e);
                int i4 = alertController.f271B;
                if (i4 != 0) {
                    alertController.f273D.setImageResource(i4);
                } else {
                    Drawable drawable4 = alertController.f272C;
                    if (drawable4 != null) {
                        alertController.f273D.setImageDrawable(drawable4);
                    } else {
                        alertController.f274E.setPadding(alertController.f273D.getPaddingLeft(), alertController.f273D.getPaddingTop(), alertController.f273D.getPaddingRight(), alertController.f273D.getPaddingBottom());
                        alertController.f273D.setVisibility(8);
                    }
                }
            }
        }
        boolean z3 = viewGroup.getVisibility() != 8;
        int i5 = (m8729d == null || m8729d.getVisibility() == 8) ? 0 : 1;
        boolean z4 = m8729d3.getVisibility() != 8;
        if (!z4 && (findViewById = m8729d2.findViewById(C3681R.C3684id.textSpacerNoButtons)) != null) {
            findViewById.setVisibility(0);
        }
        if (i5 != 0) {
            NestedScrollView nestedScrollView2 = alertController.f270A;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View findViewById9 = (alertController.f293f == null && alertController.f294g == null) ? null : m8729d.findViewById(C3681R.C3684id.titleDividerNoCustom);
            if (findViewById9 != null) {
                findViewById9.setVisibility(0);
            }
        } else {
            View findViewById10 = m8729d2.findViewById(C3681R.C3684id.textSpacerNoTitle);
            if (findViewById10 != null) {
                findViewById10.setVisibility(0);
            }
        }
        ListView listView = alertController.f294g;
        if (listView instanceof AlertController.RecycleListView) {
            AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) listView;
            Objects.requireNonNull(recycleListView);
            if (!z4 || i5 == 0) {
                recycleListView.setPadding(recycleListView.getPaddingLeft(), i5 != 0 ? recycleListView.getPaddingTop() : recycleListView.f314a, recycleListView.getPaddingRight(), z4 ? recycleListView.getPaddingBottom() : recycleListView.f315b);
            }
        }
        if (!z3) {
            ViewGroup viewGroup3 = alertController.f294g;
            if (viewGroup3 == null) {
                viewGroup3 = alertController.f270A;
            }
            if (viewGroup3 != null) {
                int i6 = 0;
                if (z4) {
                    i6 = 2;
                }
                int i7 = i5 | i6;
                View findViewById11 = alertController.f290c.findViewById(C3681R.C3684id.scrollIndicatorUp);
                View findViewById12 = alertController.f290c.findViewById(C3681R.C3684id.scrollIndicatorDown);
                int i8 = Build.VERSION.SDK_INT;
                if (i8 >= 23) {
                    WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
                    if (i8 >= 23) {
                        C3589v.C3600j.m2021d(viewGroup3, i7, 3);
                    }
                    if (findViewById11 != null) {
                        m8729d2.removeView(findViewById11);
                    }
                    if (findViewById12 != null) {
                        m8729d2.removeView(findViewById12);
                    }
                } else {
                    View view2 = findViewById11;
                    if (findViewById11 != null) {
                        view2 = findViewById11;
                        if ((i7 & 1) == 0) {
                            m8729d2.removeView(findViewById11);
                            view2 = null;
                        }
                    }
                    if (findViewById12 != null && (i7 & 2) == 0) {
                        m8729d2.removeView(findViewById12);
                        findViewById12 = null;
                    }
                    if (view2 != null || findViewById12 != null) {
                        if (alertController.f293f != null) {
                            alertController.f270A.setOnScrollChangeListener(new C2645d(alertController, view2, findViewById12));
                            alertController.f270A.post(new RunnableC2646e(alertController, view2, findViewById12));
                        } else {
                            ListView listView2 = alertController.f294g;
                            if (listView2 != null) {
                                listView2.setOnScrollListener(new C2647f(alertController, view2, findViewById12));
                                alertController.f294g.post(new RunnableC2648g(alertController, view2, findViewById12));
                            } else {
                                if (view2 != null) {
                                    m8729d2.removeView(view2);
                                }
                                if (findViewById12 != null) {
                                    m8729d2.removeView(findViewById12);
                                }
                            }
                        }
                    }
                }
            }
        }
        ListView listView3 = alertController.f294g;
        if (listView3 == null || (listAdapter = alertController.f277H) == null) {
            return;
        }
        listView3.setAdapter(listAdapter);
        int i9 = alertController.f278I;
        if (i9 <= -1) {
            return;
        }
        listView3.setItemChecked(i9, true);
        listView3.setSelection(i9);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f333c.f270A;
        if (nestedScrollView != null && nestedScrollView.m8303g(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f333c.f270A;
        if (nestedScrollView != null && nestedScrollView.m8303g(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // p086f.DialogC2674r, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        AlertController alertController = this.f333c;
        alertController.f292e = charSequence;
        TextView textView = alertController.f274E;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
