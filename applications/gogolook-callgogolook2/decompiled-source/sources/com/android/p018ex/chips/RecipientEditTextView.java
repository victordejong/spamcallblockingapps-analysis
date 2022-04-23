package com.android.p018ex.chips;

import android.annotation.TargetApi;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcelable;
import android.text.Editable;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.QwertyKeyListener;
import android.text.util.Rfc822Token;
import android.text.util.Rfc822Tokenizer;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.Filterable;
import android.widget.ListAdapter;
import android.widget.ListPopupWindow;
import android.widget.ListView;
import android.widget.MultiAutoCompleteTextView;
import android.widget.PopupWindow;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;
import p081h.p093b.p099c.p100a.AbstractC5598e;
import p081h.p093b.p099c.p100a.C5579b;
import p081h.p093b.p099c.p100a.C5592d;
import p081h.p093b.p099c.p100a.C5604g;
import p081h.p093b.p099c.p100a.C5607h;
import p081h.p093b.p099c.p100a.C5608i;
import p081h.p093b.p099c.p100a.p101j.AbstractC5610b;
import p081h.p093b.p099c.p100a.p101j.C5611c;
import p081h.p093b.p099c.p100a.p101j.C5612d;
import p081h.p093b.p099c.p100a.p101j.C5614f;
/* renamed from: com.android.ex.chips.RecipientEditTextView */
/* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView.class */
public class RecipientEditTextView extends MultiAutoCompleteTextView implements AdapterView.OnItemClickListener, ActionMode.Callback, C5604g.AbstractC5605a, GestureDetector.OnGestureListener, DialogInterface.OnDismissListener, View.OnClickListener, TextView.OnEditorActionListener, C5592d.AbstractC5596d {

    /* renamed from: f0 */
    public static final String f835f0 = String.valueOf(',') + String.valueOf(' ');

    /* renamed from: g0 */
    public static final Pattern f836g0 = Pattern.compile("(\\+[0-9]+[\\- \\.]*)?(1?[ ]*\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.][0-9\\- \\.]+[0-9])");

    /* renamed from: h0 */
    public static final int f837h0 = "dismiss".hashCode();

    /* renamed from: A */
    public View f838A;

    /* renamed from: C */
    public AbstractC5610b f840C;

    /* renamed from: D */
    public Bitmap f841D;

    /* renamed from: E */
    public C5612d f842E;

    /* renamed from: F */
    public TextView f843F;

    /* renamed from: G */
    public int f844G;

    /* renamed from: J */
    public int f847J;

    /* renamed from: O */
    public ArrayList<AbstractC5610b> f851O;

    /* renamed from: P */
    public ArrayList<AbstractC5610b> f852P;

    /* renamed from: Q */
    public GestureDetector f853Q;

    /* renamed from: R */
    public Dialog f854R;

    /* renamed from: S */
    public String f855S;

    /* renamed from: T */
    public ScrollView f856T;

    /* renamed from: U */
    public boolean f857U;

    /* renamed from: W */
    public boolean f859W;

    /* renamed from: a */
    public int f860a;

    /* renamed from: b */
    public int f862b;

    /* renamed from: b0 */
    public AsyncTaskC1502m f863b0;

    /* renamed from: e0 */
    public AbstractC1507p f869e0;

    /* renamed from: g */
    public Drawable f871g;

    /* renamed from: h */
    public float f872h;

    /* renamed from: i */
    public float f873i;

    /* renamed from: j */
    public float f874j;

    /* renamed from: k */
    public int f875k;

    /* renamed from: l */
    public int f876l;

    /* renamed from: m */
    public int f877m;

    /* renamed from: o */
    public boolean f879o;

    /* renamed from: p */
    public int f880p;

    /* renamed from: q */
    public int f881q;

    /* renamed from: s */
    public MultiAutoCompleteTextView.Tokenizer f883s;

    /* renamed from: t */
    public AutoCompleteTextView.Validator f884t;

    /* renamed from: w */
    public C5592d f887w;

    /* renamed from: y */
    public ListPopupWindow f889y;

    /* renamed from: z */
    public ListPopupWindow f890z;

    /* renamed from: c */
    public final Rect f864c = new Rect();

    /* renamed from: d */
    public final int[] f866d = new int[2];

    /* renamed from: e */
    public Drawable f868e = null;

    /* renamed from: f */
    public Drawable f870f = null;

    /* renamed from: r */
    public Paint f882r = new Paint();

    /* renamed from: x */
    public View f888x = this;

    /* renamed from: H */
    public final ArrayList<String> f845H = new ArrayList<>();

    /* renamed from: I */
    public int f846I = 0;

    /* renamed from: K */
    public boolean f848K = false;

    /* renamed from: L */
    public boolean f849L = true;

    /* renamed from: N */
    public boolean f850N = false;

    /* renamed from: V */
    public boolean f858V = false;

    /* renamed from: a0 */
    public final Runnable f861a0 = new RunnableC1491c();

    /* renamed from: c0 */
    public Runnable f865c0 = new RunnableC1492d();

    /* renamed from: d0 */
    public Runnable f867d0 = new RunnableC1493e();

    /* renamed from: n */
    public final int f878n = m36955c();

    /* renamed from: B */
    public AdapterView.OnItemClickListener f839B = new C1494f();

    /* renamed from: u */
    public Handler f885u = new HandlerC1495g(this);

    /* renamed from: v */
    public TextWatcher f886v = new C1511r(this, null);

    /* renamed from: com.android.ex.chips.RecipientEditTextView$a */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$a.class */
    public class C1489a implements Comparator<AbstractC5610b> {

        /* renamed from: a */
        public final /* synthetic */ Spannable f891a;

        public C1489a(RecipientEditTextView recipientEditTextView, Spannable spannable) {
            this.f891a = spannable;
        }

        /* renamed from: a */
        public int compare(AbstractC5610b bVar, AbstractC5610b bVar2) {
            int spanStart = this.f891a.getSpanStart(bVar);
            int spanStart2 = this.f891a.getSpanStart(bVar2);
            if (spanStart < spanStart2) {
                return -1;
            }
            return spanStart > spanStart2 ? 1 : 0;
        }
    }

    /* renamed from: com.android.ex.chips.RecipientEditTextView$b */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$b.class */
    public class C1490b implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC5610b f892a;

        /* renamed from: b */
        public final /* synthetic */ ListPopupWindow f893b;

        public C1490b(AbstractC5610b bVar, ListPopupWindow listPopupWindow) {
            this.f892a = bVar;
            this.f893b = listPopupWindow;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            RecipientEditTextView.this.m36906k(this.f892a);
            this.f893b.dismiss();
        }
    }

    /* renamed from: com.android.ex.chips.RecipientEditTextView$c */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$c.class */
    public class RunnableC1491c implements Runnable {
        public RunnableC1491c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (RecipientEditTextView.this.f886v == null) {
                RecipientEditTextView recipientEditTextView = RecipientEditTextView.this;
                recipientEditTextView.f886v = new C1511r(recipientEditTextView, null);
                RecipientEditTextView recipientEditTextView2 = RecipientEditTextView.this;
                recipientEditTextView2.addTextChangedListener(recipientEditTextView2.f886v);
            }
        }
    }

    /* renamed from: com.android.ex.chips.RecipientEditTextView$d */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$d.class */
    public class RunnableC1492d implements Runnable {
        public RunnableC1492d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RecipientEditTextView.this.m36885v();
        }
    }

    /* renamed from: com.android.ex.chips.RecipientEditTextView$e */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$e.class */
    public class RunnableC1493e implements Runnable {
        public RunnableC1493e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RecipientEditTextView.this.m37006D();
        }
    }

    /* renamed from: com.android.ex.chips.RecipientEditTextView$f */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$f.class */
    public class C1494f implements AdapterView.OnItemClickListener {
        public C1494f() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            RecipientEditTextView.this.f889y.setOnItemClickListener(null);
            RecipientEditTextView recipientEditTextView = RecipientEditTextView.this;
            recipientEditTextView.m36976a(recipientEditTextView.f840C, ((C5604g) adapterView.getAdapter()).m25052a(i));
            Message obtain = Message.obtain(RecipientEditTextView.this.f885u, RecipientEditTextView.f837h0);
            obtain.obj = RecipientEditTextView.this.f889y;
            RecipientEditTextView.this.f885u.sendMessageDelayed(obtain, 300L);
            RecipientEditTextView.this.clearComposingText();
        }
    }

    /* renamed from: com.android.ex.chips.RecipientEditTextView$g */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$g.class */
    public class HandlerC1495g extends Handler {
        public HandlerC1495g(RecipientEditTextView recipientEditTextView) {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == RecipientEditTextView.f837h0) {
                ((ListPopupWindow) message.obj).dismiss();
            } else {
                super.handleMessage(message);
            }
        }
    }

    /* renamed from: com.android.ex.chips.RecipientEditTextView$h */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$h.class */
    public class C1496h implements PopupWindow.OnDismissListener {
        public C1496h() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            RecipientEditTextView.this.m36935f();
        }
    }

    /* renamed from: com.android.ex.chips.RecipientEditTextView$i */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$i.class */
    public class C1497i implements C5579b.AbstractC5587h {
        public C1497i() {
        }

        @Override // p081h.p093b.p099c.p100a.C5579b.AbstractC5587h
        /* renamed from: a */
        public void mo25083a(List<C5607h> list) {
            if (list != null && list.size() > 0) {
                RecipientEditTextView.this.m37008B();
                if (RecipientEditTextView.this.f844G == 0) {
                    RecipientEditTextView recipientEditTextView = RecipientEditTextView.this;
                    recipientEditTextView.m36973a(recipientEditTextView.getContext().getString(R$string.accessbility_suggestion_dropdown_opened));
                }
            }
            RecipientEditTextView.this.f888x.getLocationInWindow(RecipientEditTextView.this.f866d);
            RecipientEditTextView recipientEditTextView2 = RecipientEditTextView.this;
            recipientEditTextView2.getWindowVisibleDisplayFrame(recipientEditTextView2.f864c);
            RecipientEditTextView recipientEditTextView3 = RecipientEditTextView.this;
            recipientEditTextView3.setDropDownHeight(((recipientEditTextView3.f864c.bottom - RecipientEditTextView.this.f866d[1]) - RecipientEditTextView.this.f888x.getHeight()) - RecipientEditTextView.this.getDropDownVerticalOffset());
            RecipientEditTextView.this.f844G = list == null ? 0 : list.size();
        }
    }

    /* renamed from: com.android.ex.chips.RecipientEditTextView$j */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$j.class */
    public class C1498j implements AbstractC5598e.AbstractC5599a {

        /* renamed from: a */
        public final /* synthetic */ C5607h f901a;

        /* renamed from: b */
        public final /* synthetic */ C1501l f902b;

        /* renamed from: com.android.ex.chips.RecipientEditTextView$j$a */
        /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$j$a.class */
        public class RunnableC1499a implements Runnable {
            public RunnableC1499a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                RecipientEditTextView.this.invalidate();
            }
        }

        public C1498j(C5607h hVar, C1501l lVar) {
            this.f901a = hVar;
            this.f902b = lVar;
        }

        @Override // p081h.p093b.p099c.p100a.AbstractC5598e.AbstractC5599a
        /* renamed from: a */
        public void mo25059a() {
            m36877a(RecipientEditTextView.this.f841D);
        }

        /* renamed from: a */
        public final void m36877a(Bitmap bitmap) {
            RecipientEditTextView.this.m36991a(this.f902b, bitmap);
            if (Looper.myLooper() == Looper.getMainLooper()) {
                RecipientEditTextView.this.invalidate();
            } else {
                RecipientEditTextView.this.post(new RunnableC1499a());
            }
        }

        @Override // p081h.p093b.p099c.p100a.AbstractC5598e.AbstractC5599a
        /* renamed from: b */
        public void mo25058b() {
            mo25057c();
        }

        @Override // p081h.p093b.p099c.p100a.AbstractC5598e.AbstractC5599a
        /* renamed from: c */
        public void mo25057c() {
            byte[] j = this.f901a.m25020j();
            m36877a(BitmapFactory.decodeByteArray(j, 0, j.length));
        }
    }

    /* renamed from: com.android.ex.chips.RecipientEditTextView$k */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$k.class */
    public class AsyncTaskC1500k extends AsyncTask<Void, Void, ListAdapter> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC5610b f905a;

        /* renamed from: b */
        public final /* synthetic */ ListPopupWindow f906b;

        public AsyncTaskC1500k(AbstractC5610b bVar, ListPopupWindow listPopupWindow) {
            this.f905a = bVar;
            this.f906b = listPopupWindow;
        }

        /* renamed from: a */
        public ListAdapter doInBackground(Void... voidArr) {
            return RecipientEditTextView.this.m36978a(this.f905a);
        }

        /* renamed from: a */
        public void onPostExecute(ListAdapter listAdapter) {
            if (RecipientEditTextView.this.f859W) {
                RecipientEditTextView.this.getLayout().getLineForOffset(RecipientEditTextView.this.m36943d(this.f905a));
                this.f906b.setAnchorView(RecipientEditTextView.this.f838A != null ? RecipientEditTextView.this.f838A : RecipientEditTextView.this);
                this.f906b.setVerticalOffset(0);
                this.f906b.setAdapter(listAdapter);
                this.f906b.setOnItemClickListener(RecipientEditTextView.this.f839B);
                RecipientEditTextView.this.f847J = -1;
                this.f906b.show();
                ListView listView = this.f906b.getListView();
                listView.setChoiceMode(1);
                if (RecipientEditTextView.this.f847J != -1) {
                    listView.setItemChecked(RecipientEditTextView.this.f847J, true);
                    RecipientEditTextView.this.f847J = -1;
                }
            }
        }
    }

    /* renamed from: com.android.ex.chips.RecipientEditTextView$l */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$l.class */
    public static class C1501l {

        /* renamed from: a */
        public Bitmap f908a;

        /* renamed from: b */
        public boolean f909b;

        /* renamed from: c */
        public float f910c;

        /* renamed from: d */
        public float f911d;

        /* renamed from: e */
        public float f912e;

        /* renamed from: f */
        public float f913f;

        public C1501l() {
            this.f909b = false;
        }

        public /* synthetic */ C1501l(RunnableC1491c cVar) {
            this();
        }
    }

    /* renamed from: com.android.ex.chips.RecipientEditTextView$m */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$m.class */
    public class AsyncTaskC1502m extends AsyncTask<ArrayList<AbstractC5610b>, Void, Void> {

        /* renamed from: com.android.ex.chips.RecipientEditTextView$m$a */
        /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$m$a.class */
        public class C1503a implements C5604g.AbstractC5606b {

            /* renamed from: a */
            public final /* synthetic */ ArrayList f915a;

            /* renamed from: com.android.ex.chips.RecipientEditTextView$m$a$a */
            /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$m$a$a.class */
            public class RunnableC1504a implements Runnable {

                /* renamed from: a */
                public final /* synthetic */ AbstractC5610b f917a;

                /* renamed from: b */
                public final /* synthetic */ C5607h f918b;

                public RunnableC1504a(AbstractC5610b bVar, C5607h hVar) {
                    this.f917a = bVar;
                    this.f918b = hVar;
                }

                @Override // java.lang.Runnable
                public void run() {
                    RecipientEditTextView.this.m36976a(this.f917a, this.f918b);
                }
            }

            public C1503a(ArrayList arrayList) {
                this.f915a = arrayList;
            }

            @Override // p081h.p093b.p099c.p100a.C5604g.AbstractC5606b
            /* renamed from: a */
            public void mo25041a(Map<String, C5607h> map) {
                C5607h f;
                Iterator it = this.f915a.iterator();
                while (it.hasNext()) {
                    AbstractC5610b bVar = (AbstractC5610b) it.next();
                    if (!(!C5607h.m25037a(bVar.mo25008d().m25039a()) || RecipientEditTextView.this.m36893r().getSpanStart(bVar) == -1 || (f = RecipientEditTextView.this.m36932f(map.get(RecipientEditTextView.m36918h(bVar.mo25008d().m25027c()).toLowerCase()))) == null)) {
                        RecipientEditTextView.this.f885u.post(new RunnableC1504a(bVar, f));
                    }
                }
            }

            @Override // p081h.p093b.p099c.p100a.C5604g.AbstractC5606b
            /* renamed from: a */
            public void mo25040a(Set<String> set) {
            }
        }

        public AsyncTaskC1502m() {
        }

        public /* synthetic */ AsyncTaskC1502m(RecipientEditTextView recipientEditTextView, RunnableC1491c cVar) {
            this();
        }

        /* renamed from: a */
        public Void doInBackground(ArrayList<AbstractC5610b>... arrayListArr) {
            ArrayList<AbstractC5610b> arrayList = arrayListArr[0];
            ArrayList<String> arrayList2 = new ArrayList<>();
            Iterator<AbstractC5610b> it = arrayList.iterator();
            while (it.hasNext()) {
                AbstractC5610b next = it.next();
                if (next != null) {
                    arrayList2.add(RecipientEditTextView.this.m36950c(next.mo25008d()));
                }
            }
            RecipientEditTextView.this.getAdapter().mo7934a(arrayList2, new C1503a(arrayList));
            return null;
        }
    }

    /* renamed from: com.android.ex.chips.RecipientEditTextView$n */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$n.class */
    public class C1505n extends C5612d {
        public C1505n(RecipientEditTextView recipientEditTextView, Drawable drawable) {
            super(drawable);
            m25015a(recipientEditTextView.f874j);
            m25014a(recipientEditTextView.f875k);
        }
    }

    /* renamed from: com.android.ex.chips.RecipientEditTextView$o */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$o.class */
    public final class C1506o extends View.DragShadowBuilder {

        /* renamed from: a */
        public final AbstractC5610b f920a;

        public C1506o(RecipientEditTextView recipientEditTextView, AbstractC5610b bVar) {
            this.f920a = bVar;
        }

        @Override // android.view.View.DragShadowBuilder
        public void onDrawShadow(@NonNull Canvas canvas) {
            this.f920a.draw(canvas);
        }

        @Override // android.view.View.DragShadowBuilder
        public void onProvideShadowMetrics(@NonNull Point point, @NonNull Point point2) {
            Rect a = this.f920a.mo25012a();
            point.set(a.width(), a.height());
            point2.set(a.centerX(), a.centerY());
        }
    }

    /* renamed from: com.android.ex.chips.RecipientEditTextView$p */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$p.class */
    public interface AbstractC1507p {
        /* renamed from: a */
        void m36873a(int i, int i2);
    }

    /* renamed from: com.android.ex.chips.RecipientEditTextView$q */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$q.class */
    public class AsyncTaskC1508q extends AsyncTask<Void, Void, Void> {

        /* renamed from: com.android.ex.chips.RecipientEditTextView$q$a */
        /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$q$a.class */
        public class C1509a implements C5604g.AbstractC5606b {

            /* renamed from: a */
            public final /* synthetic */ ArrayList f922a;

            public C1509a(ArrayList arrayList) {
                this.f922a = arrayList;
            }

            @Override // p081h.p093b.p099c.p100a.C5604g.AbstractC5606b
            /* renamed from: a */
            public void mo25041a(Map<String, C5607h> map) {
                ArrayList arrayList = new ArrayList();
                Iterator it = this.f922a.iterator();
                while (it.hasNext()) {
                    AbstractC5610b bVar = (AbstractC5610b) it.next();
                    C5607h f = (bVar == null || !C5607h.m25037a(bVar.mo25008d().m25039a()) || RecipientEditTextView.this.m36893r().getSpanStart(bVar) == -1) ? null : RecipientEditTextView.this.m36932f(map.get(RecipientEditTextView.m36918h(bVar.mo25008d().m25027c())));
                    if (f != null) {
                        arrayList.add(AsyncTaskC1508q.this.m36870a(f));
                    } else {
                        arrayList.add(null);
                    }
                }
                AsyncTaskC1508q.this.m36869a(this.f922a, arrayList);
            }

            @Override // p081h.p093b.p099c.p100a.C5604g.AbstractC5606b
            /* renamed from: a */
            public void mo25040a(Set<String> set) {
                ArrayList arrayList = new ArrayList(set.size());
                Iterator it = this.f922a.iterator();
                while (it.hasNext()) {
                    AbstractC5610b bVar = (AbstractC5610b) it.next();
                    if (bVar == null || !C5607h.m25037a(bVar.mo25008d().m25039a()) || RecipientEditTextView.this.m36893r().getSpanStart(bVar) == -1) {
                        arrayList.add(null);
                    } else if (set.contains(bVar.mo25008d().m25027c())) {
                        arrayList.add(AsyncTaskC1508q.this.m36870a(bVar.mo25008d()));
                    } else {
                        arrayList.add(null);
                    }
                }
                AsyncTaskC1508q.this.m36869a(this.f922a, arrayList);
            }
        }

        /* renamed from: com.android.ex.chips.RecipientEditTextView$q$b */
        /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$q$b.class */
        public class RunnableC1510b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ List f924a;

            /* renamed from: b */
            public final /* synthetic */ List f925b;

            public RunnableC1510b(List list, List list2) {
                this.f924a = list;
                this.f925b = list2;
            }

            @Override // java.lang.Runnable
            public void run() {
                int spanStart;
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(RecipientEditTextView.this.getText());
                int i = 0;
                for (AbstractC5610b bVar : this.f924a) {
                    AbstractC5610b bVar2 = (AbstractC5610b) this.f925b.get(i);
                    if (bVar2 != null) {
                        C5607h d = bVar.mo25008d();
                        C5607h d2 = bVar2.mo25008d();
                        if ((C5604g.m25044a(d, d2) == d2) && (spanStart = spannableStringBuilder.getSpanStart(bVar)) != -1) {
                            int min = Math.min(spannableStringBuilder.getSpanEnd(bVar) + 1, spannableStringBuilder.length());
                            spannableStringBuilder.removeSpan(bVar);
                            SpannableString spannableString = new SpannableString(RecipientEditTextView.this.m36950c(bVar2.mo25008d()).trim() + " ");
                            spannableString.setSpan(bVar2, 0, spannableString.length() - 1, 33);
                            spannableStringBuilder.replace(spanStart, min, (CharSequence) spannableString);
                            bVar2.mo25011a(spannableString.toString());
                            this.f925b.set(i, null);
                            this.f924a.set(i, bVar2);
                        }
                    }
                    i++;
                }
                RecipientEditTextView.this.setText(spannableStringBuilder);
            }
        }

        public AsyncTaskC1508q() {
        }

        public /* synthetic */ AsyncTaskC1508q(RecipientEditTextView recipientEditTextView, RunnableC1491c cVar) {
            this();
        }

        /* renamed from: a */
        public final AbstractC5610b m36870a(C5607h hVar) {
            try {
                if (RecipientEditTextView.this.f848K) {
                    return null;
                }
                return RecipientEditTextView.this.m36961b(hVar);
            } catch (NullPointerException e) {
                Log.e("RecipientEditTextView", e.getMessage(), e);
                return null;
            }
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            if (RecipientEditTextView.this.f863b0 != null) {
                RecipientEditTextView.this.f863b0.cancel(true);
            }
            ArrayList arrayList = new ArrayList();
            Collections.addAll(arrayList, RecipientEditTextView.this.m36895q());
            if (RecipientEditTextView.this.f852P != null) {
                arrayList.addAll(RecipientEditTextView.this.f852P);
            }
            ArrayList<String> arrayList2 = new ArrayList<>();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                AbstractC5610b bVar = (AbstractC5610b) it.next();
                if (bVar != null) {
                    arrayList2.add(RecipientEditTextView.this.m36950c(bVar.mo25008d()));
                }
            }
            RecipientEditTextView.this.getAdapter().mo7934a(arrayList2, new C1509a(arrayList));
            return null;
        }

        /* renamed from: a */
        public final void m36869a(List<AbstractC5610b> list, List<AbstractC5610b> list2) {
            if (list2 != null && list2.size() > 0) {
                RunnableC1510b bVar = new RunnableC1510b(list, list2);
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    bVar.run();
                } else {
                    RecipientEditTextView.this.f885u.post(bVar);
                }
            }
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            ArrayList arrayList = new ArrayList();
            Collections.addAll(arrayList, RecipientEditTextView.this.m36895q());
            if (RecipientEditTextView.this.f852P != null) {
                arrayList.addAll(RecipientEditTextView.this.f852P);
            }
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            for (AbstractC5610b bVar : arrayList) {
                if (!C5607h.m25037a(bVar.mo25008d().m25039a()) || RecipientEditTextView.this.m36893r().getSpanStart(bVar) == -1) {
                    arrayList2.add(null);
                } else {
                    arrayList2.add(m36870a(bVar.mo25008d()));
                }
            }
            m36869a(arrayList, arrayList2);
        }
    }

    /* renamed from: com.android.ex.chips.RecipientEditTextView$r */
    /* loaded from: classes-dex2jar.jar:com/android/ex/chips/RecipientEditTextView$r.class */
    public class C1511r implements TextWatcher {
        public C1511r() {
        }

        public /* synthetic */ C1511r(RecipientEditTextView recipientEditTextView, RunnableC1491c cVar) {
            this();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            int i = 0;
            if (TextUtils.isEmpty(editable)) {
                Spannable r = RecipientEditTextView.this.m36893r();
                for (AbstractC5610b bVar : (AbstractC5610b[]) r.getSpans(0, RecipientEditTextView.this.getText().length(), AbstractC5610b.class)) {
                    r.removeSpan(bVar);
                }
                if (RecipientEditTextView.this.f842E != null) {
                    r.removeSpan(RecipientEditTextView.this.f842E);
                }
                RecipientEditTextView.this.m36935f();
            } else if (!RecipientEditTextView.this.m36941e()) {
                if (RecipientEditTextView.this.f840C != null) {
                    RecipientEditTextView recipientEditTextView = RecipientEditTextView.this;
                    if (!recipientEditTextView.m36937e(recipientEditTextView.f840C)) {
                        RecipientEditTextView.this.setCursorVisible(true);
                        RecipientEditTextView recipientEditTextView2 = RecipientEditTextView.this;
                        recipientEditTextView2.setSelection(recipientEditTextView2.getText().length());
                        RecipientEditTextView.this.m36935f();
                    } else {
                        return;
                    }
                }
                if (editable.length() <= 1) {
                    return;
                }
                if (RecipientEditTextView.this.m36958b(editable)) {
                    RecipientEditTextView.this.m36929g();
                    return;
                }
                if (RecipientEditTextView.this.getSelectionEnd() != 0) {
                    i = RecipientEditTextView.this.getSelectionEnd() - 1;
                }
                int length = RecipientEditTextView.this.length() - 1;
                if ((i != length ? editable.charAt(i) : editable.charAt(length)) == ' ' && !RecipientEditTextView.this.m36883w()) {
                    String obj = RecipientEditTextView.this.getText().toString();
                    int findTokenStart = RecipientEditTextView.this.f883s.findTokenStart(obj, RecipientEditTextView.this.getSelectionEnd());
                    if (RecipientEditTextView.this.m36942d(obj.substring(findTokenStart, RecipientEditTextView.this.f883s.findTokenEnd(obj, findTokenStart)))) {
                        RecipientEditTextView.this.m36929g();
                    }
                }
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            if (i2 - i3 == 1) {
                int selectionStart = RecipientEditTextView.this.getSelectionStart();
                AbstractC5610b[] bVarArr = (AbstractC5610b[]) RecipientEditTextView.this.m36893r().getSpans(selectionStart, selectionStart, AbstractC5610b.class);
                if (bVarArr.length > 0) {
                    AbstractC5610b bVar = bVarArr[0];
                    Editable text = RecipientEditTextView.this.getText();
                    int spanStart = text.getSpanStart(bVar);
                    int spanEnd = text.getSpanEnd(bVar) + 1;
                    int i4 = spanEnd;
                    if (spanEnd > text.length()) {
                        i4 = text.length();
                    }
                    text.removeSpan(bVar);
                    RecipientEditTextView.this.m36956b(false);
                    text.delete(spanStart, i4);
                }
            } else if (i3 > i2 && RecipientEditTextView.this.f840C != null) {
                RecipientEditTextView recipientEditTextView = RecipientEditTextView.this;
                if (recipientEditTextView.m36937e(recipientEditTextView.f840C) && RecipientEditTextView.this.m36958b(charSequence)) {
                    RecipientEditTextView.this.m36929g();
                }
            }
        }
    }

    public RecipientEditTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m36997a(context, attributeSet);
        this.f889y = new ListPopupWindow(context);
        m36992a(this.f889y);
        this.f890z = new ListPopupWindow(context);
        this.f890z.setBackgroundDrawable(null);
        m36992a(this.f890z);
        this.f854R = new Dialog(context);
        setInputType(getInputType() | 524288);
        setOnItemClickListener(this);
        setCustomSelectionActionModeCallback(this);
        addTextChangedListener(this.f886v);
        this.f853Q = new GestureDetector(context, this);
        setOnEditorActionListener(this);
        m36983a(new C5592d(LayoutInflater.from(context), context));
    }

    /* renamed from: a */
    public static int m36994a(Editable editable, int i) {
        if (editable.charAt(i) != ' ') {
            return i;
        }
        return -1;
    }

    /* renamed from: g */
    public static boolean m36924g(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return f836g0.matcher(str).matches();
    }

    /* renamed from: h */
    public static String m36918h(String str) {
        Rfc822Token[] rfc822TokenArr = Rfc822Tokenizer.tokenize(str);
        String str2 = str;
        if (rfc822TokenArr != null) {
            str2 = str;
            if (rfc822TokenArr.length > 0) {
                str2 = rfc822TokenArr[0].getAddress();
            }
        }
        return str2;
    }

    /* renamed from: A */
    public void m37009A() {
        if (this.f846I <= 0) {
            AbstractC5610b[] q = m36895q();
            Spannable r = m36893r();
            if (q != null && q.length > 0) {
                this.f842E = m36897p();
                C5612d dVar = this.f842E;
                int spanEnd = dVar != null ? r.getSpanEnd(dVar) : m36893r().getSpanEnd(m36899o());
                Editable text = getText();
                int length = text.length();
                if (length > spanEnd) {
                    if (Log.isLoggable("RecipientEditTextView", 3)) {
                        String str = "There were extra characters after the last tokenizable entry." + ((Object) text);
                    }
                    text.delete(spanEnd + 1, length);
                }
            }
        }
    }

    /* renamed from: B */
    public void m37008B() {
        if (this.f856T != null && this.f849L) {
            getLocationInWindow(this.f866d);
            int height = getHeight();
            int[] iArr = this.f866d;
            int i = iArr[1] + height;
            this.f856T.getLocationInWindow(iArr);
            int lineCount = this.f866d[1] + (height / getLineCount());
            if (i > lineCount) {
                this.f856T.scrollBy(0, i - lineCount);
            }
        }
    }

    /* renamed from: C */
    public final boolean m37007C() {
        boolean z = false;
        boolean z2 = Build.VERSION.SDK_INT >= 17 && getLayoutDirection() == 1;
        boolean z3 = this.f881q == 0;
        if (!z2) {
            z = z3;
        } else if (!z3) {
            z = true;
        }
        return z;
    }

    /* renamed from: D */
    public final void m37006D() {
        if (this.f883s != null) {
            AbstractC5610b bVar = this.f840C;
            long a = bVar != null ? bVar.mo25008d().m25039a() : -1L;
            if (this.f840C != null && a != -1 && !m36883w() && a != -2) {
                m36935f();
            } else if (getWidth() <= 0) {
                this.f885u.removeCallbacks(this.f867d0);
                if (getVisibility() == 8) {
                    this.f850N = true;
                    return;
                } else {
                    this.f885u.post(this.f867d0);
                    return;
                }
            } else {
                if (this.f846I > 0) {
                    m36881x();
                } else {
                    Editable text = getText();
                    int selectionEnd = getSelectionEnd();
                    int findTokenStart = this.f883s.findTokenStart(text, selectionEnd);
                    AbstractC5610b[] bVarArr = (AbstractC5610b[]) m36893r().getSpans(findTokenStart, selectionEnd, AbstractC5610b.class);
                    if (bVarArr == null || bVarArr.length == 0) {
                        Editable text2 = getText();
                        int findTokenEnd = this.f883s.findTokenEnd(text2, findTokenStart);
                        int i = findTokenEnd;
                        if (findTokenEnd < text2.length()) {
                            i = findTokenEnd;
                            if (text2.charAt(findTokenEnd) == ',') {
                                i = m36934f(findTokenEnd);
                            }
                        }
                        if (i != getSelectionEnd()) {
                            m36967b(findTokenStart, i);
                        } else {
                            m37000a(findTokenStart, selectionEnd, text);
                        }
                    }
                }
                this.f885u.post(this.f861a0);
            }
            m36913j();
        }
    }

    /* renamed from: a */
    public final float m37004a(float f) {
        return Math.min((getWidth() - getTotalPaddingRight()) - 1, Math.max(0.0f, f - getTotalPaddingLeft())) + getScrollX();
    }

    /* renamed from: a */
    public final int m37003a(float f, float f2) {
        return m36928g(Build.VERSION.SDK_INT >= 14 ? getOffsetForPosition(f, f2) : m36969b(f, f2));
    }

    /* renamed from: a */
    public final int m37002a(int i, float f) {
        return getLayout().getOffsetForHorizontal(i, m37004a(f));
    }

    /* renamed from: a */
    public int m36995a(Editable editable) {
        int i;
        int f;
        int i2 = 0;
        int i3 = 0;
        do {
            i = i3;
            if (i2 >= editable.length()) {
                break;
            }
            f = m36934f(this.f883s.findTokenEnd(editable, i2));
            i = i3 + 1;
            i2 = f;
            i3 = i;
        } while (f < editable.length());
        return i;
    }

    /* renamed from: a */
    public final Bitmap m36981a(C5607h hVar, TextPaint textPaint) {
        textPaint.setColor(m36915i(hVar));
        C1501l a = m36980a(hVar, textPaint, m36926g(hVar), m36920h(hVar));
        if (a.f909b) {
            m36979a(hVar, a);
        }
        return a.f908a;
    }

    /* renamed from: a */
    public final ListAdapter m36978a(AbstractC5610b bVar) {
        return new C5604g(getContext(), bVar.mo25010b(), bVar.mo25007e(), bVar.mo25009c(), bVar.mo25005g(), getAdapter().m25088k(), this, this.f887w, m36917i());
    }

    /* renamed from: a */
    public final C1501l m36980a(C5607h hVar, TextPaint textPaint, Drawable drawable, int i) {
        int measureText;
        int i2;
        C1501l lVar = new C1501l(null);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        int i3 = (int) this.f872h;
        float[] fArr = new float[1];
        textPaint.getTextWidths(" ", fArr);
        CharSequence a = m36974a(m36938e(hVar), textPaint, (((m36971b() - 0) - fArr[0]) - rect.left) - rect.right);
        int max = Math.max(0, (hVar.m25016n() ? this.f876l : this.f877m) + ((int) textPaint.measureText(a, 0, a.length())) + this.f877m + 0 + rect.left + rect.right);
        lVar.f908a = Bitmap.createBitmap(max, ((int) this.f874j) + i3, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(lVar.f908a);
        if (drawable != null) {
            drawable.setBounds(0, 0, max, i3);
            drawable.draw(canvas);
        } else {
            this.f882r.reset();
            this.f882r.setColor(Color.parseColor("#ffffff"));
            float f = max;
            float f2 = i3;
            canvas.drawRect(new RectF(0.0f, 0.0f, f, this.f874j + f2), this.f882r);
            this.f882r.reset();
            this.f882r.setColor(i);
            int i4 = i3 / 2;
            canvas.drawRect(new RectF(0.0f, 0.0f, f, f2), this.f882r);
        }
        canvas.drawText(a, 0, a.length(), m37007C() ? this.f877m + rect.left : ((max - rect.right) - this.f877m) - measureText, m36940e(i3), textPaint);
        lVar.f910c = m37007C() ? (max - rect.right) - 0 : rect.left;
        lVar.f911d = rect.top;
        lVar.f912e = i2 + 0;
        lVar.f913f = i3 - rect.bottom;
        return lVar;
    }

    /* renamed from: a */
    public final CharSequence m36974a(CharSequence charSequence, TextPaint textPaint, float f) {
        textPaint.setTextSize(this.f873i);
        if (f <= 0.0f && Log.isLoggable("RecipientEditTextView", 3)) {
            String str = "Max width is negative: " + f;
        }
        return TextUtils.ellipsize(charSequence, textPaint, f, TextUtils.TruncateAt.END);
    }

    @Override // p081h.p093b.p099c.p100a.C5592d.AbstractC5596d
    /* renamed from: a */
    public void mo25060a() {
        AbstractC5610b bVar = this.f840C;
        if (bVar != null) {
            m36925g(bVar);
        }
        m36905l();
    }

    @Override // p081h.p093b.p099c.p100a.C5604g.AbstractC5605a
    /* renamed from: a */
    public void mo25042a(int i) {
        ListView listView = this.f889y.getListView();
        if (listView != null && listView.getCheckedItemCount() == 0) {
            listView.setItemChecked(i, true);
        }
        this.f847J = i;
    }

    /* renamed from: a */
    public void m36999a(int i, int i2, Editable editable, boolean z) {
        if (!m37001a(i, i2)) {
            String substring = editable.toString().substring(i, i2);
            String trim = substring.trim();
            int lastIndexOf = trim.lastIndexOf(44);
            String str = substring;
            if (lastIndexOf != -1) {
                str = substring;
                if (lastIndexOf == trim.length() - 1) {
                    str = trim.substring(0, trim.length() - 1);
                }
            }
            C5607h b = m36957b(str);
            if (b != null) {
                AbstractC5610b bVar = null;
                try {
                    if (!this.f848K) {
                        bVar = z ? m36961b(b) : new C5611c(b);
                    }
                } catch (NullPointerException e) {
                    Log.e("RecipientEditTextView", e.getMessage(), e);
                    bVar = null;
                }
                editable.setSpan(bVar, i, i2, 33);
                if (bVar != null) {
                    if (this.f851O == null) {
                        this.f851O = new ArrayList<>();
                    }
                    bVar.mo25011a(str);
                    this.f851O.add(bVar);
                }
            }
        }
    }

    /* renamed from: a */
    public void m36998a(ClipData clipData) {
        if (clipData != null) {
            ClipDescription description = clipData.getDescription();
            if (description.hasMimeType("text/plain") || description.hasMimeType("text/html")) {
                removeTextChangedListener(this.f886v);
                ClipDescription description2 = clipData.getDescription();
                for (int i = 0; i < clipData.getItemCount(); i++) {
                    String mimeType = description2.getMimeType(i);
                    if ("text/plain".equals(mimeType) || "text/html".equals(mimeType)) {
                        CharSequence text = clipData.getItemAt(i).getText();
                        if (!TextUtils.isEmpty(text)) {
                            Editable text2 = getText();
                            int selectionStart = getSelectionStart();
                            int selectionEnd = getSelectionEnd();
                            if (selectionStart < 0 || selectionEnd < 1) {
                                text2.append(text);
                            } else if (selectionStart == selectionEnd) {
                                text2.insert(selectionStart, text);
                            } else {
                                text2.append(text, selectionStart, selectionEnd);
                            }
                            m36887u();
                        }
                    }
                }
                this.f885u.post(this.f861a0);
            }
        }
    }

    /* renamed from: a */
    public final void m36997a(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.RecipientEditTextView, 0, 0);
        Resources resources = getContext().getResources();
        this.f868e = obtainStyledAttributes.getDrawable(R$styleable.RecipientEditTextView_chipBackground);
        this.f871g = obtainStyledAttributes.getDrawable(R$styleable.RecipientEditTextView_invalidChipBackground);
        this.f870f = obtainStyledAttributes.getDrawable(R$styleable.RecipientEditTextView_chipDelete);
        if (this.f870f == null) {
            this.f870f = resources.getDrawable(R$drawable.ic_cancel_wht_24dp);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R$styleable.RecipientEditTextView_chipPadding, -1);
        this.f877m = dimensionPixelSize;
        this.f876l = dimensionPixelSize;
        if (this.f876l == -1) {
            int dimension = (int) resources.getDimension(R$dimen.chip_padding);
            this.f877m = dimension;
            this.f876l = dimension;
        }
        int dimension2 = (int) resources.getDimension(R$dimen.chip_padding_start);
        if (dimension2 >= 0) {
            this.f876l = dimension2;
        }
        int dimension3 = (int) resources.getDimension(R$dimen.chip_padding_end);
        if (dimension3 >= 0) {
            this.f877m = dimension3;
        }
        this.f841D = BitmapFactory.decodeResource(resources, R$drawable.ic_contact_picture);
        this.f843F = (TextView) LayoutInflater.from(getContext()).inflate(R$layout.more_item, (ViewGroup) null);
        this.f872h = obtainStyledAttributes.getDimensionPixelSize(R$styleable.RecipientEditTextView_chipHeight, -1);
        if (this.f872h == -1.0f) {
            this.f872h = resources.getDimension(R$dimen.chip_height);
        }
        this.f873i = obtainStyledAttributes.getDimensionPixelSize(R$styleable.RecipientEditTextView_chipFontSize, -1);
        if (this.f873i == -1.0f) {
            this.f873i = resources.getDimension(R$dimen.chip_text_size);
        }
        this.f881q = obtainStyledAttributes.getInt(R$styleable.RecipientEditTextView_avatarPosition, 1);
        this.f879o = obtainStyledAttributes.getBoolean(R$styleable.RecipientEditTextView_disableDelete, false);
        this.f880p = resources.getInteger(R$integer.chips_max_lines);
        this.f874j = resources.getDimensionPixelOffset(R$dimen.line_spacing_extra);
        this.f875k = resources.getDimensionPixelOffset(R$dimen.line_spacing_extra);
        this.f860a = obtainStyledAttributes.getColor(R$styleable.RecipientEditTextView_unselectedChipTextColor, resources.getColor(17170444));
        obtainStyledAttributes.getColor(R$styleable.RecipientEditTextView_selectedChipTextColor, resources.getColor(17170443));
        this.f862b = obtainStyledAttributes.getColor(R$styleable.RecipientEditTextView_unselectedChipBackgroundColor, resources.getColor(R$color.chip_background));
        obtainStyledAttributes.getColor(R$styleable.RecipientEditTextView_selectedChipBackgroundColor, resources.getColor(R$color.chip_background_selected));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public void m36996a(Bitmap bitmap, Canvas canvas, RectF rectF, RectF rectF2) {
        Matrix matrix = new Matrix();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        matrix.reset();
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
        bitmapShader.setLocalMatrix(matrix);
        this.f882r.reset();
        this.f882r.setShader(bitmapShader);
        this.f882r.setAntiAlias(true);
        this.f882r.setFilterBitmap(true);
        this.f882r.setDither(true);
        canvas.drawCircle(rectF2.centerX(), rectF2.centerY(), rectF2.width() / 2.0f, this.f882r);
        this.f882r.reset();
        this.f882r.setColor(0);
        this.f882r.setStyle(Paint.Style.STROKE);
        this.f882r.setStrokeWidth(1.0f);
        this.f882r.setAntiAlias(true);
        canvas.drawCircle(rectF2.centerX(), rectF2.centerY(), (rectF2.width() / 2.0f) - 0.5f, this.f882r);
        this.f882r.reset();
    }

    /* renamed from: a */
    public void m36993a(View view) {
        this.f838A = view;
    }

    /* renamed from: a */
    public final void m36992a(ListPopupWindow listPopupWindow) {
        listPopupWindow.setOnDismissListener(new C1496h());
    }

    /* renamed from: a */
    public final void m36991a(C1501l lVar, Bitmap bitmap) {
        m36996a(bitmap, new Canvas(lVar.f908a), new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight()), new RectF(lVar.f910c, lVar.f911d, lVar.f912e, lVar.f913f));
    }

    /* renamed from: a */
    public void m36983a(C5592d dVar) {
        this.f887w = dVar;
        this.f887w.m25073a(this);
    }

    /* renamed from: a */
    public void m36982a(C5607h hVar) {
        clearComposingText();
        Editable text = getText();
        AbstractC5610b[] q = m36895q();
        int spanEnd = (q == null || q.length <= 0) ? 0 : text.getSpanEnd(q[q.length - 1]) + 1;
        CharSequence d = m36944d(hVar);
        if (d != null) {
            text.insert(spanEnd, d);
        }
    }

    /* renamed from: a */
    public final void m36979a(C5607h hVar, C1501l lVar) {
        long a = hVar.m25039a();
        boolean z = true;
        if (!m36883w() ? a == -1 || a == -2 : a == -1) {
            z = false;
        }
        if (z) {
            byte[] j = hVar.m25020j();
            if (j == null) {
                getAdapter().m25104a(hVar, new C1498j(hVar, lVar));
            } else {
                m36991a(lVar, BitmapFactory.decodeByteArray(j, 0, j.length));
            }
        }
    }

    /* renamed from: a */
    public final void m36977a(AbstractC5610b bVar, ListPopupWindow listPopupWindow) {
        if (this.f859W) {
            int b = m36968b(getLayout().getLineForOffset(m36943d(bVar)));
            View view = this.f838A;
            if (view == null) {
                view = this;
            }
            listPopupWindow.setAnchorView(view);
            listPopupWindow.setVerticalOffset(b);
            listPopupWindow.setAdapter(m36960b(bVar));
            listPopupWindow.setOnItemClickListener(new C1490b(bVar, listPopupWindow));
            listPopupWindow.show();
            ListView listView = listPopupWindow.getListView();
            listView.setSelector(new ColorDrawable(getResources().getColor(17170445)));
            listView.setChoiceMode(1);
            listView.setItemChecked(0, true);
        }
    }

    /* renamed from: a */
    public void m36976a(AbstractC5610b bVar, C5607h hVar) {
        boolean z = bVar == this.f840C;
        if (z) {
            this.f840C = null;
        }
        int d = m36943d(bVar);
        int c = m36949c(bVar);
        m36893r().removeSpan(bVar);
        Editable text = getText();
        CharSequence d2 = m36944d(hVar);
        if (d2 != null) {
            if (d == -1 || c == -1) {
                Log.e("RecipientEditTextView", "The chip to replace does not exist but should.");
                text.insert(0, d2);
            } else if (!TextUtils.isEmpty(d2)) {
                while (c >= 0 && c < text.length() && text.charAt(c) == ' ') {
                    c++;
                }
                text.replace(d, c, d2);
            }
        }
        setCursorVisible(true);
        if (z) {
            m36935f();
        }
    }

    @TargetApi(16)
    /* renamed from: a */
    public final void m36973a(String str) {
        ViewParent parent;
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isEnabled() && Build.VERSION.SDK_INT >= 16 && (parent = getParent()) != null) {
            AccessibilityEvent obtain = AccessibilityEvent.obtain(16384);
            onInitializeAccessibilityEvent(obtain);
            obtain.getText().add(str);
            obtain.setContentDescription(null);
            parent.requestSendAccessibilityEvent(this, obtain);
        }
    }

    /* renamed from: a */
    public void m36972a(boolean z) {
        this.f849L = z;
    }

    /* renamed from: a */
    public final boolean m37001a(int i, int i2) {
        boolean z = true;
        if (this.f848K) {
            return true;
        }
        AbstractC5610b[] bVarArr = (AbstractC5610b[]) m36893r().getSpans(i, i2, AbstractC5610b.class);
        if (bVarArr == null || bVarArr.length <= 0) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x009c, code lost:
        if (r0 == ';') goto L_0x009f;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m37000a(int r6, int r7, android.text.Editable r8) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.p018ex.chips.RecipientEditTextView.m37000a(int, int, android.text.Editable):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0056, code lost:
        if (r0 == ';') goto L_0x0059;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m36975a(java.lang.CharSequence r5) {
        /*
            r4 = this;
            r0 = r5
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x000d
            r0 = 0
            return r0
        L_0x000d:
            r0 = r5
            int r0 = r0.length()
            r8 = r0
            r0 = r4
            android.widget.MultiAutoCompleteTextView$Tokenizer r0 = r0.f883s
            r1 = r5
            r2 = r8
            int r0 = r0.findTokenStart(r1, r2)
            r9 = r0
            r0 = r5
            java.lang.String r0 = r0.toString()
            r1 = r9
            r2 = r8
            java.lang.String r0 = r0.substring(r1, r2)
            java.lang.String r0 = r0.trim()
            r5 = r0
            r0 = r7
            r6 = r0
            r0 = r5
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x005b
            r0 = r5
            r1 = r5
            int r1 = r1.length()
            r2 = 1
            int r1 = r1 - r2
            char r0 = r0.charAt(r1)
            r8 = r0
            r0 = r8
            r1 = 44
            if (r0 == r1) goto L_0x0059
            r0 = r7
            r6 = r0
            r0 = r8
            r1 = 59
            if (r0 != r1) goto L_0x005b
        L_0x0059:
            r0 = 1
            r6 = r0
        L_0x005b:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.p018ex.chips.RecipientEditTextView.m36975a(java.lang.CharSequence):boolean");
    }

    @Override // android.widget.TextView
    public void append(CharSequence charSequence, int i, int i2) {
        TextWatcher textWatcher = this.f886v;
        if (textWatcher != null) {
            removeTextChangedListener(textWatcher);
        }
        super.append(charSequence, i, i2);
        if (!TextUtils.isEmpty(charSequence) && TextUtils.getTrimmedLength(charSequence) > 0) {
            String charSequence2 = charSequence.toString();
            String str = charSequence2;
            if (!charSequence2.trim().endsWith(String.valueOf(','))) {
                String str2 = f835f0;
                super.append(str2, 0, str2.length());
                str = charSequence2 + f835f0;
            }
            if (!TextUtils.isEmpty(str) && TextUtils.getTrimmedLength(str) > 0) {
                this.f846I++;
                this.f845H.add(str);
            }
        }
        if (this.f846I > 0) {
            m36881x();
        }
        this.f885u.post(this.f861a0);
    }

    /* renamed from: b */
    public final float m36971b() {
        return (((getWidth() - getPaddingLeft()) - getPaddingRight()) - this.f876l) - this.f877m;
    }

    /* renamed from: b */
    public final int m36970b(float f) {
        return getLayout().getLineForVertical((int) (Math.min((getHeight() - getTotalPaddingBottom()) - 1, Math.max(0.0f, f - getTotalPaddingLeft())) + getScrollY()));
    }

    /* renamed from: b */
    public final int m36969b(float f, float f2) {
        if (getLayout() == null) {
            return -1;
        }
        return m37002a(m36970b(f2), f);
    }

    /* renamed from: b */
    public final int m36968b(int i) {
        return -getResources().getDimensionPixelOffset(getLineCount() > 1 ? R$dimen.chip_dropdown_bottom_offset_two_line : R$dimen.chip_dropdown_bottom_offset_one_line);
    }

    /* renamed from: b */
    public final ListAdapter m36960b(AbstractC5610b bVar) {
        return new C5608i(getContext(), bVar.mo25008d(), this.f887w, m36917i());
    }

    /* renamed from: b */
    public C5607h m36957b(String str) {
        boolean z;
        String str2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (m36883w() && m36924g(str)) {
            return C5607h.m25028b(str, true);
        }
        Rfc822Token[] rfc822TokenArr = Rfc822Tokenizer.tokenize(str);
        boolean c = m36948c(str);
        if (c && rfc822TokenArr != null && rfc822TokenArr.length > 0) {
            String name = rfc822TokenArr[0].getName();
            if (!TextUtils.isEmpty(name)) {
                return C5607h.m25033a(name, rfc822TokenArr[0].getAddress(), c);
            }
            String address = rfc822TokenArr[0].getAddress();
            if (!TextUtils.isEmpty(address)) {
                return C5607h.m25032a(address, c);
            }
        }
        AutoCompleteTextView.Validator validator = this.f884t;
        if (validator == null || c) {
            str2 = null;
            z = c;
        } else {
            String charSequence = validator.fixText(str).toString();
            str2 = charSequence;
            z = c;
            if (!TextUtils.isEmpty(charSequence)) {
                if (charSequence.contains(str)) {
                    Rfc822Token[] rfc822TokenArr2 = Rfc822Tokenizer.tokenize(charSequence);
                    str2 = charSequence;
                    z = c;
                    if (rfc822TokenArr2.length > 0) {
                        str2 = rfc822TokenArr2[0].getAddress();
                        z = true;
                    }
                } else {
                    str2 = null;
                    z = false;
                }
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            str = str2;
        }
        return C5607h.m25032a(str, z);
    }

    /* renamed from: b */
    public final AbstractC5610b m36961b(C5607h hVar) {
        TextPaint paint = getPaint();
        float textSize = paint.getTextSize();
        int color = paint.getColor();
        Bitmap a = m36981a(hVar, paint);
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), a);
        bitmapDrawable.setBounds(0, 0, a.getWidth(), a.getHeight());
        C5614f fVar = new C5614f(bitmapDrawable, hVar);
        fVar.m25015a(this.f874j);
        fVar.m25014a(this.f875k);
        paint.setTextSize(textSize);
        paint.setColor(color);
        return fVar;
    }

    /* renamed from: b */
    public final void m36967b(int i, int i2) {
        if (i == -1 || i2 == -1) {
            dismissDropDown();
            return;
        }
        Editable text = getText();
        setSelection(i2);
        String substring = getText().toString().substring(i, i2);
        if (!TextUtils.isEmpty(substring)) {
            C5607h a = C5607h.m25032a(substring, m36948c(substring));
            QwertyKeyListener.markAsReplaced(text, i, i2, "");
            CharSequence d = m36944d(a);
            int selectionEnd = getSelectionEnd();
            if (d != null && i > -1 && selectionEnd > -1) {
                text.replace(i, selectionEnd, d);
            }
        }
        dismissDropDown();
    }

    /* renamed from: b */
    public final void m36959b(AbstractC5610b bVar, ListPopupWindow listPopupWindow) {
        new AsyncTaskC1500k(bVar, listPopupWindow).execute((Object[]) null);
    }

    /* renamed from: b */
    public void m36956b(boolean z) {
        AbstractC5610b o = m36899o();
        if (o != null && (o instanceof C5612d)) {
            ((C5612d) o).f14023b = z;
        }
    }

    /* renamed from: b */
    public boolean m36958b(CharSequence charSequence) {
        boolean z = false;
        int selectionEnd = getSelectionEnd() == 0 ? 0 : getSelectionEnd() - 1;
        int length = length() - 1;
        char charAt = selectionEnd != length ? charSequence.charAt(selectionEnd) : charSequence.charAt(length);
        if (charAt == ',' || charAt == ';') {
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    public final int m36955c() {
        TextPaint paint = getPaint();
        this.f864c.setEmpty();
        paint.getTextBounds("a", 0, 1, this.f864c);
        Rect rect = this.f864c;
        rect.left = 0;
        rect.right = 0;
        return rect.height();
    }

    /* renamed from: c */
    public final int m36949c(AbstractC5610b bVar) {
        return m36893r().getSpanEnd(bVar);
    }

    /* renamed from: c */
    public final C1505n m36954c(int i) {
        String format = String.format(this.f843F.getText().toString(), Integer.valueOf(i));
        this.f882r.set(getPaint());
        this.f882r.setTextSize(this.f843F.getTextSize());
        this.f882r.setColor(this.f843F.getCurrentTextColor());
        int measureText = ((int) this.f882r.measureText(format)) + this.f843F.getPaddingLeft() + this.f843F.getPaddingRight();
        int i2 = (int) this.f872h;
        Bitmap createBitmap = Bitmap.createBitmap(measureText, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Layout layout = getLayout();
        canvas.drawText(format, 0, format.length(), 0.0f, layout != null ? i2 - layout.getLineDescent(0) : i2, this.f882r);
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), createBitmap);
        bitmapDrawable.setBounds(0, 0, measureText, i2);
        return new C1505n(this, bitmapDrawable);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
        if (android.text.TextUtils.equals(r0, r0) != false) goto L_0x001b;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m36950c(p081h.p093b.p099c.p100a.C5607h r7) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r0 = r0.m25023g()
            r8 = r0
            r0 = r7
            java.lang.String r0 = r0.m25027c()
            r9 = r0
            r0 = r8
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x001b
            r0 = r8
            r7 = r0
            r0 = r8
            r1 = r9
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L_0x001d
        L_0x001b:
            r0 = 0
            r7 = r0
        L_0x001d:
            r0 = r6
            boolean r0 = r0.m36883w()
            if (r0 == 0) goto L_0x0033
            r0 = r9
            boolean r0 = m36924g(r0)
            if (r0 == 0) goto L_0x0033
            r0 = r9
            java.lang.String r0 = r0.trim()
            r7 = r0
            goto L_0x0067
        L_0x0033:
            r0 = r9
            r8 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0056
            r0 = r9
            android.text.util.Rfc822Token[] r0 = android.text.util.Rfc822Tokenizer.tokenize(r0)
            r10 = r0
            r0 = r9
            r8 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0056
            r0 = r9
            r8 = r0
            r0 = r10
            int r0 = r0.length
            if (r0 <= 0) goto L_0x0056
            r0 = r10
            r1 = 0
            r0 = r0[r1]
            java.lang.String r0 = r0.getAddress()
            r8 = r0
        L_0x0056:
            android.text.util.Rfc822Token r0 = new android.text.util.Rfc822Token
            r1 = r0
            r2 = r7
            r3 = r8
            r4 = 0
            r1.<init>(r2, r3, r4)
            java.lang.String r0 = r0.toString()
            java.lang.String r0 = r0.trim()
            r7 = r0
        L_0x0067:
            r0 = r7
            java.lang.String r1 = ","
            int r0 = r0.indexOf(r1)
            r11 = r0
            r0 = r7
            r8 = r0
            r0 = r6
            android.widget.MultiAutoCompleteTextView$Tokenizer r0 = r0.f883s
            if (r0 == 0) goto L_0x009d
            r0 = r7
            r8 = r0
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x009d
            r0 = r7
            r8 = r0
            r0 = r11
            r1 = r7
            int r1 = r1.length()
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L_0x009d
            r0 = r6
            android.widget.MultiAutoCompleteTextView$Tokenizer r0 = r0.f883s
            r1 = r7
            java.lang.CharSequence r0 = r0.terminateToken(r1)
            java.lang.String r0 = (java.lang.String) r0
            r8 = r0
        L_0x009d:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.p018ex.chips.RecipientEditTextView.m36950c(h.b.c.a.h):java.lang.String");
    }

    /* renamed from: c */
    public final boolean m36953c(int i, int i2) {
        return !this.f848K && hasFocus() && enoughToFilter() && !m37001a(i, i2);
    }

    /* renamed from: c */
    public final boolean m36948c(String str) {
        AutoCompleteTextView.Validator validator = this.f884t;
        return validator == null ? true : validator.isValid(str);
    }

    /* renamed from: d */
    public final int m36943d(AbstractC5610b bVar) {
        return m36893r().getSpanStart(bVar);
    }

    /* renamed from: d */
    public final AbstractC5610b m36946d(int i) {
        AbstractC5610b[] bVarArr;
        Spannable r = m36893r();
        for (AbstractC5610b bVar : (AbstractC5610b[]) r.getSpans(0, r.length(), AbstractC5610b.class)) {
            int d = m36943d(bVar);
            int c = m36949c(bVar);
            if (i >= d && i <= c) {
                return bVar;
            }
        }
        return null;
    }

    /* renamed from: d */
    public final CharSequence m36944d(C5607h hVar) {
        String c = m36950c(hVar);
        if (TextUtils.isEmpty(c)) {
            return null;
        }
        int length = c.length();
        SpannableString spannableString = new SpannableString(c);
        if (!this.f848K) {
            try {
                m36956b(true);
                AbstractC5610b b = m36961b(hVar);
                spannableString.setSpan(b, 0, length - 1, 33);
                b.mo25011a(spannableString.toString());
            } catch (NullPointerException e) {
                Log.e("RecipientEditTextView", e.getMessage(), e);
                return null;
            }
        }
        m36911j(hVar);
        return spannableString;
    }

    /* renamed from: d */
    public final void m36947d() {
        AbstractC5610b[] q = m36895q();
        if (q != null) {
            for (AbstractC5610b bVar : q) {
                Rect a = bVar.mo25012a();
                if (getWidth() > 0 && a.right - a.left > (getWidth() - getPaddingLeft()) - getPaddingRight()) {
                    m36976a(bVar, bVar.mo25008d());
                }
            }
        }
    }

    /* renamed from: d */
    public final boolean m36942d(String str) {
        AutoCompleteTextView.Validator validator;
        return !TextUtils.isEmpty(str) && (validator = this.f884t) != null && validator.isValid(str);
    }

    /* renamed from: e */
    public float m36940e(int i) {
        return i - ((i - this.f878n) / 2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
        if (android.text.TextUtils.equals(r0, r0) != false) goto L_0x001b;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m36938e(p081h.p093b.p099c.p100a.C5607h r7) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r0 = r0.m25023g()
            r8 = r0
            r0 = r7
            java.lang.String r0 = r0.m25027c()
            r9 = r0
            r0 = r8
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x001b
            r0 = r8
            r7 = r0
            r0 = r8
            r1 = r9
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L_0x001d
        L_0x001b:
            r0 = 0
            r7 = r0
        L_0x001d:
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0026
            r0 = r7
            return r0
        L_0x0026:
            r0 = r9
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x002f
            r0 = r9
            return r0
        L_0x002f:
            android.text.util.Rfc822Token r0 = new android.text.util.Rfc822Token
            r1 = r0
            r2 = r7
            r3 = r9
            r4 = 0
            r1.<init>(r2, r3, r4)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.p018ex.chips.RecipientEditTextView.m36938e(h.b.c.a.h):java.lang.String");
    }

    /* renamed from: e */
    public final void m36936e(String str) {
        if (this.f859W) {
            this.f855S = str;
            this.f854R.setTitle(str);
            this.f854R.setContentView(R$layout.copy_chip_dialog_layout);
            this.f854R.setCancelable(true);
            this.f854R.setCanceledOnTouchOutside(true);
            Button button = (Button) this.f854R.findViewById(16908313);
            button.setOnClickListener(this);
            button.setText(getContext().getResources().getString(m36883w() ? R$string.copy_number : R$string.copy_email));
            this.f854R.setOnDismissListener(this);
            this.f854R.show();
        }
    }

    /* renamed from: e */
    public final boolean m36941e() {
        ArrayList<AbstractC5610b> arrayList;
        return this.f846I > 0 || ((arrayList = this.f852P) != null && arrayList.size() > 0);
    }

    /* renamed from: e */
    public boolean m36937e(AbstractC5610b bVar) {
        long b = bVar.mo25010b();
        return b == -1 || (!m36883w() && b == -2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        if (r0 == ';') goto L_0x0024;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int m36934f(int r4) {
        /*
            r3 = this;
            r0 = r4
            r1 = r3
            int r1 = r1.length()
            if (r0 < r1) goto L_0x000a
            r0 = r4
            return r0
        L_0x000a:
            r0 = r3
            android.text.Editable r0 = r0.getText()
            java.lang.String r0 = r0.toString()
            r1 = r4
            char r0 = r0.charAt(r1)
            r5 = r0
            r0 = r5
            r1 = 44
            if (r0 == r1) goto L_0x0024
            r0 = r4
            r6 = r0
            r0 = r5
            r1 = 59
            if (r0 != r1) goto L_0x0028
        L_0x0024:
            r0 = r4
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
        L_0x0028:
            r0 = r6
            r4 = r0
            r0 = r6
            r1 = r3
            int r1 = r1.length()
            if (r0 >= r1) goto L_0x0048
            r0 = r6
            r4 = r0
            r0 = r3
            android.text.Editable r0 = r0.getText()
            java.lang.String r0 = r0.toString()
            r1 = r6
            char r0 = r0.charAt(r1)
            r1 = 32
            if (r0 != r1) goto L_0x0048
            r0 = r6
            r1 = 1
            int r0 = r0 + r1
            r4 = r0
        L_0x0048:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.p018ex.chips.RecipientEditTextView.m36934f(int):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0065, code lost:
        if (r0.isValid(r0) == false) goto L_0x0068;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p081h.p093b.p099c.p100a.C5607h m36932f(p081h.p093b.p099c.p100a.C5607h r6) {
        /*
            r5 = this;
            r0 = r6
            if (r0 != 0) goto L_0x0006
            r0 = 0
            return r0
        L_0x0006:
            r0 = r6
            java.lang.String r0 = r0.m25027c()
            r7 = r0
            r0 = r5
            boolean r0 = r0.m36883w()
            if (r0 != 0) goto L_0x002d
            r0 = r6
            long r0 = r0.m25039a()
            r1 = -2
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x002d
            r0 = r6
            java.lang.String r0 = r0.m25023g()
            r1 = r7
            r2 = r6
            boolean r2 = r2.m25016n()
            h.b.c.a.h r0 = p081h.p093b.p099c.p100a.C5607h.m25033a(r0, r1, r2)
            r8 = r0
            goto L_0x0071
        L_0x002d:
            r0 = r6
            r8 = r0
            r0 = r6
            long r0 = r0.m25039a()
            boolean r0 = p081h.p093b.p099c.p100a.C5607h.m25037a(r0)
            if (r0 == 0) goto L_0x0071
            r0 = r6
            java.lang.String r0 = r0.m25023g()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0068
            r0 = r6
            java.lang.String r0 = r0.m25023g()
            r1 = r7
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 != 0) goto L_0x0068
            r0 = r5
            android.widget.AutoCompleteTextView$Validator r0 = r0.f884t
            r9 = r0
            r0 = r6
            r8 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0071
            r0 = r6
            r8 = r0
            r0 = r9
            r1 = r7
            boolean r0 = r0.isValid(r1)
            if (r0 != 0) goto L_0x0071
        L_0x0068:
            r0 = r7
            r1 = r6
            boolean r1 = r1.m25016n()
            h.b.c.a.h r0 = p081h.p093b.p099c.p100a.C5607h.m25032a(r0, r1)
            r8 = r0
        L_0x0071:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.p018ex.chips.RecipientEditTextView.m36932f(h.b.c.a.h):h.b.c.a.h");
    }

    /* renamed from: f */
    public void m36935f() {
        AbstractC5610b bVar = this.f840C;
        if (bVar != null) {
            m36906k(bVar);
            this.f840C = null;
        }
        setCursorVisible(true);
        setSelection(getText().length());
    }

    /* renamed from: f */
    public void m36931f(AbstractC5610b bVar) {
        if (bVar.isSelected()) {
            m36935f();
        }
    }

    /* renamed from: g */
    public final int m36928g(int i) {
        Editable text = getText();
        int length = text.length();
        for (int i2 = length - 1; i2 >= 0 && text.charAt(i2) == ' '; i2--) {
            length--;
        }
        if (i >= length) {
            return i;
        }
        Editable text2 = getText();
        while (i >= 0 && m36994a(text2, i) == -1 && m36946d(i) == null) {
            i--;
        }
        return i;
    }

    /* renamed from: g */
    public Drawable m36926g(C5607h hVar) {
        return hVar.m25016n() ? this.f868e : this.f871g;
    }

    /* renamed from: g */
    public final void m36929g() {
        if (this.f883s != null) {
            Editable text = getText();
            int selectionEnd = getSelectionEnd();
            int findTokenStart = this.f883s.findTokenStart(text, selectionEnd);
            if (m36953c(findTokenStart, selectionEnd)) {
                m37000a(findTokenStart, selectionEnd, text);
            }
            setSelection(getText().length());
        }
    }

    /* renamed from: g */
    public void m36925g(AbstractC5610b bVar) {
        Spannable r = m36893r();
        int spanStart = r.getSpanStart(bVar);
        int spanEnd = r.getSpanEnd(bVar);
        Editable text = getText();
        boolean z = bVar == this.f840C;
        int i = spanEnd;
        if (z) {
            this.f840C = null;
            i = spanEnd;
        }
        while (i >= 0 && i < text.length() && text.charAt(i) == ' ') {
            i++;
        }
        r.removeSpan(bVar);
        m36956b(false);
        if (spanStart >= 0 && i > 0) {
            text.delete(spanStart, i);
        }
        if (z) {
            m36935f();
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public C5579b getAdapter() {
        return (C5579b) super.getAdapter();
    }

    /* renamed from: h */
    public final int m36922h(int i) {
        C5607h f = m36932f(getAdapter().getItem(i));
        if (f == null) {
            return -1;
        }
        clearComposingText();
        int selectionEnd = getSelectionEnd();
        int findTokenStart = this.f883s.findTokenStart(getText(), selectionEnd);
        Editable text = getText();
        QwertyKeyListener.markAsReplaced(text, findTokenStart, selectionEnd, "");
        CharSequence d = m36944d(f);
        if (d != null && findTokenStart >= 0 && selectionEnd >= 0) {
            text.replace(findTokenStart, selectionEnd, d);
        }
        m36879z();
        return selectionEnd - findTokenStart;
    }

    /* renamed from: h */
    public final int m36920h(C5607h hVar) {
        return hVar.m25016n() ? this.f862b : getResources().getColor(R$color.chip_background_invalid);
    }

    /* renamed from: h */
    public final void m36919h(AbstractC5610b bVar) {
        if (m36914i(bVar)) {
            CharSequence value = bVar.getValue();
            Editable text = getText();
            Spannable r = m36893r();
            int spanStart = r.getSpanStart(bVar);
            int spanEnd = r.getSpanEnd(bVar);
            r.removeSpan(bVar);
            int i = spanEnd;
            if (spanEnd - spanStart == text.length() - 1) {
                i = spanEnd + 1;
            }
            text.delete(spanStart, i);
            setCursorVisible(true);
            setSelection(text.length());
            text.append(value);
            this.f840C = m36961b(C5607h.m25032a((String) value, m36948c(value.toString())));
            return;
        }
        boolean z = true;
        if (bVar.mo25010b() != -2) {
            z = getAdapter().mo7931g();
        }
        if (!z || !this.f848K) {
            this.f840C = bVar;
            setSelection(getText().getSpanEnd(this.f840C));
            setCursorVisible(false);
            if (z) {
                m36977a(bVar, this.f890z);
            } else {
                m36959b(bVar, this.f889y);
            }
        }
    }

    /* renamed from: h */
    public final boolean m36923h() {
        if (this.f883s == null) {
            return false;
        }
        Editable text = getText();
        int selectionEnd = getSelectionEnd();
        int findTokenStart = this.f883s.findTokenStart(text, selectionEnd);
        if (!m36953c(findTokenStart, selectionEnd)) {
            return false;
        }
        int f = m36934f(this.f883s.findTokenEnd(getText(), findTokenStart));
        if (f == getSelectionEnd()) {
            return m37000a(findTokenStart, selectionEnd, text);
        }
        m36967b(findTokenStart, f);
        return true;
    }

    /* renamed from: i */
    public final int m36915i(C5607h hVar) {
        return hVar.m25016n() ? this.f860a : getResources().getColor(17170444);
    }

    /* renamed from: i */
    public final StateListDrawable m36917i() {
        StateListDrawable stateListDrawable = new StateListDrawable();
        if (!this.f879o) {
            stateListDrawable.addState(new int[]{16843518}, this.f870f);
        }
        stateListDrawable.addState(new int[0], null);
        return stateListDrawable;
    }

    /* renamed from: i */
    public final boolean m36914i(AbstractC5610b bVar) {
        long b = bVar.mo25010b();
        return b == -1 || (!m36883w() && b == -2);
    }

    /* renamed from: j */
    public void m36913j() {
        if (this.f848K) {
            m36909k();
        } else if (this.f849L) {
            C5612d[] dVarArr = (C5612d[]) m36893r().getSpans(0, getText().length(), C1505n.class);
            if (dVarArr.length > 0) {
                m36893r().removeSpan(dVarArr[0]);
            }
            AbstractC5610b[] q = m36895q();
            if (q == null || q.length <= 2) {
                this.f842E = null;
                return;
            }
            Spannable r = m36893r();
            int length = q.length;
            int i = length - 2;
            C1505n c = m36954c(i);
            this.f852P = new ArrayList<>();
            Editable text = getText();
            int i2 = length - i;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = i2; i5 < q.length; i5++) {
                this.f852P.add(q[i5]);
                if (i5 == i2) {
                    i4 = r.getSpanStart(q[i5]);
                }
                if (i5 == q.length - 1) {
                    i3 = r.getSpanEnd(q[i5]);
                }
                ArrayList<AbstractC5610b> arrayList = this.f851O;
                if (arrayList == null || !arrayList.contains(q[i5])) {
                    q[i5].mo25011a(text.toString().substring(r.getSpanStart(q[i5]), r.getSpanEnd(q[i5])));
                }
                r.removeSpan(q[i5]);
            }
            int i6 = i3;
            if (i3 < text.length()) {
                i6 = text.length();
            }
            int max = Math.max(i4, i6);
            int min = Math.min(i4, i6);
            SpannableString spannableString = new SpannableString(text.subSequence(min, max));
            spannableString.setSpan(c, 0, spannableString.length(), 33);
            text.replace(min, max, spannableString);
            this.f842E = c;
            if (!m36883w() && getLineCount() > this.f880p) {
                setMaxLines(getLineCount());
            }
        }
    }

    /* renamed from: j */
    public void m36911j(C5607h hVar) {
    }

    /* renamed from: j */
    public final void m36910j(AbstractC5610b bVar) {
        String c = bVar.mo25008d().m25027c();
        startDrag(ClipData.newPlainText(c, c + ','), new C1506o(this, bVar), null, 0);
        m36925g(bVar);
    }

    /* renamed from: k */
    public void m36909k() {
        Editable text = getText();
        int i = 0;
        for (int i2 = 0; i2 < 2; i2++) {
            i = m36934f(this.f883s.findTokenEnd(text, i));
        }
        C1505n c = m36954c(m36995a(text) - 2);
        SpannableString spannableString = new SpannableString(text.subSequence(i, text.length()));
        spannableString.setSpan(c, 0, spannableString.length(), 33);
        text.replace(i, text.length(), spannableString);
        this.f842E = c;
    }

    /* renamed from: k */
    public void m36907k(C5607h hVar) {
        AbstractC5610b[] bVarArr;
        for (AbstractC5610b bVar : (AbstractC5610b[]) getText().getSpans(0, getText().length(), AbstractC5610b.class)) {
            C5607h d = bVar.mo25008d();
            if (d != null && d.m25016n() && d.m25036a(hVar)) {
                m36925g(bVar);
            }
        }
    }

    /* renamed from: k */
    public final void m36906k(AbstractC5610b bVar) {
        int d = m36943d(bVar);
        int c = m36949c(bVar);
        Editable text = getText();
        this.f840C = null;
        if (d == -1 || c == -1) {
            setSelection(text.length());
            m36923h();
        } else {
            m36893r().removeSpan(bVar);
            QwertyKeyListener.markAsReplaced(text, d, c, "");
            text.removeSpan(bVar);
            try {
                if (!this.f848K) {
                    text.setSpan(m36961b(bVar.mo25008d()), d, c, 33);
                }
            } catch (NullPointerException e) {
                Log.e("RecipientEditTextView", e.getMessage(), e);
            }
        }
        setCursorVisible(true);
        setSelection(text.length());
        ListPopupWindow listPopupWindow = this.f889y;
        if (listPopupWindow != null && listPopupWindow.isShowing()) {
            this.f889y.dismiss();
        }
    }

    /* renamed from: l */
    public final void m36905l() {
        ListPopupWindow listPopupWindow = this.f889y;
        if (listPopupWindow != null && listPopupWindow.isShowing()) {
            this.f889y.dismiss();
        }
        ListPopupWindow listPopupWindow2 = this.f890z;
        if (listPopupWindow2 != null && listPopupWindow2.isShowing()) {
            this.f890z.dismiss();
        }
        setSelection(getText().length());
    }

    /* renamed from: m */
    public final void m36903m() {
        if (this.f849L) {
            setMaxLines(Integer.MAX_VALUE);
        }
        m36880y();
        setCursorVisible(true);
        Editable text = getText();
        setSelection((text == null || text.length() <= 0) ? 0 : text.length());
        ArrayList<AbstractC5610b> arrayList = this.f851O;
        if (arrayList != null && arrayList.size() > 0) {
            new AsyncTaskC1508q(this, null).execute(new Void[0]);
            this.f851O = null;
        }
    }

    /* renamed from: n */
    public final boolean m36901n() {
        View focusSearch = focusSearch(130);
        if (focusSearch == null) {
            return false;
        }
        focusSearch.requestFocus();
        return true;
    }

    /* renamed from: o */
    public AbstractC5610b m36899o() {
        AbstractC5610b[] q = m36895q();
        return (q == null || q.length <= 0) ? null : q[q.length - 1];
    }

    @Override // android.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return false;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f859W = true;
        int dropDownAnchor = getDropDownAnchor();
        if (dropDownAnchor != -1) {
            this.f888x = getRootView().findViewById(dropDownAnchor);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ((ClipboardManager) getContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("", this.f855S));
        this.f854R.dismiss();
    }

    @Override // android.view.ActionMode.Callback
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        return false;
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(@NonNull EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        int i = editorInfo.imeOptions;
        int i2 = i & 255;
        if ((i2 & 6) != 0) {
            editorInfo.imeOptions = i ^ i2;
            editorInfo.imeOptions |= 6;
        }
        int i3 = editorInfo.imeOptions;
        if ((1073741824 & i3) != 0) {
            editorInfo.imeOptions = i3 & (-1073741825);
        }
        editorInfo.actionId = 6;
        editorInfo.actionLabel = Build.VERSION.SDK_INT >= 21 ? null : getContext().getString(R$string.action_label);
        return onCreateInputConnection;
    }

    @Override // android.view.ActionMode.Callback
    public void onDestroyActionMode(ActionMode actionMode) {
    }

    @Override // android.widget.AutoCompleteTextView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f859W = false;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f855S = null;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onDragEvent(@NonNull DragEvent dragEvent) {
        int action = dragEvent.getAction();
        if (action == 1) {
            return dragEvent.getClipDescription().hasMimeType("text/plain");
        }
        if (action == 3) {
            m36998a(dragEvent.getClipData());
            return true;
        } else if (action != 5) {
            return false;
        } else {
            requestFocus();
            return true;
        }
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        if (m36923h()) {
            return true;
        }
        if (this.f840C == null) {
            return m36901n();
        }
        m36935f();
        ListPopupWindow listPopupWindow = this.f889y;
        if (listPopupWindow != null && listPopupWindow.isShowing()) {
            this.f889y.dismiss();
        }
        ListPopupWindow listPopupWindow2 = this.f890z;
        if (listPopupWindow2 == null || !listPopupWindow2.isShowing()) {
            return true;
        }
        this.f890z.dismiss();
        return true;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!z) {
            m37006D();
        } else {
            m36903m();
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        int h;
        AbstractC1507p pVar;
        if (i >= 0 && (h = m36922h(i)) > -1 && (pVar = this.f869e0) != null) {
            pVar.m36873a(h, i);
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, @NonNull KeyEvent keyEvent) {
        if (this.f840C != null && i == 67) {
            ListPopupWindow listPopupWindow = this.f889y;
            if (listPopupWindow != null && listPopupWindow.isShowing()) {
                this.f889y.dismiss();
            }
            m36925g(this.f840C);
        }
        if ((i == 23 || i == 66) && keyEvent.hasNoModifiers()) {
            if (m36923h()) {
                return true;
            }
            if (this.f840C != null) {
                m36935f();
                return true;
            } else if (m36901n()) {
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public boolean onKeyPreIme(int i, @NonNull KeyEvent keyEvent) {
        if (i != 4 || this.f840C == null) {
            return super.onKeyPreIme(i, keyEvent);
        }
        m36935f();
        return true;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, @NonNull KeyEvent keyEvent) {
        if (i == 61 && keyEvent.hasNoModifiers()) {
            if (this.f840C != null) {
                m36935f();
            } else {
                m36923h();
            }
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        AbstractC5610b d;
        if (this.f840C != null || (d = m36946d(m37003a(motionEvent.getX(), motionEvent.getY()))) == null) {
            return;
        }
        if (this.f858V) {
            m36910j(d);
        } else {
            m36936e(d.mo25008d().m25027c());
        }
    }

    @Override // android.view.ActionMode.Callback
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return false;
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!TextUtils.isEmpty(getText())) {
            super.onRestoreInstanceState(null);
        } else {
            super.onRestoreInstanceState(parcelable);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        m36935f();
        return super.onSaveInstanceState();
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override // android.widget.TextView
    public void onSelectionChanged(int i, int i2) {
        AbstractC5610b o = m36899o();
        if (this.f840C == null && o != null && i < m36893r().getSpanEnd(o)) {
            setSelection(Math.min(m36893r().getSpanEnd(o) + 1, getText().length()));
        }
        super.onSelectionChanged(i, i2);
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (!(i == 0 || i2 == 0)) {
            if (this.f846I > 0) {
                m36881x();
            } else {
                m36947d();
            }
        }
        if (this.f856T == null && !this.f857U) {
            ViewParent parent = getParent();
            while (parent != null && !(parent instanceof ScrollView)) {
                parent = parent.getParent();
            }
            if (parent != null) {
                this.f856T = (ScrollView) parent;
            }
            this.f857U = true;
        }
    }

    @Override // android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        if (i != 16908322) {
            return super.onTextContextMenuItem(i);
        }
        m36998a(((ClipboardManager) getContext().getSystemService("clipboard")).getPrimaryClip());
        return true;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        if (!isFocused()) {
            return super.onTouchEvent(motionEvent);
        }
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        int action = motionEvent.getAction();
        if (this.f840C == null) {
            this.f853Q.onTouchEvent(motionEvent);
        }
        boolean z = onTouchEvent;
        boolean z2 = false;
        if (this.f855S == null) {
            z = onTouchEvent;
            z2 = false;
            if (action == 1) {
                AbstractC5610b d = m36946d(m37003a(motionEvent.getX(), motionEvent.getY()));
                if (d != null) {
                    AbstractC5610b bVar = this.f840C;
                    if (bVar == null || bVar == d) {
                        AbstractC5610b bVar2 = this.f840C;
                        if (bVar2 == null) {
                            m36923h();
                            m36919h(d);
                        } else {
                            m36931f(bVar2);
                        }
                    } else {
                        m36935f();
                        m36919h(d);
                    }
                    z = true;
                } else {
                    AbstractC5610b bVar3 = this.f840C;
                    z = onTouchEvent;
                    z2 = false;
                    if (bVar3 != null) {
                        z = onTouchEvent;
                        z2 = false;
                        if (m36914i(bVar3)) {
                            z = onTouchEvent;
                        }
                    }
                }
                z2 = true;
            }
        }
        if (action == 1 && !z2) {
            m36935f();
        }
        return z;
    }

    /* renamed from: p */
    public C5612d m36897p() {
        C1505n[] nVarArr = (C1505n[]) m36893r().getSpans(0, getText().length(), C1505n.class);
        return (nVarArr == null || nVarArr.length <= 0) ? null : nVarArr[0];
    }

    @Override // android.widget.MultiAutoCompleteTextView, android.widget.AutoCompleteTextView
    public void performFiltering(@NonNull CharSequence charSequence, int i) {
        boolean a = m36975a(charSequence);
        if (enoughToFilter() && !a) {
            int selectionEnd = getSelectionEnd();
            AbstractC5610b[] bVarArr = (AbstractC5610b[]) m36893r().getSpans(this.f883s.findTokenStart(charSequence, selectionEnd), selectionEnd, AbstractC5610b.class);
            if (bVarArr != null && bVarArr.length > 0) {
                dismissDropDown();
                return;
            }
        } else if (a) {
            dismissDropDown();
            return;
        }
        super.performFiltering(charSequence, i);
    }

    @Override // android.widget.MultiAutoCompleteTextView, android.widget.AutoCompleteTextView
    public void performValidation() {
    }

    /* renamed from: q */
    public AbstractC5610b[] m36895q() {
        ArrayList arrayList = new ArrayList(Arrays.asList((AbstractC5610b[]) m36893r().getSpans(0, getText().length(), AbstractC5610b.class)));
        Collections.sort(arrayList, new C1489a(this, m36893r()));
        return (AbstractC5610b[]) arrayList.toArray(new AbstractC5610b[arrayList.size()]);
    }

    /* renamed from: r */
    public Spannable m36893r() {
        return getText();
    }

    @Override // android.widget.TextView
    public void removeTextChangedListener(TextWatcher textWatcher) {
        this.f886v = null;
        super.removeTextChangedListener(textWatcher);
    }

    @Override // android.widget.MultiAutoCompleteTextView, android.widget.AutoCompleteTextView
    public void replaceText(CharSequence charSequence) {
    }

    /* renamed from: s */
    public int m36891s() {
        return getWidth();
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(@NonNull T t) {
        super.setAdapter(t);
        C5579b bVar = (C5579b) t;
        bVar.m25115a(new C1497i());
        bVar.m25106a(this.f887w);
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownAnchor(int i) {
        super.setDropDownAnchor(i);
        if (i != -1) {
            this.f888x = getRootView().findViewById(i);
        }
    }

    @Override // android.widget.MultiAutoCompleteTextView
    public void setTokenizer(MultiAutoCompleteTextView.Tokenizer tokenizer) {
        this.f883s = tokenizer;
        super.setTokenizer(this.f883s);
    }

    @Override // android.widget.AutoCompleteTextView
    public void setValidator(AutoCompleteTextView.Validator validator) {
        this.f884t = validator;
        super.setValidator(validator);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i != 8 && this.f850N) {
            this.f850N = false;
            this.f885u.post(this.f867d0);
        }
    }

    /* renamed from: t */
    public ArrayList<AbstractC5610b> m36889t() {
        int i;
        AbstractC5610b bVar;
        String obj = getText().toString();
        int findTokenStart = this.f883s.findTokenStart(obj, getSelectionEnd());
        String substring = obj.substring(findTokenStart);
        ArrayList<AbstractC5610b> arrayList = new ArrayList<>();
        if (findTokenStart != 0) {
            AbstractC5610b bVar2 = null;
            int i2 = findTokenStart;
            int i3 = 0;
            while (true) {
                i = i2;
                bVar = bVar2;
                i = i3;
                if (i2 == 0) {
                    break;
                }
                i = i2;
                bVar = bVar2;
                i = i3;
                if (bVar2 != null) {
                    break;
                }
                i = i2;
                bVar = bVar2;
                i = i3;
                if (i2 == i3) {
                    break;
                }
                i = this.f883s.findTokenStart(obj, i2);
                bVar2 = m36946d(i);
                if (i == findTokenStart && bVar2 == null) {
                    bVar = bVar2;
                    i = i2;
                    break;
                }
                i3 = i2;
                i2 = i;
            }
            if (i != findTokenStart) {
                if (bVar != null) {
                }
                while (i < findTokenStart) {
                    m37000a(i, m36934f(this.f883s.findTokenEnd(getText().toString(), i)), getText());
                    AbstractC5610b d = m36946d(i);
                    if (d == null) {
                        break;
                    }
                    i = m36893r().getSpanEnd(d) + 1;
                    arrayList.add(d);
                }
            }
        }
        if (m36975a((CharSequence) substring)) {
            Editable text = getText();
            int indexOf = text.toString().indexOf(substring, findTokenStart);
            m37000a(indexOf, text.length(), text);
            arrayList.add(m36946d(indexOf));
        }
        return arrayList;
    }

    /* renamed from: u */
    public final void m36887u() {
        ArrayList<AbstractC5610b> t = m36889t();
        if (t != null && t.size() > 0) {
            new AsyncTaskC1502m(this, null).execute(t);
        }
    }

    /* renamed from: v */
    public void m36885v() {
        boolean z;
        if (m36891s() > 0 && this.f846I > 0) {
            synchronized (this.f845H) {
                Editable text = getText();
                if (this.f846I <= 50) {
                    for (int i = 0; i < this.f845H.size(); i++) {
                        String str = this.f845H.get(i);
                        int indexOf = text.toString().indexOf(str);
                        int length = (str.length() + indexOf) - 1;
                        if (indexOf >= 0) {
                            int i2 = length;
                            if (length < text.length() - 2) {
                                i2 = length;
                                if (text.charAt(length) == ',') {
                                    i2 = length + 1;
                                }
                            }
                            if (i >= 2 && this.f849L) {
                                z = false;
                                m36999a(indexOf, i2, text, z);
                            }
                            z = true;
                            m36999a(indexOf, i2, text, z);
                        }
                        this.f846I--;
                    }
                    m37009A();
                } else {
                    this.f848K = true;
                }
                if (this.f851O == null || this.f851O.size() <= 0 || this.f851O.size() > 50) {
                    this.f851O = null;
                    m36913j();
                } else {
                    if (!hasFocus() && this.f851O.size() >= 2) {
                        this.f863b0 = new AsyncTaskC1502m(this, null);
                        this.f863b0.execute(new ArrayList(this.f851O.subList(0, 2)));
                        if (this.f851O.size() > 2) {
                            this.f851O = new ArrayList<>(this.f851O.subList(2, this.f851O.size()));
                        } else {
                            this.f851O = null;
                        }
                        m36913j();
                    }
                    new AsyncTaskC1508q(this, null).execute(new Void[0]);
                    this.f851O = null;
                }
                this.f846I = 0;
                this.f845H.clear();
            }
        }
    }

    /* renamed from: w */
    public boolean m36883w() {
        boolean z = true;
        if (getAdapter() == null || getAdapter().m25088k() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: x */
    public final void m36881x() {
        this.f885u.removeCallbacks(this.f865c0);
        this.f885u.post(this.f865c0);
    }

    /* renamed from: y */
    public void m36880y() {
        AbstractC5610b[] q;
        if (this.f842E != null) {
            Spannable r = m36893r();
            r.removeSpan(this.f842E);
            this.f842E = null;
            ArrayList<AbstractC5610b> arrayList = this.f852P;
            if (arrayList != null && arrayList.size() > 0 && (q = m36895q()) != null && q.length != 0) {
                int spanEnd = r.getSpanEnd(q[q.length - 1]);
                Editable text = getText();
                Iterator<AbstractC5610b> it = this.f852P.iterator();
                while (it.hasNext()) {
                    AbstractC5610b next = it.next();
                    String str = (String) next.mo25006f();
                    int indexOf = text.toString().indexOf(str, spanEnd);
                    spanEnd = Math.min(text.length(), str.length() + indexOf);
                    if (indexOf != -1) {
                        text.setSpan(next, indexOf, spanEnd, 33);
                    }
                }
                this.f852P.clear();
            }
        }
    }

    /* renamed from: z */
    public void m36879z() {
        AbstractC5610b[] q;
        if (this.f846I <= 0 && (q = m36895q()) != null && q.length > 0) {
            AbstractC5610b bVar = q[q.length - 1];
            AbstractC5610b bVar2 = null;
            if (q.length > 1) {
                bVar2 = q[q.length - 2];
            }
            int i = 0;
            int spanStart = m36893r().getSpanStart(bVar);
            if (bVar2 != null) {
                int spanEnd = m36893r().getSpanEnd(bVar2);
                Editable text = getText();
                if (spanEnd != -1 && spanEnd <= text.length() - 1) {
                    i = spanEnd;
                    if (text.charAt(spanEnd) == ' ') {
                        i = spanEnd + 1;
                    }
                } else {
                    return;
                }
            }
            if (i >= 0 && spanStart >= 0 && i < spanStart) {
                getText().delete(i, spanStart);
            }
        }
    }
}
