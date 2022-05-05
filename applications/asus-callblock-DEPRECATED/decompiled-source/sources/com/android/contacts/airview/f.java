package com.android.contacts.airview;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListPopupWindow;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.uservoice.uservoicesdk.d;
/* loaded from: classes-dex2jar.jar:com/android/contacts/airview/f.class */
public final class f {
    private Drawable A;

    /* renamed from: a  reason: collision with root package name */
    Context f557a;

    /* renamed from: b  reason: collision with root package name */
    Object f558b;
    int c;
    View d;
    Object e;
    LinearLayout f;
    Drawable g;
    float h;
    float i;
    DisplayMetrics j;
    float k;
    float l;
    float m;
    float n;
    float o;
    float p;
    int q;
    c s;
    b t;
    int y;
    int r = 0;
    GuideLinePopup u = null;
    boolean v = false;
    int w = -1;
    int x = -1;
    Handler z = new Handler() { // from class: com.android.contacts.airview.f.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i;
            float f;
            float f2;
            switch (message.what) {
                case 0:
                    f fVar = f.this;
                    Object obj = f.this.e;
                    int i2 = f.this.c;
                    View view = f.this.d;
                    fVar.r = 0;
                    switch (i2) {
                        case 0:
                            com.android.contacts.airview.c[] cVarArr = (com.android.contacts.airview.c[]) obj;
                            if (cVarArr != null) {
                                a aVar = new a(fVar.f557a, cVarArr);
                                fVar.t.dismiss();
                                fVar.t.setBackgroundDrawable(fVar.g);
                                fVar.t.setAnchorView(view);
                                fVar.t.setAdapter(aVar);
                                fVar.r = cVarArr.length;
                                switch (fVar.r) {
                                    case 0:
                                        f2 = 0.0f;
                                        break;
                                    case 1:
                                        f2 = (float) (fVar.l * 1.3d);
                                        break;
                                    case 2:
                                        f2 = (float) (fVar.l * 2.3d);
                                        break;
                                    case 3:
                                        f2 = (float) (fVar.l * 3.2d);
                                        break;
                                    default:
                                        f2 = (float) (fVar.l * 3.7d);
                                        break;
                                }
                                fVar.t.setHeight((int) f2);
                                fVar.t.setWidth((int) fVar.m);
                                fVar.t.setVerticalOffset((int) fVar.p);
                                fVar.t.setHorizontalOffset((int) fVar.o);
                                fVar.w = (((int) fVar.m) / 2) + ((int) fVar.o);
                                int measuredHeight = view.getMeasuredHeight();
                                int[] iArr = new int[2];
                                view.getLocationInWindow(iArr);
                                int i3 = measuredHeight + iArr[1] + ((int) fVar.p) + fVar.y;
                                if (i3 > fVar.j.heightPixels - f2) {
                                    fVar.x = (iArr[1] - ((int) fVar.p)) - fVar.y;
                                } else {
                                    fVar.x = i3;
                                }
                                fVar.v = true;
                                fVar.t.show();
                                fVar.t.f562a = true;
                                return;
                            }
                            return;
                        case 1:
                        case 2:
                            TextView textView = (TextView) fVar.f.findViewById(2131297175);
                            TextView textView2 = (TextView) fVar.f.findViewById(2131297172);
                            com.android.contacts.airview.d dVar = (com.android.contacts.airview.d) obj;
                            String str = dVar.f554b == -1 ? dVar.c + ", " + fVar.f557a.getString(2131756056) : dVar.c + ",  " + String.format(fVar.f557a.getString(2131755187), Integer.valueOf(dVar.f554b));
                            textView.setText(dVar.f553a);
                            textView2.setText(str);
                            fVar.s.dismiss();
                            fVar.s.setBackgroundDrawable(fVar.g);
                            fVar.s.setContentView(fVar.f);
                            c cVar = fVar.s;
                            View contentView = cVar.getContentView();
                            Drawable background = cVar.getBackground();
                            Rect rect = new Rect();
                            background.getPadding(rect);
                            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                            contentView.measure(makeMeasureSpec, makeMeasureSpec);
                            int measuredWidth = rect.right + contentView.getMeasuredWidth() + rect.left;
                            int measuredHeight2 = contentView.getMeasuredHeight() + rect.top + rect.bottom;
                            cVar.setWidth(measuredWidth);
                            cVar.setHeight(measuredHeight2);
                            int measuredHeight3 = view.getMeasuredHeight();
                            view.getMeasuredWidth();
                            int[] iArr2 = new int[2];
                            view.getLocationInWindow(iArr2);
                            int i4 = 0;
                            DisplayMetrics displayMetrics = cVar.f564a.getResources().getDisplayMetrics();
                            int i5 = displayMetrics.widthPixels;
                            switch (i2) {
                                case 1:
                                    int i6 = (iArr2[1] + measuredHeight3) - cVar.f565b;
                                    i4 = i6;
                                    if (i6 > displayMetrics.heightPixels - measuredHeight2) {
                                        i4 = i6 - measuredHeight2;
                                    }
                                    i = (int) f.this.o;
                                    break;
                                case 2:
                                    int i7 = ((float) measuredHeight3) / f.this.k > 250.0f ? ((iArr2[1] + measuredHeight3) - measuredHeight2) - (cVar.f565b * 3) : (iArr2[1] + measuredHeight3) - cVar.c;
                                    int i8 = i7;
                                    if (i7 > displayMetrics.heightPixels - measuredHeight2) {
                                        i8 = i7 - measuredHeight2;
                                    }
                                    switch (iArr2[0] / (i5 / cVar.e)) {
                                        case 0:
                                            i = f.this.q;
                                            i4 = i8;
                                            break;
                                        case 1:
                                            i = (i5 - measuredWidth) / 2;
                                            i4 = i8;
                                            break;
                                        case 2:
                                            i = (i5 - measuredWidth) - f.this.q;
                                            i4 = i8;
                                            break;
                                        default:
                                            i4 = i8;
                                            i = 0;
                                            break;
                                    }
                                default:
                                    i = 0;
                                    break;
                            }
                            f.this.w = (measuredWidth / 2) + i;
                            f.this.x = i4 + 12;
                            f.this.v = true;
                            cVar.showAtLocation(view, 0, i, i4);
                            fVar.s.d = true;
                            return;
                        case 3:
                            e[] eVarArr = (e[]) obj;
                            if (eVarArr != null) {
                                d dVar2 = new d(fVar.f557a, eVarArr);
                                fVar.t.dismiss();
                                fVar.t.setBackgroundDrawable(fVar.g);
                                fVar.t.setAnchorView(view);
                                fVar.t.setAdapter(dVar2);
                                fVar.r = eVarArr.length;
                                switch (fVar.r) {
                                    case 0:
                                        f = 0.0f;
                                        break;
                                    case 1:
                                        f = (float) (fVar.l * 1.3d);
                                        break;
                                    case 2:
                                        f = (float) (fVar.l * 2.3d);
                                        break;
                                    case 3:
                                        f = (float) (fVar.l * 3.2d);
                                        break;
                                    default:
                                        f = (float) (fVar.l * 3.7d);
                                        break;
                                }
                                fVar.t.setHeight((int) f);
                                fVar.t.setWidth((int) fVar.n);
                                fVar.t.setVerticalOffset((int) fVar.p);
                                fVar.w = (((int) fVar.n) / 2) + fVar.q;
                                int measuredHeight4 = view.getMeasuredHeight();
                                int[] iArr3 = new int[2];
                                view.getLocationInWindow(iArr3);
                                int i9 = measuredHeight4 + iArr3[1] + ((int) fVar.p) + fVar.y;
                                if (i9 > fVar.j.heightPixels - f) {
                                    fVar.x = (iArr3[1] - ((int) fVar.p)) - fVar.y;
                                } else {
                                    fVar.x = i9;
                                }
                                fVar.v = true;
                                fVar.t.show();
                                fVar.t.f562a = true;
                                return;
                            }
                            return;
                        default:
                            return;
                    }
                default:
                    return;
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/android/contacts/airview/f$a.class */
    final class a extends ArrayAdapter<com.android.contacts.airview.c> {

        /* renamed from: b  reason: collision with root package name */
        private com.android.contacts.airview.c[] f561b;

        public a(Context context, com.android.contacts.airview.c[] cVarArr) {
            super(context, 2131427346, cVarArr);
            this.f561b = cVarArr;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                view2 = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(2131427346, (ViewGroup) null);
            }
            com.android.contacts.airview.c cVar = this.f561b[i];
            if (cVar != null) {
                TextView textView = (TextView) view2.findViewById(d.b.g);
                TextView textView2 = (TextView) view2.findViewById(2131297128);
                TextView textView3 = (TextView) view2.findViewById(2131296464);
                TextView textView4 = (TextView) view2.findViewById(2131296439);
                ImageView imageView = (ImageView) view2.findViewById(2131296489);
                textView.setText(cVar.f552b);
                textView2.setText(cVar.c);
                textView3.setText(cVar.d);
                textView4.setText(cVar.e);
                switch (cVar.f) {
                    case 1:
                        imageView.setImageResource(2131165323);
                        break;
                    case 2:
                        imageView.setImageResource(2131165325);
                        break;
                    case 3:
                        imageView.setImageResource(2131165324);
                        break;
                }
            }
            return view2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/airview/f$b.class */
    public final class b extends ListPopupWindow {

        /* renamed from: a  reason: collision with root package name */
        boolean f562a = false;

        public b(Context context) {
            super(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/airview/f$c.class */
    public final class c extends PopupWindow {

        /* renamed from: a  reason: collision with root package name */
        Context f564a;

        /* renamed from: b  reason: collision with root package name */
        int f565b;
        int c;
        boolean d = false;
        int e;
        private int g;

        public c(Context context) {
            super(context);
            this.e = 0;
            this.f564a = context;
            this.g = this.f564a.getResources().getDimensionPixelSize(2131099683);
            this.f565b = this.f564a.getResources().getDimensionPixelSize(2131099684);
            this.c = this.f564a.getResources().getDimensionPixelSize(2131099679);
            this.e = this.f564a.getResources().getInteger(2131361812);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/airview/f$d.class */
    final class d extends ArrayAdapter<e> {

        /* renamed from: b  reason: collision with root package name */
        private e[] f567b;

        public d(Context context, e[] eVarArr) {
            super(context, 2131427346, eVarArr);
            this.f567b = eVarArr;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final View getView(int i, View view, ViewGroup viewGroup) {
            View view2 = view;
            if (view == null) {
                view2 = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(2131427346, (ViewGroup) null);
            }
            e eVar = this.f567b[i];
            if (eVar != null) {
                ((TextView) view2.findViewById(d.b.g)).setText(eVar.f555a);
                ((TextView) view2.findViewById(2131297128)).setText(eVar.f556b);
            }
            return view2;
        }
    }

    public f(Context context) {
        this.f = null;
        this.g = null;
        this.A = null;
        this.q = 0;
        this.s = null;
        this.t = null;
        this.y = 0;
        this.f557a = context;
        this.t = new b(context);
        this.s = new c(context);
        this.s.setWindowLayoutMode(-2, -2);
        this.s.setTouchable(false);
        this.s.setClippingEnabled(false);
        this.g = context.getResources().getDrawable(2131165197);
        this.A = context.getResources().getDrawable(2131165196);
        this.f = (LinearLayout) LayoutInflater.from(context).inflate(2131427347, (ViewGroup) null);
        this.s.setBackgroundDrawable(this.g);
        this.j = this.f557a.getResources().getDisplayMetrics();
        this.k = this.j.density;
        this.l = this.f557a.getResources().getDimension(2131099676);
        this.m = this.f557a.getResources().getDimension(2131099677);
        this.o = this.f557a.getResources().getDimension(2131099678);
        this.p = this.f557a.getResources().getDimension(2131099681);
        this.n = this.f557a.getResources().getDimension(2131099680);
        this.q = this.f557a.getResources().getDimensionPixelSize(2131099682);
        this.y = this.f557a.getResources().getDimensionPixelSize(2131099675);
    }
}
