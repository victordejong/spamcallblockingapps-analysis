package gogolook.callgogolook2;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.util.DisplayMetrics;
import android.util.Pair;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Filter;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.ads.AdError;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.phonebook.FavoriteActivity;
import gogolook.callgogolook2.phonebook.FavoriteFragment;
import gogolook.callgogolook2.realm.obj.favorite.FavoriteGroupRealmObject;
import gogolook.callgogolook2.view.ImeStatusAwarableEditText;
import gogolook.callgogolook2.view.LimitHeightListView;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import p081h.p160h.p172b.p173a.C6298e;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p531k0.C12858d;
import p459j.p460a.p531k0.C12861f;
import p459j.p460a.p533l.HandlerC12947l;
import p459j.p460a.p541n0.C13057d;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14034j0;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14058l0;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14099o3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14132r;
import p459j.p460a.p582w0.C14136r3;
import p459j.p460a.p582w0.C14148s0;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p590x4.C14299q;
import p459j.p460a.p613z0.p617p.C14687h;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.Subscription;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity.class */
public class FavoriteReportActivity extends Activity {

    /* renamed from: x */
    public static final int f10370x = Color.parseColor("#ff00b90d");

    /* renamed from: d */
    public Subscription f10374d;

    /* renamed from: e */
    public TextView f10375e;

    /* renamed from: f */
    public String[] f10376f;

    /* renamed from: g */
    public Context f10377g;

    /* renamed from: h */
    public Bundle f10378h;

    /* renamed from: i */
    public String f10379i;

    /* renamed from: j */
    public String f10380j;

    /* renamed from: k */
    public String f10381k;

    /* renamed from: l */
    public String f10382l;

    /* renamed from: m */
    public String f10383m;

    /* renamed from: n */
    public Boolean f10384n;
    @Deprecated

    /* renamed from: o */
    public Messenger f10385o;

    /* renamed from: q */
    public ListView f10387q;

    /* renamed from: r */
    public View f10388r;

    /* renamed from: s */
    public C12858d f10389s;

    /* renamed from: t */
    public DisplayMetrics f10390t;

    /* renamed from: a */
    public int f10371a = 0;

    /* renamed from: b */
    public int f10372b = 0;

    /* renamed from: c */
    public int f10373c = 0;

    /* renamed from: p */
    public boolean f10386p = true;

    /* renamed from: u */
    public final ForegroundColorSpan f10391u = new ForegroundColorSpan(f10370x);

    /* renamed from: v */
    public volatile boolean f10392v = false;

    /* renamed from: w */
    public ViewTreeObserver.OnGlobalLayoutListener f10393w = new ViewTreeObserver$OnGlobalLayoutListenerC4307k();

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$a.class */
    public class C4295a implements AdapterView.OnItemClickListener {

        /* renamed from: a */
        public final /* synthetic */ ImeStatusAwarableEditText f10394a;

        /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$a$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$a$a.class */
        public class C4296a implements Action1<Boolean> {

            /* renamed from: a */
            public final /* synthetic */ String f10396a;

            public C4296a(String str) {
                this.f10396a = str;
            }

            /* renamed from: a */
            public void call(Boolean bool) {
                if (C14217x3.m2193a(FavoriteReportActivity.this.f10377g)) {
                    if (bool.booleanValue()) {
                        FavoriteReportActivity.this.m29074a(this.f10396a.trim(), C4295a.this.f10394a);
                        return;
                    }
                    C14687h.m862a(FavoriteReportActivity.this.f10377g, (int) R$string.groupname_exists, 1).m858c();
                    C4295a.this.f10394a.setText(this.f10396a);
                    ImeStatusAwarableEditText imeStatusAwarableEditText = C4295a.this.f10394a;
                    imeStatusAwarableEditText.setSelection(imeStatusAwarableEditText.getText().length());
                    C4295a.this.f10394a.m25919a();
                    C4295a aVar = C4295a.this;
                    FavoriteReportActivity.this.m29083a((EditText) aVar.f10394a);
                }
            }
        }

        /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$a$b */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$a$b.class */
        public class C4297b implements Single.OnSubscribe<Boolean> {

            /* renamed from: a */
            public final /* synthetic */ String f10398a;

            public C4297b(C4295a aVar, String str) {
                this.f10398a = str;
            }

            /* renamed from: a */
            public void call(SingleSubscriber<? super Boolean> singleSubscriber) {
                singleSubscriber.onSuccess(Boolean.valueOf(C14132r.m2395d(this.f10398a)));
            }
        }

        public C4295a(ImeStatusAwarableEditText imeStatusAwarableEditText) {
            this.f10394a = imeStatusAwarableEditText;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            String charSequence = ((CharSequence) adapterView.getItemAtPosition(i)).toString();
            if (TextUtils.isEmpty(charSequence) || TextUtils.isEmpty(charSequence.trim()) || TextUtils.equals(charSequence.trim(), "0") || TextUtils.equals(charSequence.trim(), FavoriteReportActivity.this.getString(R$string.group_none))) {
                C14687h.m862a(FavoriteReportActivity.this.f10377g, (int) R$string.favorite_create_invalid_toast, 0).m858c();
            }
            Single.create(new C4297b(this, charSequence)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C4296a(charSequence), C14081m3.m2611a());
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$b.class */
    public class View$OnClickListenerC4298b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ImeStatusAwarableEditText f10399a;

        public View$OnClickListenerC4298b(FavoriteReportActivity favoriteReportActivity, ImeStatusAwarableEditText imeStatusAwarableEditText) {
            this.f10399a = imeStatusAwarableEditText;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f10399a.m25919a();
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$c.class */
    public class C4299c implements Action1<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ View f10400a;

        /* renamed from: b */
        public final /* synthetic */ String f10401b;

        public C4299c(View view, String str) {
            this.f10400a = view;
            this.f10401b = str;
        }

        /* renamed from: a */
        public void call(Boolean bool) {
            if (bool.booleanValue()) {
                C14687h.m862a(FavoriteReportActivity.this.f10377g, (int) R$string.groupname_exists, 1).m858c();
            } else if (FavoriteReportActivity.this.f10383m == null) {
                FavoriteReportActivity.this.backToAddFavorite(this.f10400a);
                for (int i = 0; i < FavoriteReportActivity.this.f10376f.length; i++) {
                    if (FavoriteReportActivity.this.f10376f[i].equals(this.f10401b)) {
                        FavoriteReportActivity.this.f10387q.setSelection(i);
                        FavoriteReportActivity.this.f10389s.m5134b(i);
                        FavoriteReportActivity.this.f10388r.setBackgroundResource(R$drawable.green_btn_selector);
                        FavoriteReportActivity.this.f10388r.setEnabled(true);
                        return;
                    }
                }
            } else {
                FavoriteReportActivity.this.m29066c(this.f10401b);
                FavoriteReportActivity.this.backToAddFavorite(this.f10400a);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$d.class */
    public class C4300d implements Single.OnSubscribe<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ String f10403a;

        public C4300d(String str) {
            this.f10403a = str;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Boolean> singleSubscriber) {
            boolean z = !C14132r.m2395d(this.f10403a) || FavoriteReportActivity.this.getString(R$string.group_none).equals(this.f10403a);
            if (!z && FavoriteReportActivity.this.f10383m == null) {
                C13625a.m3778g(FavoriteReportActivity.this.f10377g, this.f10403a);
            }
            singleSubscriber.onSuccess(Boolean.valueOf(z));
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$e.class */
    public class C4301e implements Action1<Pair<String[], String>> {
        public C4301e() {
        }

        /* renamed from: a */
        public void call(Pair<String[], String> pair) {
            FavoriteReportActivity.this.f10376f = (String[]) pair.first;
            int a = ((LimitHeightListView) FavoriteReportActivity.this.f10387q).m25915a();
            FavoriteReportActivity.this.m29069b((String) pair.second);
            ((LimitHeightListView) FavoriteReportActivity.this.f10387q).m25914a(a);
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$f */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$f.class */
    public class C4302f implements Single.OnSubscribe<Pair<String[], String>> {
        public C4302f() {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Pair<String[], String>> singleSubscriber) {
            singleSubscriber.onSuccess(new Pair(FavoriteReportActivity.this.m29068c(), C14217x3.m2146e(FavoriteReportActivity.this.f10377g, FavoriteReportActivity.this.f10379i)));
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$g */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$g.class */
    public class RunnableC4303g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ FrameLayout f10407a;

        /* renamed from: b */
        public final /* synthetic */ WindowManager f10408b;

        public RunnableC4303g(FavoriteReportActivity favoriteReportActivity, FrameLayout frameLayout, WindowManager windowManager) {
            this.f10407a = frameLayout;
            this.f10408b = windowManager;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f10407a.getParent() != null) {
                this.f10408b.removeView(this.f10407a);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$h */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$h.class */
    public class View$OnClickListenerC4304h implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ FrameLayout f10409a;

        /* renamed from: b */
        public final /* synthetic */ WindowManager f10410b;

        /* renamed from: c */
        public final /* synthetic */ Context f10411c;

        /* renamed from: d */
        public final /* synthetic */ String f10412d;

        public View$OnClickListenerC4304h(FavoriteReportActivity favoriteReportActivity, FrameLayout frameLayout, WindowManager windowManager, Context context, String str) {
            this.f10409a = frameLayout;
            this.f10410b = windowManager;
            this.f10411c = context;
            this.f10412d = str;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f10409a.getParent() != null) {
                this.f10410b.removeView(this.f10409a);
            }
            Intent intent = new Intent(this.f10411c, FavoriteActivity.class);
            intent.setFlags(268435456);
            intent.addFlags(67108864);
            String str = this.f10412d;
            if (str != null) {
                intent.putExtra("parentId", str);
            }
            C14217x3.m2165b(this.f10411c, intent);
            C14299q.m1775M();
            C12861f.m5129a("toast_click", 1);
            C12861f.m5124d();
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$i */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$i.class */
    public class C4305i extends C11086o {

        /* renamed from: d */
        public final /* synthetic */ String f10413d;

        /* renamed from: e */
        public final /* synthetic */ String f10414e;

        /* renamed from: f */
        public final /* synthetic */ TextView f10415f;

        public C4305i(String str, String str2, TextView textView) {
            this.f10413d = str;
            this.f10414e = str2;
            this.f10415f = textView;
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            RowInfo b = new RowInfo.Builder(FavoriteReportActivity.this.f10379i, numberInfo).m28211a(this.f10413d).m28202c(false).m28207b();
            String str2 = b != null ? b.m28224h().name : this.f10414e;
            TextView textView = this.f10415f;
            if (TextUtils.isEmpty(str2)) {
                str2 = this.f10413d;
            }
            textView.setText(str2);
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$j */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$j.class */
    public class C4306j implements AdapterView.OnItemClickListener {
        public C4306j() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 0) {
                FavoriteReportActivity.this.m29072b();
            } else if (i != FavoriteReportActivity.this.f10389s.m5136a()) {
                FavoriteReportActivity.this.f10389s.m5134b(i);
                FavoriteReportActivity.this.f10388r.setEnabled(true);
                FavoriteReportActivity.this.f10388r.setBackgroundResource(R$drawable.green_btn_selector);
                FavoriteReportActivity.this.f10389s.notifyDataSetChanged();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$k */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$k.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC4307k implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserver$OnGlobalLayoutListenerC4307k() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (FavoriteReportActivity.this.getWindow() != null && FavoriteReportActivity.this.getWindow().getDecorView() != null) {
                Rect rect = new Rect();
                FavoriteReportActivity.this.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
                FavoriteReportActivity favoriteReportActivity = FavoriteReportActivity.this;
                favoriteReportActivity.f10392v = rect.bottom - rect.top < favoriteReportActivity.f10373c;
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$l */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$l.class */
    public class View$OnClickListenerC4308l implements View.OnClickListener {
        public View$OnClickListenerC4308l() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (FavoriteReportActivity.this.f10389s.m5136a() > 0) {
                String str = (FavoriteReportActivity.this.f10389s.m5136a() != 1 || !TextUtils.isEmpty(FavoriteReportActivity.this.f10381k)) ? (String) FavoriteReportActivity.this.f10389s.getItem(FavoriteReportActivity.this.f10389s.m5136a()) : "0";
                C11052i.m10328e().m10344a(FavoriteReportActivity.this.f10379i);
                if (C13057d.m4682b(FavoriteReportActivity.this.f10379i)) {
                    C13625a.m3790c(str, FavoriteReportActivity.this.f10379i);
                } else {
                    C13625a.m3804a(str, FavoriteReportActivity.this.f10379i);
                }
                C12861f.m5129a("category_click", Integer.valueOf((TextUtils.isEmpty(str) || TextUtils.equals(str, "0")) ? 0 : C14099o3.m2510n().m2543a(str) > 1 ? 1 : 2));
                C12861f.m5129a("confirm_click", 1);
                C12861f.m5129a("toast_click", null);
                C12861f.m5124d();
                FavoriteReportActivity.this.m29066c(str);
                FavoriteReportActivity.this.finish();
                if (FavoriteReportActivity.this.f10380j != null) {
                    C14687h.m862a(FavoriteReportActivity.this.f10377g, (int) R$string.move_successful, 1).m858c();
                } else if (!TextUtils.equals(FavoriteFragment.class.getSimpleName(), FavoriteReportActivity.this.f10382l)) {
                    FavoriteReportActivity.this.m29075a(str);
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$m */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$m.class */
    public class View$OnClickListenerC4309m implements View.OnClickListener {
        public View$OnClickListenerC4309m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FavoriteReportActivity.this.m29062e();
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$n */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$n.class */
    public class C4310n extends TimerTask {

        /* renamed from: a */
        public final /* synthetic */ EditText f10421a;

        public C4310n(EditText editText) {
            this.f10421a = editText;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (!FavoriteReportActivity.this.f10392v) {
                EditText editText = this.f10421a;
                if (editText instanceof ImeStatusAwarableEditText) {
                    ((ImeStatusAwarableEditText) editText).m25919a();
                }
                ((InputMethodManager) FavoriteReportActivity.this.getSystemService("input_method")).toggleSoftInput(0, 1);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$o */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$o.class */
    public class C4311o implements Action1<Object> {
        public C4311o() {
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            if ((obj instanceof C14058l0) || (obj instanceof C14034j0)) {
                FavoriteReportActivity.this.finish();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$p */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$p.class */
    public class C4312p extends C11086o {
        public C4312p() {
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            if (TextUtils.equals(FavoriteReportActivity.this.f10379i, str)) {
                FavoriteReportActivity.this.m29076a(numberInfo);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$q */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$q.class */
    public class C4313q implements Action1<Pair<String[], String>> {
        public C4313q() {
        }

        /* renamed from: a */
        public void call(Pair<String[], String> pair) {
            if (C14217x3.m2193a(FavoriteReportActivity.this.f10377g)) {
                FavoriteReportActivity.this.f10376f = (String[]) pair.first;
                FavoriteReportActivity.this.m29069b((String) pair.second);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$r */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$r.class */
    public class C4314r implements Single.OnSubscribe<Pair<String[], String>> {
        public C4314r() {
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Pair<String[], String>> singleSubscriber) {
            singleSubscriber.onSuccess(new Pair(FavoriteReportActivity.this.m29068c(), C14217x3.m2146e(FavoriteReportActivity.this.f10377g, FavoriteReportActivity.this.f10379i)));
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$s */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$s.class */
    public class View$OnClickListenerC4315s implements View.OnClickListener {
        public View$OnClickListenerC4315s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FavoriteReportActivity.this.backToAddFavorite(null);
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$t */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$t.class */
    public class View$OnClickListenerC4316t implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ ImeStatusAwarableEditText f10428a;

        public View$OnClickListenerC4316t(FavoriteReportActivity favoriteReportActivity, ImeStatusAwarableEditText imeStatusAwarableEditText) {
            this.f10428a = imeStatusAwarableEditText;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f10428a.setText("");
            this.f10428a.m25919a();
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$u */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$u.class */
    public class C4317u implements ImeStatusAwarableEditText.AbstractC5276b {
        public C4317u() {
        }

        @Override // gogolook.callgogolook2.view.ImeStatusAwarableEditText.AbstractC5276b
        /* renamed from: a */
        public void mo25917a(ImeStatusAwarableEditText imeStatusAwarableEditText) {
            if (imeStatusAwarableEditText != null && TextUtils.isEmpty(imeStatusAwarableEditText.getText().toString())) {
                FavoriteReportActivity.this.backToAddFavorite(null);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$v */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$v.class */
    public class C4318v implements TextView.OnEditorActionListener {

        /* renamed from: a */
        public final /* synthetic */ ImeStatusAwarableEditText f10430a;

        public C4318v(ImeStatusAwarableEditText imeStatusAwarableEditText) {
            this.f10430a = imeStatusAwarableEditText;
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            if (i != 6) {
                return false;
            }
            String obj = this.f10430a.getText().toString();
            if (TextUtils.isEmpty(obj) || TextUtils.isEmpty(obj.trim()) || TextUtils.equals(obj.trim(), "0") || TextUtils.equals(obj.trim(), FavoriteReportActivity.this.getString(R$string.group_none))) {
                C14687h.m862a(FavoriteReportActivity.this.f10377g, (int) R$string.favorite_create_invalid_toast, 0).m858c();
                return true;
            }
            FavoriteReportActivity.this.m29074a(obj.trim(), this.f10430a);
            return true;
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$w */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$w.class */
    public class C4319w implements TextWatcher {

        /* renamed from: a */
        public final /* synthetic */ ImeStatusAwarableEditText f10432a;

        /* renamed from: b */
        public final /* synthetic */ View f10433b;

        public C4319w(ImeStatusAwarableEditText imeStatusAwarableEditText, View view) {
            this.f10432a = imeStatusAwarableEditText;
            this.f10433b = view;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            this.f10433b.setVisibility(TextUtils.isEmpty(editable.toString()) ? 8 : 0);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            String obj = this.f10432a.getText().toString();
            if (obj.getBytes().length > 40) {
                this.f10432a.setText(C14136r3.m2389a(obj, 40));
                ImeStatusAwarableEditText imeStatusAwarableEditText = this.f10432a;
                imeStatusAwarableEditText.setSelection(imeStatusAwarableEditText.getText().length());
                C14687h.m861a(FavoriteReportActivity.this.f10377g, FavoriteReportActivity.this.getString(R$string.max_groupname_bytes, new Object[]{String.valueOf(40)}), 1).m858c();
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$x */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$x.class */
    public class C4320x extends ArrayAdapter<CharSequence> {

        /* renamed from: a */
        public Context f10435a;

        /* renamed from: e */
        public int f10439e;

        /* renamed from: d */
        public ArrayList<CharSequence> f10438d = new ArrayList<>();

        /* renamed from: f */
        public Filter f10440f = new C4321a();

        /* renamed from: c */
        public final CharSequence[] f10437c = C14099o3.m2510n().m2535b();

        /* renamed from: b */
        public final CharSequence[] f10436b = C14099o3.m2510n().m2513k();

        /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$x$a */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$x$a.class */
        public class C4321a extends Filter {
            public C4321a() {
            }

            @Override // android.widget.Filter
            public CharSequence convertResultToString(Object obj) {
                return (CharSequence) obj;
            }

            @Override // android.widget.Filter
            public Filter.FilterResults performFiltering(CharSequence charSequence) {
                CharSequence[] charSequenceArr = TextUtils.isEmpty(charSequence) ? C4320x.this.f10436b : C4320x.this.f10437c;
                C4320x.this.f10438d.clear();
                String lowerCase = TextUtils.isEmpty(charSequence) ? null : charSequence.toString().toLowerCase();
                for (CharSequence charSequence2 : charSequenceArr) {
                    if (!TextUtils.isEmpty(charSequence2)) {
                        String charSequence3 = charSequence2.toString();
                        if (TextUtils.isEmpty(lowerCase)) {
                            C4320x.this.f10438d.add(charSequence3);
                        } else if (charSequence3.toLowerCase().contains(lowerCase)) {
                            int min = Math.min(charSequence3.toLowerCase().indexOf(lowerCase), charSequence3.length());
                            int min2 = Math.min(lowerCase.length() + min, charSequence3.length());
                            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence3);
                            spannableStringBuilder.setSpan(FavoriteReportActivity.this.f10391u, min, min2, 33);
                            C4320x.this.f10438d.add(spannableStringBuilder);
                        }
                    }
                }
                Filter.FilterResults filterResults = new Filter.FilterResults();
                filterResults.values = C4320x.this.f10438d;
                filterResults.count = C4320x.this.f10438d.size();
                return filterResults;
            }

            @Override // android.widget.Filter
            public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
                ArrayList arrayList = (ArrayList) filterResults.values;
                if (filterResults != null && filterResults.count > 0) {
                    C4320x.this.clear();
                    C4320x.this.addAll(arrayList);
                }
            }
        }

        /* renamed from: gogolook.callgogolook2.FavoriteReportActivity$x$b */
        /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/FavoriteReportActivity$x$b.class */
        public class C4322b {

            /* renamed from: a */
            public View f10443a;

            /* renamed from: b */
            public TextView f10444b;

            public C4322b(C4320x xVar, View view) {
                this.f10443a = view.findViewById(R$id.iv_trending);
                this.f10444b = (TextView) view.findViewById(16908308);
            }
        }

        public C4320x(Context context, int i) {
            super(context, i, new ArrayList());
            this.f10435a = context;
            int min = Math.min(this.f10436b.length, 5);
            while (true) {
                CharSequence[] charSequenceArr = this.f10436b;
                if (min < charSequenceArr.length) {
                    charSequenceArr[min] = null;
                    min++;
                } else {
                    this.f10439e = i;
                    return;
                }
            }
        }

        @Override // android.widget.ArrayAdapter, android.widget.Filterable
        @NonNull
        public Filter getFilter() {
            return this.f10440f;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            int i2 = 0;
            View view2 = view;
            if (view == null) {
                view2 = LayoutInflater.from(this.f10435a).inflate(this.f10439e, viewGroup, false);
                view2.setTag(new C4322b(this, view2));
            }
            C4322b bVar = (C4322b) view2.getTag();
            if (bVar != null) {
                TextView textView = bVar.f10444b;
                if (textView != null) {
                    textView.setText(getItem(i));
                }
                View view3 = bVar.f10443a;
                if (view3 != null) {
                    if (getItem(i) instanceof SpannableStringBuilder) {
                        i2 = 4;
                    }
                    view3.setVisibility(i2);
                }
            }
            return view2;
        }
    }

    /* renamed from: a */
    public final void m29087a() {
        m29084a(getCurrentFocus());
    }

    /* renamed from: a */
    public final void m29086a(Configuration configuration) {
        ListView listView = this.f10387q;
        if (listView != null) {
            if (configuration.orientation == 1) {
                View view = this.f10389s.getView(0, null, listView);
                view.measure(0, 0);
                ((LimitHeightListView) this.f10387q).m25914a((int) (view.getMeasuredHeight() * 4.6d));
            } else {
                ((LimitHeightListView) listView).m25914a(0);
            }
            this.f10387q.requestLayout();
        }
    }

    /* renamed from: a */
    public final void m29084a(View view) {
        if (view != null && !isFinishing()) {
            ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    /* renamed from: a */
    public final void m29083a(EditText editText) {
        new Timer().schedule(new C4310n(editText), 500L);
    }

    /* renamed from: a */
    public final void m29076a(NumberInfo numberInfo) {
        if (this.f10383m != null) {
            m29072b();
            C12861f.m5129a("category_source", 0);
            return;
        }
        C12861f.m5129a("category_source", 1);
        if (numberInfo == null || !numberInfo.m28374V()) {
            C12861f.m5129a("number_category", 0);
        } else {
            this.f10381k = C14099o3.m2510n().m2534b(numberInfo.m28316j());
            C12861f.m5129a("number_category", 1);
        }
        Single.create(new C4314r()).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C4313q(), C14081m3.m2611a());
    }

    /* renamed from: a */
    public void m29075a(String str) {
        m29073a(str, false);
    }

    /* renamed from: a */
    public void m29074a(@NonNull String str, @NonNull View view) {
        Single.create(new C4300d(str)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C4299c(view, str), C14081m3.m2611a());
    }

    /* renamed from: a */
    public void m29073a(String str, boolean z) {
        Context o = MyApplication.m29013o();
        FrameLayout frameLayout = new FrameLayout(o);
        frameLayout.setBackgroundColor(0);
        View inflate = LayoutInflater.from(o).inflate(R$layout.favorite_feedback_toast, (ViewGroup) null);
        frameLayout.addView(inflate, new FrameLayout.LayoutParams(-1, -1));
        TextView textView = (TextView) inflate.findViewById(R$id.tv_feedback_title);
        TextView textView2 = (TextView) inflate.findViewById(R$id.tv_feedback_category);
        TextView textView3 = (TextView) inflate.findViewById(R$id.tv_feedback_navigator);
        if (z) {
            textView.setTextSize(2, 13.0f);
            textView.setText(R$string.callend_favorite_toast_title_typeb);
            textView2.setText(TextUtils.isEmpty(str) ? C14206w4.m2225a((int) R$string.group_none) : str);
            textView2.setVisibility(0);
        } else {
            textView.setTextSize(2, 15.0f);
            textView.setText(R$string.callend_favorite_toast_title);
            textView2.setVisibility(8);
        }
        WindowManager windowManager = (WindowManager) MyApplication.m29013o().getSystemService("window");
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.type = C6298e.m23356a((int) AdError.INTERNAL_ERROR_2003);
        layoutParams.screenOrientation = 3;
        layoutParams.format = -2;
        layoutParams.gravity = 17;
        C13878a3.m3236a(windowManager, frameLayout, layoutParams);
        C14299q.m1729d("G2", this.f10383m == null ? 0.0d : 1.0d);
        frameLayout.postDelayed(new RunnableC4303g(this, frameLayout, windowManager), 1500L);
        textView3.setOnClickListener(new View$OnClickListenerC4304h(this, frameLayout, windowManager, o, str));
        C12861f.m5129a("toast_click", 0);
    }

    /* renamed from: a */
    public final boolean m29085a(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        int scaledWindowTouchSlop = ViewConfiguration.get(this).getScaledWindowTouchSlop();
        View decorView = getWindow().getDecorView();
        int i = -scaledWindowTouchSlop;
        return x < i || y < i || x > decorView.getWidth() + scaledWindowTouchSlop || y > decorView.getHeight() + scaledWindowTouchSlop;
    }

    /* renamed from: b */
    public final void m29072b() {
        getWindow().setLayout(this.f10372b, -2);
        View inflate = LayoutInflater.from(this).inflate(R$layout.suggested_favorite_group_dialog, (ViewGroup) null);
        setContentView(inflate);
        View findViewById = inflate.findViewById(R$id.iv_back);
        View findViewById2 = inflate.findViewById(R$id.iv_clear);
        ImeStatusAwarableEditText imeStatusAwarableEditText = (ImeStatusAwarableEditText) inflate.findViewById(R$id.tv_input);
        findViewById.setOnClickListener(new View$OnClickListenerC4315s());
        findViewById2.setOnClickListener(new View$OnClickListenerC4316t(this, imeStatusAwarableEditText));
        imeStatusAwarableEditText.setAdapter(new C4320x(this, R$layout.favorite_suggest_list_item));
        imeStatusAwarableEditText.setThreshold(1);
        imeStatusAwarableEditText.m25918a(new C4317u());
        imeStatusAwarableEditText.setOnEditorActionListener(new C4318v(imeStatusAwarableEditText));
        imeStatusAwarableEditText.addTextChangedListener(new C4319w(imeStatusAwarableEditText, findViewById2));
        imeStatusAwarableEditText.setOnItemClickListener(new C4295a(imeStatusAwarableEditText));
        imeStatusAwarableEditText.setOnClickListener(new View$OnClickListenerC4298b(this, imeStatusAwarableEditText));
        if (!(getWindow() == null || getWindow().getDecorView() == null || getWindow().getDecorView().getViewTreeObserver() == null)) {
            getWindow().getDecorView().getViewTreeObserver().addOnGlobalLayoutListener(this.f10393w);
        }
        String str = this.f10383m;
        if (str != null) {
            imeStatusAwarableEditText.setText(str);
        } else {
            imeStatusAwarableEditText.requestFocus();
        }
        imeStatusAwarableEditText.m25919a();
        m29083a((EditText) imeStatusAwarableEditText);
    }

    /* renamed from: b */
    public final void m29069b(String str) {
        View inflate = LayoutInflater.from(this).inflate(R$layout.favorite_dialog, (ViewGroup) null);
        setContentView(inflate);
        TextView textView = (TextView) inflate.findViewById(R$id.callend_favorite_title);
        View findViewById = inflate.findViewById(R$id.call_btn_close);
        this.f10388r = inflate.findViewById(R$id.favorite_submit);
        this.f10387q = (ListView) inflate.findViewById(R$id.lv_favoritelist);
        String a = C14108o4.m2493a(this.f10379i, true, false);
        textView.setText(C14217x3.m2160b(str) ? a : str);
        C11052i.m10328e().m10340a(this.f10379i, new C4305i(a, str, textView), 0, EnumC11047e.Other);
        if (this.f10380j == null) {
            ((TextView) this.f10388r).setText(R$string.callend_favorite_dialog_confirm);
        } else {
            ((TextView) this.f10388r).setText(R$string.confirm);
        }
        this.f10388r.setEnabled(false);
        this.f10389s = new C12858d(this.f10377g, this.f10376f);
        this.f10387q.setAdapter((ListAdapter) this.f10389s);
        if (this.f10380j != null) {
            int i = 1;
            while (true) {
                String[] strArr = this.f10376f;
                if (i >= strArr.length) {
                    break;
                } else if (strArr[i].equals(this.f10380j) || (i == 1 && this.f10380j.equals("0"))) {
                    break;
                } else {
                    i++;
                }
            }
            this.f10387q.setSelection(i);
            this.f10389s.m5134b(i);
            this.f10388r.setBackgroundResource(R$drawable.green_btn_selector);
            this.f10388r.setEnabled(true);
        } else if (!TextUtils.isEmpty(this.f10381k)) {
            int i2 = 1;
            while (true) {
                String[] strArr2 = this.f10376f;
                if (i2 >= strArr2.length) {
                    break;
                } else if (TextUtils.equals(strArr2[i2], this.f10381k)) {
                    this.f10387q.setSelection(i2);
                    this.f10389s.m5134b(i2);
                    this.f10388r.setBackgroundResource(R$drawable.green_btn_selector);
                    this.f10388r.setEnabled(true);
                    break;
                } else {
                    i2++;
                }
            }
        }
        this.f10387q.setOnItemClickListener(new C4306j());
        this.f10388r.setOnClickListener(new View$OnClickListenerC4308l());
        findViewById.setOnClickListener(new View$OnClickListenerC4309m());
    }

    public void backToAddFavorite(View view) {
        m29084a(view);
        if (!(getWindow() == null || getWindow().getDecorView() == null || getWindow().getDecorView().getViewTreeObserver() == null || this.f10383m != null)) {
            getWindow().setLayout(this.f10371a, -2);
            getWindow().getDecorView().getViewTreeObserver().removeOnGlobalLayoutListener(this.f10393w);
        }
        if (this.f10383m == null) {
            Single.create(new C4302f()).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C4301e(), C14081m3.m2611a());
        } else {
            finish();
        }
    }

    /* renamed from: c */
    public final void m29066c(String str) {
        if (this.f10384n.booleanValue()) {
            m29060e(str);
            return;
        }
        try {
            m29063d(str);
        } catch (RemoteException e) {
            C14080m2.m2612a((Throwable) e);
        }
    }

    /* renamed from: c */
    public final String[] m29068c() {
        List<FavoriteGroupRealmObject> a = C13057d.m4690a(getString(R$string.group_life), getString(R$string.group_restaurant));
        ArrayList arrayList = new ArrayList(20);
        arrayList.add("");
        if (TextUtils.isEmpty(this.f10381k)) {
            arrayList.add(getString(R$string.group_none));
        } else {
            arrayList.add(this.f10381k);
            if (C14132r.m2395d(this.f10381k)) {
                C13625a.m3778g(this.f10377g, this.f10381k);
            }
        }
        if (a != null && !a.isEmpty()) {
            for (FavoriteGroupRealmObject favoriteGroupRealmObject : a) {
                String str = favoriteGroupRealmObject.get_name();
                if (!str.equals("0") && !arrayList.contains(str)) {
                    arrayList.add(favoriteGroupRealmObject.get_name());
                }
            }
        }
        String[] strArr = new String[arrayList.size()];
        arrayList.toArray(strArr);
        return strArr;
    }

    /* renamed from: d */
    public final void m29065d() {
        this.f10374d = C14037j3.m2731a().mo2703a((Action1) new C4311o());
    }

    /* renamed from: d */
    public final void m29063d(String str) throws RemoteException {
        C14037j3.m2731a().mo2704a(new C14148s0(1, 0, str));
        Messenger messenger = this.f10385o;
        if (messenger != null) {
            messenger.send(HandlerC12947l.m4943a(str));
        }
    }

    /* renamed from: e */
    public final void m29062e() {
        C14037j3.m2731a().mo2704a(new C14148s0(1, -1));
        Messenger messenger = this.f10385o;
        if (messenger != null) {
            try {
                messenger.send(HandlerC12947l.m4941c());
            } catch (RemoteException e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
        finish();
    }

    /* renamed from: e */
    public final void m29060e(String str) {
        Intent intent = new Intent();
        intent.putExtra("groupId", str);
        setResult(-1, intent);
    }

    /* renamed from: f */
    public final void m29059f() {
        Subscription subscription = this.f10374d;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f10374d.unsubscribe();
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(17432576, 17432577);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 101 && i2 == -1) {
            String str = intent.getStringArrayListExtra("android.speech.extra.RESULTS").get(0);
            TextView textView = this.f10375e;
            if (textView != null) {
                textView.setText(str);
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m29086a(getResources().getConfiguration());
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        m29062e();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m29086a(configuration);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        setRequestedOrientation(3);
        super.onCreate(bundle);
        m29065d();
        this.f10377g = this;
        Intent intent = getIntent();
        if (intent != null) {
            this.f10378h = intent.getExtras();
        }
        if (this.f10378h == null) {
            finish();
        }
        this.f10390t = new DisplayMetrics();
        getWindow().getWindowManager().getDefaultDisplay().getMetrics(this.f10390t);
        this.f10372b = this.f10390t.widthPixels - C14217x3.m2201a(10.0f);
        this.f10371a = Math.min(this.f10372b, C14217x3.m2201a(294.0f));
        this.f10373c = (this.f10390t.heightPixels * 3) / 4;
        requestWindowFeature(1);
        getWindow().getDecorView().setBackgroundColor(0);
        getWindow().setLayout(this.f10371a, -2);
        overridePendingTransition(17432576, 17432577);
        this.f10378h.getString("number");
        this.f10379i = this.f10378h.getString("e164");
        this.f10380j = this.f10378h.getString("groupId");
        this.f10382l = this.f10378h.getString("from");
        this.f10383m = this.f10378h.getString("editGroup");
        this.f10384n = Boolean.valueOf(this.f10378h.getBoolean("forResult", false));
        this.f10385o = (Messenger) this.f10378h.getParcelable("handler");
        C12861f.m5123e();
        String a = C12861f.m5130a(this.f10382l);
        C12861f.m5129a("add_source", a);
        C12861f.m5129a("add_position", Integer.valueOf(TextUtils.equals(a, "ndp") ? 1 : 0));
        NumberInfo e = C11052i.m10328e().m10327e(this.f10379i);
        if (this.f10383m == null && e == null) {
            C11052i.m10328e().m10341a(this.f10379i, new C4312p(), 0, C11052i.f24869f, EnumC11047e.Favorite);
        } else {
            m29076a(e);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        m29087a();
        super.onDestroy();
        m29059f();
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putAll(getIntent().getExtras());
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || !m29085a(motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        if (!this.f10386p) {
            return true;
        }
        m29062e();
        return true;
    }
}
