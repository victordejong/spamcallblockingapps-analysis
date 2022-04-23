package com.android.contacts.fastscroll;

import android.app.Fragment;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.DragEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.widget.AbsListView;
import android.widget.Adapter;
import android.widget.HeaderViewListAdapter;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.SectionIndexer;
import com.android.contacts.ezmode.h;
import com.android.contacts.list.AsusPinnedHeaderListView;
import com.android.contacts.list.o;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.vcard.VCardConstants;
import com.asus.updatesdk.BuildConfig;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/android/contacts/fastscroll/AlphabetFastScroll.class */
public class AlphabetFastScroll extends View implements View.OnClickListener, Animation.AnimationListener {
    private LinearLayout A;
    private int B;
    private LayoutInflater C;
    private int D;
    private int E;
    private int F;
    private int G;
    private int H;
    private boolean I;
    private boolean J;
    private boolean K;
    private boolean L;
    private boolean M;
    private int N;
    private Rect[] O;
    private boolean[] P;
    private Rect Q;
    private Rect R;
    private boolean S;
    private a T;
    private int U;
    private boolean V;
    private boolean W;

    /* renamed from: a  reason: collision with root package name */
    private final String f1295a;
    private boolean aa;
    private com.asus.contacts.b ab;
    private Locale ac;

    /* renamed from: b  reason: collision with root package name */
    private String[] f1296b;
    private String[] c;
    private Rect[] d;
    private Rect[] e;
    private int f;
    private String i;
    private String j;
    private AbsListView k;
    private SectionIndexer l;
    private Object[] m;
    private String[] n;
    private String[] o;
    private int[] p;
    private int[] q;
    private int[] r;
    private int[] s;
    private int[] t;
    private String[] u;
    private int[] v;
    private int[] w;
    private int x;
    private PopupWindow y;
    private View z;
    private static int g = 0;
    private static int h = 0;
    private static final boolean ad = Build.TYPE.equals("userdebug");

    /* loaded from: classes-dex2jar.jar:com/android/contacts/fastscroll/AlphabetFastScroll$a.class */
    public interface a {
        void b(int i);

        void g_();
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/fastscroll/AlphabetFastScroll$b.class */
    final class b extends AsyncTask<Void, Void, Void> {

        /* renamed from: b  reason: collision with root package name */
        private String f1300b;
        private AsusPinnedHeaderListView c;

        public b(AsusPinnedHeaderListView asusPinnedHeaderListView, String str) {
            this.c = asusPinnedHeaderListView;
            this.f1300b = str;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Void doInBackground(Void[] voidArr) {
            SystemClock.sleep(1000L);
            return null;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Void r4) {
            super.onPostExecute(r4);
            if (this.c != null && !TextUtils.isEmpty(this.f1300b) && this.f1300b.equals(this.c.f1709a)) {
                this.c.a(BuildConfig.FLAVOR);
            }
            AlphabetFastScroll.this.aa = false;
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
            if (this.c != null && !TextUtils.isEmpty(this.f1300b)) {
                AlphabetFastScroll.this.aa = true;
                this.c.a(this.f1300b);
            }
        }
    }

    public AlphabetFastScroll(Context context) {
        super(context, null);
        this.f1295a = "AlphabetFastScroll";
        this.f1296b = new String[]{"#", "A", VCardConstants.PARAM_ENCODING_B, "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", VCardConstants.PROPERTY_N, "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};
        this.c = new String[2];
        this.d = new Rect[27];
        this.e = new Rect[2];
        this.f = 16;
        this.i = BuildConfig.FLAVOR;
        this.q = new int[4];
        this.r = new int[4];
        this.s = new int[4];
        this.t = new int[4];
        this.u = new String[4];
        this.B = 0;
        this.D = 0;
        this.I = false;
        this.J = false;
        this.K = false;
        this.L = false;
        this.M = false;
        this.O = new Rect[27];
        this.P = new boolean[27];
        this.Q = new Rect();
        this.R = new Rect();
        this.S = false;
        this.U = 0;
        this.V = false;
        this.W = false;
        this.aa = false;
        this.ac = Locale.getDefault();
    }

    public AlphabetFastScroll(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1295a = "AlphabetFastScroll";
        this.f1296b = new String[]{"#", "A", VCardConstants.PARAM_ENCODING_B, "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", VCardConstants.PROPERTY_N, "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};
        this.c = new String[2];
        this.d = new Rect[27];
        this.e = new Rect[2];
        this.f = 16;
        this.i = BuildConfig.FLAVOR;
        this.q = new int[4];
        this.r = new int[4];
        this.s = new int[4];
        this.t = new int[4];
        this.u = new String[4];
        this.B = 0;
        this.D = 0;
        this.I = false;
        this.J = false;
        this.K = false;
        this.L = false;
        this.M = false;
        this.O = new Rect[27];
        this.P = new boolean[27];
        this.Q = new Rect();
        this.R = new Rect();
        this.S = false;
        this.U = 0;
        this.V = false;
        this.W = false;
        this.aa = false;
        this.ac = Locale.getDefault();
        this.z = LayoutInflater.from(context).inflate(2131427372, (ViewGroup) null, false);
        this.A = (LinearLayout) this.z.findViewById(2131296826);
        this.z.setOnClickListener(this);
        setAlpha(1.0f);
        this.u[0] = (String) getContext().getResources().getText(2131756209);
        this.u[1] = (String) getContext().getResources().getText(2131756211);
        this.u[2] = (String) getContext().getResources().getText(2131756212);
        this.u[3] = (String) getContext().getResources().getText(2131756210);
        this.c[0] = (String) getContext().getResources().getText(2131755376);
        this.c[1] = (String) getContext().getResources().getText(2131755375);
        this.j = this.c[0] + this.c[1];
        if (ad) {
            Log.d("AlphabetFastScroll", "mChineseString:" + this.j);
        }
        this.J = PhoneCapabilityTester.isUsingTwoPanes(getContext());
        int dimensionPixelOffset = getContext().getResources().getDimensionPixelOffset(2131099707);
        this.E = dimensionPixelOffset * 6;
        this.F = dimensionPixelOffset * 4;
        this.G = dimensionPixelOffset * 6;
        this.H = dimensionPixelOffset * 4;
        Context context2 = getContext();
        getContext();
        this.N = ((WindowManager) context2.getSystemService("window")).getDefaultDisplay().getHeight();
        this.V = PhoneCapabilityTester.hasNavigationBar();
        this.W = h.a(context);
    }

    public AlphabetFastScroll(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1295a = "AlphabetFastScroll";
        this.f1296b = new String[]{"#", "A", VCardConstants.PARAM_ENCODING_B, "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", VCardConstants.PROPERTY_N, "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};
        this.c = new String[2];
        this.d = new Rect[27];
        this.e = new Rect[2];
        this.f = 16;
        this.i = BuildConfig.FLAVOR;
        this.q = new int[4];
        this.r = new int[4];
        this.s = new int[4];
        this.t = new int[4];
        this.u = new String[4];
        this.B = 0;
        this.D = 0;
        this.I = false;
        this.J = false;
        this.K = false;
        this.L = false;
        this.M = false;
        this.O = new Rect[27];
        this.P = new boolean[27];
        this.Q = new Rect();
        this.R = new Rect();
        this.S = false;
        this.U = 0;
        this.V = false;
        this.W = false;
        this.aa = false;
        this.ac = Locale.getDefault();
    }

    private int a(String str) {
        int i;
        boolean z = true;
        Object[] objArr = this.m;
        if (objArr != null && objArr.length > 1) {
            int length = objArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    i2 = 0;
                    z = false;
                    break;
                } else if (((String) objArr[i2]).equals(str)) {
                    break;
                } else {
                    i2++;
                }
            }
            if (z) {
                int positionForSection = this.l.getPositionForSection(i2);
                if (this.k instanceof ListView) {
                    ((ListView) this.k).setSelectionFromTop(this.x + positionForSection, 0);
                    if (this.J) {
                        ((ListView) this.k).getOnItemClickListener().onItemClick(null, null, positionForSection + this.x, 0L);
                    }
                }
                i = this.x + positionForSection;
                return i;
            }
        }
        i = -1;
        return i;
    }

    private void a() {
        if (this.k != null) {
            Adapter adapter = this.k.getAdapter();
            this.l = null;
            ListAdapter listAdapter = adapter;
            if (adapter instanceof HeaderViewListAdapter) {
                this.x = ((HeaderViewListAdapter) adapter).getHeadersCount();
                listAdapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            if ((listAdapter instanceof o) || (listAdapter instanceof com.android.contacts.list.b)) {
                if (listAdapter instanceof o) {
                    this.n = ((o) listAdapter).E;
                    this.v = ((o) listAdapter).F;
                    this.w = ((o) listAdapter).G;
                    this.l = (o) listAdapter;
                    this.m = this.l.getSections();
                }
                if (listAdapter instanceof com.android.contacts.list.b) {
                    this.n = ((com.android.contacts.list.b) listAdapter).f1793a.E;
                    this.v = ((com.android.contacts.list.b) listAdapter).f1793a.F;
                    this.w = ((com.android.contacts.list.b) listAdapter).f1793a.G;
                }
                if (this.n != null && this.v != null && this.w != null) {
                    int length = this.w.length;
                    int length2 = this.n.length;
                    String[] strArr = null;
                    int[] iArr = null;
                    String[] strArr2 = null;
                    int[] iArr2 = null;
                    String[] strArr3 = null;
                    int[] iArr3 = null;
                    String[] strArr4 = null;
                    int[] iArr4 = null;
                    for (int i = 0; i < 4; i++) {
                        this.r[i] = -1;
                        this.s[i] = -1;
                        this.t[i] = 0;
                        this.q[i] = 0;
                    }
                    for (int i2 = 0; i2 < 4; i2++) {
                        iArr4 = iArr4;
                        strArr4 = strArr4;
                        iArr3 = iArr3;
                        strArr3 = strArr3;
                        iArr2 = iArr2;
                        strArr2 = strArr2;
                        iArr = iArr;
                        strArr = strArr;
                        if (this.w[i2] != -1) {
                            this.r[i2] = this.w[i2];
                            this.s[i2] = 0;
                            int i3 = i2 + 1;
                            while (true) {
                                if (i3 >= length) {
                                    break;
                                } else if (this.w[i3] != -1) {
                                    this.s[i2] = this.w[i3] - this.w[i2];
                                    break;
                                } else {
                                    i3++;
                                }
                            }
                            if (this.s[i2] == 0) {
                                this.s[i2] = length2 - this.r[i2];
                            }
                            iArr4 = iArr4;
                            strArr4 = strArr4;
                            iArr3 = iArr3;
                            strArr3 = strArr3;
                            iArr2 = iArr2;
                            strArr2 = strArr2;
                            iArr = iArr;
                            strArr = strArr;
                            if (this.s[i2] > 0) {
                                if (i2 == 0) {
                                    String[] strArr5 = new String[this.s[i2]];
                                    int[] iArr5 = new int[this.s[i2]];
                                    System.arraycopy(this.n, this.r[i2], strArr5, 0, this.s[i2]);
                                    System.arraycopy(this.v, this.r[i2], iArr5, 0, this.s[i2]);
                                    int i4 = 0;
                                    while (true) {
                                        iArr4 = iArr4;
                                        strArr4 = strArr4;
                                        iArr3 = iArr3;
                                        strArr3 = strArr3;
                                        iArr2 = iArr2;
                                        strArr2 = strArr2;
                                        iArr = iArr5;
                                        strArr = strArr5;
                                        if (i4 < this.s[i2]) {
                                            int[] iArr6 = this.t;
                                            iArr6[i2] = iArr6[i2] + iArr5[i4];
                                            i4++;
                                        }
                                    }
                                } else if (i2 == 1) {
                                    String[] strArr6 = new String[this.s[i2]];
                                    System.arraycopy(this.n, this.r[i2], strArr6, 0, this.s[i2]);
                                    int[] iArr7 = new int[this.s[i2]];
                                    System.arraycopy(this.v, this.r[i2], iArr7, 0, this.s[i2]);
                                    int i5 = 0;
                                    while (true) {
                                        iArr4 = iArr4;
                                        strArr4 = strArr4;
                                        iArr3 = iArr3;
                                        strArr3 = strArr3;
                                        iArr2 = iArr7;
                                        strArr2 = strArr6;
                                        iArr = iArr;
                                        strArr = strArr;
                                        if (i5 < this.s[i2]) {
                                            int[] iArr8 = this.t;
                                            iArr8[i2] = iArr8[i2] + iArr7[i5];
                                            i5++;
                                        }
                                    }
                                } else if (i2 == 2) {
                                    String[] strArr7 = new String[this.s[i2]];
                                    System.arraycopy(this.n, this.r[i2], strArr7, 0, this.s[i2]);
                                    int[] iArr9 = new int[this.s[i2]];
                                    System.arraycopy(this.v, this.r[i2], iArr9, 0, this.s[i2]);
                                    int i6 = 0;
                                    while (true) {
                                        iArr4 = iArr4;
                                        strArr4 = strArr4;
                                        iArr3 = iArr9;
                                        strArr3 = strArr7;
                                        iArr2 = iArr2;
                                        strArr2 = strArr2;
                                        iArr = iArr;
                                        strArr = strArr;
                                        if (i6 < this.s[i2]) {
                                            int[] iArr10 = this.t;
                                            iArr10[i2] = iArr10[i2] + iArr9[i6];
                                            i6++;
                                        }
                                    }
                                } else {
                                    iArr4 = iArr4;
                                    strArr4 = strArr4;
                                    iArr3 = iArr3;
                                    strArr3 = strArr3;
                                    iArr2 = iArr2;
                                    strArr2 = strArr2;
                                    iArr = iArr;
                                    strArr = strArr;
                                    if (i2 == 3) {
                                        String[] strArr8 = new String[this.s[i2]];
                                        System.arraycopy(this.n, this.r[i2], strArr8, 0, this.s[i2]);
                                        int[] iArr11 = new int[this.s[i2]];
                                        System.arraycopy(this.v, this.r[i2], iArr11, 0, this.s[i2]);
                                        int i7 = 0;
                                        while (true) {
                                            iArr4 = iArr11;
                                            strArr4 = strArr8;
                                            iArr3 = iArr3;
                                            strArr3 = strArr3;
                                            iArr2 = iArr2;
                                            strArr2 = strArr2;
                                            iArr = iArr;
                                            strArr = strArr;
                                            if (i7 < this.s[i2]) {
                                                int[] iArr12 = this.t;
                                                iArr12[i2] = iArr12[i2] + iArr11[i7];
                                                i7++;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    this.q[0] = 0;
                    this.q[1] = this.t[0];
                    this.q[2] = this.t[0] + this.t[1];
                    this.q[3] = this.t[0] + this.t[1] + this.t[2];
                    int i8 = 0;
                    int i9 = 0;
                    int i10 = 0;
                    int i11 = 0;
                    if (strArr != null) {
                        i8 = strArr.length;
                    }
                    if (strArr2 != null) {
                        i9 = strArr2.length;
                    }
                    if (strArr3 != null) {
                        i10 = strArr3.length;
                    }
                    if (strArr4 != null) {
                        i11 = strArr4.length;
                    }
                    if (i8 + i9 + i10 + i11 > 0) {
                        this.o = new String[i8 + i9 + i10 + i11];
                        this.p = new int[i8 + i9 + i10 + i11];
                        if (!(strArr == null || iArr == null)) {
                            System.arraycopy(strArr, 0, this.o, 0, i8);
                            System.arraycopy(iArr, 0, this.p, 0, i8);
                        }
                        if (!(strArr2 == null || iArr2 == null)) {
                            System.arraycopy(strArr2, 0, this.o, i8, i9);
                            System.arraycopy(iArr2, 0, this.p, i8, i9);
                        }
                        if (!(strArr3 == null || iArr3 == null)) {
                            System.arraycopy(strArr3, 0, this.o, i8 + i9, i10);
                            System.arraycopy(iArr3, 0, this.p, i8 + i9, i10);
                        }
                        if (!(strArr4 == null || strArr4 == null)) {
                            System.arraycopy(strArr4, 0, this.o, i8 + i9 + i10, i11);
                            System.arraycopy(iArr4, 0, this.p, i8 + i9 + i10, i11);
                        }
                    } else {
                        this.o = null;
                        this.p = null;
                    }
                } else {
                    return;
                }
            }
            if (listAdapter instanceof SectionIndexer) {
                this.l = (SectionIndexer) listAdapter;
                this.m = this.l.getSections();
                return;
            }
            this.m = new String[]{" "};
        }
    }

    private void a(int i) {
        for (int i2 = 0; i2 < this.e.length; i2++) {
            this.e[i2] = new Rect();
            this.e[i2].top = this.d[this.d.length - 1].bottom + (this.f * i2) + i;
            this.e[i2].bottom = this.e[i2].top + this.f;
            this.e[i2].left = h;
            this.e[i2].right = h + getWidth();
        }
    }

    private void a(int i, int i2) {
        int dimensionPixelOffset = getContext().getResources().getDimensionPixelOffset(2131099770);
        for (int i3 = 0; i3 < this.f1296b.length; i3++) {
            this.O[i3] = new Rect();
            this.O[i3].left = 0;
            this.O[i3].right = dimensionPixelOffset;
            if (i3 == 0) {
                this.O[i3].bottom = dimensionPixelOffset;
                this.O[i3].top = 0;
            } else {
                this.O[i3].bottom = ((i3 - 1) * i2) + dimensionPixelOffset + i2;
                this.O[i3].top = ((i3 - 1) * i2) + dimensionPixelOffset;
            }
        }
        if (ad) {
            Log.d("AlphabetFastScroll", "mLocale:" + this.ac);
            Log.d("AlphabetFastScroll", "mLocale.equals(Locale.TRADITIONAL_CHINESE):" + this.ac.equals(Locale.TRADITIONAL_CHINESE));
            Log.d("AlphabetFastScroll", "mLocale.toString().startsWith(zh_TW):" + this.ac.toString().startsWith("zh_TW"));
        }
        if (this.ac.equals(Locale.TRADITIONAL_CHINESE) || this.ac.toString().startsWith("zh_TW")) {
            this.Q.left = 0;
            this.Q.top = (i2 * 26) + dimensionPixelOffset;
            this.Q.right = dimensionPixelOffset;
            this.Q.bottom = i;
        } else {
            this.O[this.f1296b.length - 1].bottom = i;
        }
        this.R = new Rect();
        this.R.left = 0;
        this.R.right = dimensionPixelOffset;
        this.R.top = dimensionPixelOffset;
        this.R.bottom = this.N;
    }

    private static boolean a(float f, Rect rect) {
        return rect == null ? false : rect.contains(rect.centerX(), (int) f);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:72:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b(java.lang.String r9) {
        /*
            Method dump skipped, instructions count: 739
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.fastscroll.AlphabetFastScroll.b(java.lang.String):void");
    }

    public final void a(Set<String> set) {
        for (int i = 0; i < this.f1296b.length; i++) {
            if (set.contains(this.f1296b[i])) {
                this.P[i] = true;
            } else {
                this.P[i] = false;
            }
        }
        if (set.contains(this.j)) {
            if (ad) {
                Log.d("AlphabetFastScroll", "updateBackground mPointCh = true;");
            }
            this.S = true;
        } else {
            if (ad) {
                Log.d("AlphabetFastScroll", "updateBackground mPointCh = false;");
            }
            this.S = false;
        }
        invalidate();
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        if (this.y != null) {
            this.y.dismiss();
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // android.view.View
    public boolean onDragEvent(DragEvent dragEvent) {
        return super.onDragEvent(dragEvent);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.B = this.N + 0;
        if (this.ac.equals(Locale.TRADITIONAL_CHINESE) || this.ac.toString().startsWith("zh_TW")) {
            if (this.W) {
                if (this.V) {
                    this.f = getContext().getResources().getDimensionPixelOffset(2131100127);
                } else {
                    this.f = getContext().getResources().getDimensionPixelOffset(2131100126);
                }
            } else if (this.V) {
                this.f = getContext().getResources().getDimensionPixelOffset(2131099739);
            } else {
                this.f = getContext().getResources().getDimensionPixelOffset(2131099738);
            }
            this.B = this.f * 30;
        } else {
            if (this.W) {
                if (this.V) {
                    this.f = getContext().getResources().getDimensionPixelOffset(2131100129);
                } else {
                    this.f = getContext().getResources().getDimensionPixelOffset(2131100128);
                }
            } else if (this.V) {
                this.f = getContext().getResources().getDimensionPixelOffset(2131099741);
            } else {
                this.f = getContext().getResources().getDimensionPixelOffset(2131099740);
            }
            this.B = this.f * 27;
        }
        int dimensionPixelOffset = getContext().getResources().getDimensionPixelOffset(2131099736);
        for (int i = 0; i < this.d.length; i++) {
            this.d[i] = new Rect();
            this.d[i].left = g;
            this.d[i].right = g + getWidth();
            if (i == 0) {
                this.d[i].top = 0;
                this.d[i].bottom = getWidth();
            } else {
                this.d[i].top = getWidth() + ((i - 1) * this.f);
                this.d[i].bottom = this.d[i].top + this.f;
            }
        }
        a(dimensionPixelOffset);
        a(this.B, this.f);
        Paint paint = new Paint();
        Paint paint2 = new Paint();
        Paint paint3 = new Paint();
        Paint paint4 = new Paint();
        Paint paint5 = new Paint();
        Paint paint6 = new Paint();
        if (com.android.contacts.skin.a.b()) {
            paint4.setColor(getContext().getResources().getColor(2131034145));
            paint5.setColor(getContext().getResources().getColor(2131034144));
        } else {
            paint4.setColor(-1710619);
            paint5.setColor(-11579569);
        }
        paint6.setColor(getContext().getResources().getColor(2131034186));
        canvas.drawRect(this.O[0], paint5);
        canvas.drawRect(this.R, paint4);
        if (this.I) {
            if (com.android.contacts.skin.a.b()) {
                paint.setColor(getContext().getResources().getColor(2131034159));
                paint2.setColor(getContext().getResources().getColor(2131034153));
            } else {
                paint.setColor(-11579569);
                paint2.setColor(-1);
            }
            if (com.android.contacts.skin.a.c()) {
                paint3.setColor(com.android.contacts.skin.a.a(1));
            } else {
                paint3.setColor(-16733274);
            }
            paint.setTextAlign(Paint.Align.CENTER);
            paint2.setTextAlign(Paint.Align.CENTER);
            paint3.setTextAlign(Paint.Align.CENTER);
            float dimensionPixelOffset2 = getContext().getResources().getDimensionPixelOffset(2131099775);
            paint.setTextSize(dimensionPixelOffset2);
            paint2.setTextSize(dimensionPixelOffset2);
            paint3.setTextSize(getContext().getResources().getDimensionPixelOffset(2131099776));
            paint.setAntiAlias(true);
            paint2.setAntiAlias(true);
            paint3.setAntiAlias(true);
            paint3.setTypeface(Typeface.DEFAULT_BOLD);
            int dimensionPixelOffset3 = getContext().getResources().getDimensionPixelOffset(2131099770);
            int dimensionPixelOffset4 = getContext().getResources().getDimensionPixelOffset(2131099737);
            int i2 = 0;
            while (i2 < this.d.length) {
                int i3 = (this.d[i2].left + this.d[i2].right) / 2;
                int i4 = this.d[i2].bottom;
                int i5 = i2 == 0 ? (i4 - ((int) ((dimensionPixelOffset3 - dimensionPixelOffset2) * 0.5d))) - dimensionPixelOffset4 : i4 - ((int) ((this.f - dimensionPixelOffset2) * 0.5d));
                if (i2 == 0) {
                    canvas.drawText(this.f1296b[i2], i3, i5, paint2);
                } else if (this.P[i2]) {
                    canvas.drawText(this.f1296b[i2], i3, i5, paint3);
                } else {
                    canvas.drawText(this.f1296b[i2], i3, i5, paint);
                }
                i2++;
            }
            if (ad) {
                Log.d("AlphabetFastScroll", "onDraw mLocale:" + this.ac);
            }
            if (this.ac.equals(Locale.TRADITIONAL_CHINESE) || this.ac.toString().startsWith("zh_TW")) {
                int i6 = 0;
                if (ad) {
                    Log.d("AlphabetFastScroll", "onDraw mLocale.equals(Locale.TRADITIONAL_CHINESE)||mLocale.toString().startsWith(zh_TW)");
                    i6 = 0;
                }
                while (i6 < this.e.length) {
                    int i7 = (this.e[i6].left + this.e[i6].right) / 2;
                    int i8 = this.e[i6].bottom;
                    if (this.S) {
                        canvas.drawText(this.c[i6], i7, i8, paint3);
                    } else {
                        canvas.drawText(this.c[i6], i7, i8, paint);
                    }
                    i6++;
                }
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        String str;
        int a2;
        if (!this.I) {
            return true;
        }
        motionEvent.getX();
        float y = motionEvent.getY();
        int action = motionEvent.getAction();
        getContext().getResources().getDimensionPixelOffset(2131099795);
        int i = 0;
        while (true) {
            if (i >= this.d.length) {
                if (this.ac.equals(Locale.TRADITIONAL_CHINESE) || this.ac.toString().startsWith("zh_TW")) {
                    for (int i2 = 0; i2 < this.e.length; i2++) {
                        if (a(y, this.e[i2])) {
                            str = this.c[0] + this.c[1];
                            break;
                        }
                    }
                }
                str = null;
            } else if (a(y, this.d[i])) {
                str = this.f1296b[i];
                break;
            } else {
                i++;
            }
        }
        switch (action & 255) {
            case 0:
                a();
                if (str == null || !str.equals(this.j)) {
                    if (str != null && !str.equals(this.i)) {
                        this.i = str;
                        if (this.k != null && (a2 = a(str)) > 0) {
                            this.U = a2;
                        }
                    }
                    this.T.g_();
                    return true;
                }
                b(str);
                return true;
            case 1:
                this.i = BuildConfig.FLAVOR;
                if (this.k != null) {
                    AsusPinnedHeaderListView asusPinnedHeaderListView = (AsusPinnedHeaderListView) this.k;
                    if (!this.W || (!this.aa && !TextUtils.isEmpty(asusPinnedHeaderListView.f1709a))) {
                        asusPinnedHeaderListView.a(BuildConfig.FLAVOR);
                    } else {
                        try {
                            new b(asusPinnedHeaderListView, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                        } catch (Exception e) {
                            Log.w("AlphabetFastScroll", e.toString());
                        }
                    }
                }
                this.T.b(this.U);
                return true;
            case 2:
                if (str == null || str.equals(this.i)) {
                    return true;
                }
                if (!str.equals(this.j) && this.y != null && this.y.isShowing()) {
                    this.y.dismiss();
                }
                this.i = str;
                if (this.k == null) {
                    return true;
                }
                AsusPinnedHeaderListView asusPinnedHeaderListView2 = (AsusPinnedHeaderListView) this.k;
                if (this.J) {
                    asusPinnedHeaderListView2.setDrawPosition(AsusPinnedHeaderListView.a.LEFT);
                } else {
                    asusPinnedHeaderListView2.setDrawPosition(AsusPinnedHeaderListView.a.RIGHT);
                }
                if (this.j.equals(str)) {
                    asusPinnedHeaderListView2.a(this.c[0]);
                } else {
                    asusPinnedHeaderListView2.a(str);
                }
                int a3 = a(str);
                if (a3 <= 0) {
                    return true;
                }
                this.U = a3;
                return true;
            default:
                return true;
        }
    }

    public void setIsSearchMode(boolean z) {
        this.M = z;
        if (this.M) {
            setVisibility(8);
        } else {
            setVisibility(0);
        }
    }

    public void setListView(AbsListView absListView, int i, boolean z) {
        this.k = absListView;
        this.I = z;
        this.D = i;
        invalidate();
    }

    public void setListener(Fragment fragment) {
        this.T = (a) fragment;
    }
}
