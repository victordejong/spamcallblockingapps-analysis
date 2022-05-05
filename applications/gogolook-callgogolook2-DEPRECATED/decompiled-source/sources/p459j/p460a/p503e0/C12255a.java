package p459j.p460a.p503e0;

import android.content.Context;
import android.graphics.Color;
import android.provider.Telephony;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.messaging.scan.data.SmsMessage;
import gogolook.callgogolook2.messaging.scan.p077ui.MessageScanActivity;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.realm.obj.block.BlockLogRealmObject;
import gogolook.callgogolook2.realm.obj.block.MmsBlockLogRealmObject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p521j0.p529x.C12801n;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p541n0.C13041b;
import p459j.p460a.p541n0.C13171l;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14131q4;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p589f5.C14005a;
import p459j.p460a.p582w0.p594z4.C14330b;
import p459j.p460a.p582w0.p594z4.EnumC14329a;
import p660rx.Observable;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Action1;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.e0.a */
/* loaded from: classes3-dex2jar.jar:j/a/e0/a.class */
public class C12255a extends RecyclerView.Adapter<C12265j> {

    /* renamed from: c */
    public Context f27666c;

    /* renamed from: d */
    public String f27667d;

    /* renamed from: e */
    public String f27668e;

    /* renamed from: f */
    public int f27669f;

    /* renamed from: a */
    public List<C12264i> f27664a = Collections.emptyList();

    /* renamed from: b */
    public Map<String, Integer> f27665b = new HashMap();

    /* renamed from: g */
    public int f27670g = C14217x3.m2201a(12.0f);

    /* renamed from: h */
    public int f27671h = C14217x3.m2201a(14.0f);

    /* renamed from: j.a.e0.a$a */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/a$a.class */
    public class C12256a implements Action1<List<C12264i>> {
        public C12256a() {
        }

        /* renamed from: a */
        public void call(List<C12264i> list) {
            C12255a.this.m6524a(list, 0);
        }
    }

    /* renamed from: j.a.e0.a$b */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/a$b.class */
    public class CallableC12257b implements Callable<List<C12264i>> {
        public CallableC12257b() {
        }

        @Override // java.util.concurrent.Callable
        public List<C12264i> call() throws Exception {
            List<Map<EnumC14329a, String>> b = C14330b.m1551b().m1549b(C12255a.this.f27666c, C12255a.this.f27667d);
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < b.size(); i++) {
                Map<EnumC14329a, String> map = b.get(i);
                C12264i iVar = new C12264i();
                iVar.f27689a = map.get(EnumC14329a.REF_ID);
                iVar.f27693e = map.get(EnumC14329a.BODY);
                iVar.f27690b = map.get(EnumC14329a.DATE);
                iVar.f27691c = map.get(EnumC14329a.CALLTYPE);
                iVar.f27692d = map.get(EnumC14329a.DURATION);
                iVar.f27694f = map.get(EnumC14329a.KIND);
                iVar.f27695g = map.get(EnumC14329a.NUMBER);
                arrayList.add(iVar);
            }
            return arrayList;
        }
    }

    /* renamed from: j.a.e0.a$c */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/a$c.class */
    public class C12258c implements Action1<Integer> {

        /* renamed from: a */
        public final /* synthetic */ String f27674a;

        /* renamed from: b */
        public final /* synthetic */ TextView f27675b;

        public C12258c(String str, TextView textView) {
            this.f27674a = str;
            this.f27675b = textView;
        }

        /* renamed from: a */
        public void call(Integer num) {
            Integer num2 = (Integer) C12255a.this.f27665b.get(this.f27674a);
            int a = C14005a.m2892a(num2, num);
            if (num2 == null || num2.intValue() != a) {
                C12255a.this.m6535a(this.f27675b);
                C12255a.this.f27665b.put(this.f27674a, Integer.valueOf(a));
                if (this.f27675b.getTag() != null && this.f27675b.getTag().equals(this.f27674a)) {
                    this.f27675b.setVisibility(0);
                    this.f27675b.setText(C14005a.m2893a(a));
                    if (a == 1 || a == 2) {
                        this.f27675b.setCompoundDrawablesWithIntrinsicBounds(R$drawable.callend_icon_suspicious, 0, 0, 0);
                        this.f27675b.setTextColor(C14167t.m2315a(2131100037));
                        return;
                    }
                    if (a != 0) {
                        int i = -1;
                        if (a != -1) {
                            TextView textView = this.f27675b;
                            if (C14217x3.m2137h(MyApplication.m29013o())) {
                                i = 0;
                            }
                            textView.setText(C14005a.m2893a(i));
                            return;
                        }
                    }
                    this.f27675b.setCompoundDrawablesWithIntrinsicBounds(R$drawable.sms_icon_alert, 0, 0, 0);
                }
            }
        }
    }

    /* renamed from: j.a.e0.a$d */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/a$d.class */
    public class View$OnClickListenerC12259d implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ boolean f27677a;

        /* renamed from: b */
        public final /* synthetic */ C12264i f27678b;

        /* renamed from: c */
        public final /* synthetic */ List f27679c;

        public View$OnClickListenerC12259d(boolean z, C12264i iVar, List list) {
            this.f27677a = z;
            this.f27678b = iVar;
            this.f27679c = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.f27677a) {
                C12255a.this.m6534a(this.f27678b, this.f27679c, "ndp_history_url");
            }
        }
    }

    /* renamed from: j.a.e0.a$e */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/a$e.class */
    public class View$OnClickListenerC12260e implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C12264i f27681a;

        /* renamed from: b */
        public final /* synthetic */ List f27682b;

        public View$OnClickListenerC12260e(C12264i iVar, List list) {
            this.f27681a = iVar;
            this.f27682b = list;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C12255a.this.m6534a(this.f27681a, this.f27682b, "ndp_history_cta");
        }
    }

    /* renamed from: j.a.e0.a$f */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/a$f.class */
    public class C12261f implements Action1<Integer> {

        /* renamed from: a */
        public final /* synthetic */ String f27684a;

        /* renamed from: b */
        public final /* synthetic */ TextView f27685b;

        public C12261f(String str, TextView textView) {
            this.f27684a = str;
            this.f27685b = textView;
        }

        /* renamed from: a */
        public void call(Integer num) {
            C12255a.this.f27665b.put(this.f27684a, num);
            if (this.f27685b.getTag() != null && this.f27685b.getTag().equals(this.f27684a)) {
                C12255a.this.m6536a(num.intValue(), this.f27685b);
            }
        }
    }

    /* renamed from: j.a.e0.a$g */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/a$g.class */
    public class C12262g implements Action1<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ TextView f27687a;

        public C12262g(C12255a aVar, TextView textView) {
            this.f27687a = textView;
        }

        /* renamed from: a */
        public void call(Boolean bool) {
            if (bool.booleanValue()) {
                this.f27687a.setVisibility(0);
                this.f27687a.setText(C12255a.m6537a((int) R$string.smsdialog_haveapk));
            }
        }
    }

    /* renamed from: j.a.e0.a$h */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/a$h.class */
    public class C12263h implements Single.OnSubscribe<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ String f27688a;

        public C12263h(C12255a aVar, String str) {
            this.f27688a = str;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Boolean> singleSubscriber) {
            singleSubscriber.onSuccess(Boolean.valueOf(C12810o.m5246b(this.f27688a)));
        }
    }

    /* renamed from: j.a.e0.a$i */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/a$i.class */
    public static class C12264i {

        /* renamed from: a */
        public String f27689a;

        /* renamed from: b */
        public String f27690b;

        /* renamed from: c */
        public String f27691c;

        /* renamed from: d */
        public String f27692d;

        /* renamed from: e */
        public String f27693e;

        /* renamed from: f */
        public String f27694f;

        /* renamed from: g */
        public String f27695g;
    }

    /* renamed from: j.a.e0.a$j */
    /* loaded from: classes3-dex2jar.jar:j/a/e0/a$j.class */
    public class C12265j extends RecyclerView.ViewHolder {

        /* renamed from: a */
        public ImageView f27696a;

        /* renamed from: b */
        public TextView f27697b;

        /* renamed from: c */
        public TextView f27698c;

        /* renamed from: d */
        public TextView f27699d;

        /* renamed from: e */
        public ImageView f27700e;

        /* renamed from: f */
        public View f27701f;

        public C12265j(@NonNull C12255a aVar, View view) {
            super(view);
            this.f27696a = (ImageView) view.findViewById(R$id.iv_history);
            this.f27697b = (TextView) view.findViewById(R$id.tv_history_date);
            this.f27698c = (TextView) view.findViewById(R$id.tv_history_content);
            this.f27699d = (TextView) view.findViewById(R$id.sms_alert);
            this.f27700e = (ImageView) view.findViewById(R$id.sms_redo);
            this.f27701f = view.findViewById(R$id.sms_url_warning_container);
        }
    }

    public C12255a(Context context, String str) {
        this.f27666c = context;
        this.f27667d = str;
        this.f27668e = C14108o4.m2474l(str);
    }

    /* renamed from: a */
    public static String m6537a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public final int m6526a(String str) {
        List<MmsBlockLogRealmObject> a;
        List<BlockLogRealmObject> a2 = C13041b.m4723a(C13193p.m4437a("_createtime"), C13193p.m4438a(Long.valueOf(Long.parseLong(str))), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
        String valueOf = (a2 == null || a2.isEmpty()) ? null : String.valueOf(a2.get(0).getId());
        return (TextUtils.isEmpty(valueOf) || (a = C13171l.m4477a(C13193p.m4437a("id"), C13193p.m4438a(Long.valueOf(Long.parseLong(valueOf))), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null)) == null || a.isEmpty()) ? R$string.call_block_sms : R$string.ra_callhistory_block_mms;
    }

    /* renamed from: a */
    public final SpannableString m6525a(String str, String str2, String str3) {
        SpannableString spannableString = new SpannableString(str2);
        String b = C14093n4.m2575b(str);
        if (!C14217x3.m2160b(b)) {
            try {
                int indexOf = str2.indexOf(b);
                spannableString.setSpan(new StyleSpan(1), indexOf, b.length() + indexOf, 33);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (!C14217x3.m2160b(str3)) {
            try {
                int indexOf2 = str2.indexOf(str3);
                spannableString.setSpan(new ForegroundColorSpan(-768713), indexOf2, str3.length() + indexOf2, 33);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return spannableString;
    }

    /* renamed from: a */
    public final NumberInfo m6538a() {
        Context context = this.f27666c;
        NumberInfo p = context instanceof NumberDetailActivity ? ((NumberDetailActivity) context).m26842p() : null;
        NumberInfo numberInfo = p;
        if (p == null) {
            numberInfo = C11052i.m10328e().m10327e(this.f27668e);
        }
        return numberInfo;
    }

    /* renamed from: a */
    public final void m6536a(int i, TextView textView) {
        String a = C14005a.m2893a(i);
        if (textView != null && !C14217x3.m2160b(a)) {
            textView.setText(a);
            if (i == 1 || i == 2) {
                textView.setTextColor(Color.parseColor("#fc464a"));
            }
            textView.setCompoundDrawablesWithIntrinsicBounds((i == 1 || i == 2) ? R$drawable.callend_icon_suspicious : R$drawable.sms_icon_alert, 0, 0, 0);
        }
    }

    /* renamed from: a */
    public final void m6535a(TextView textView) {
        textView.setCompoundDrawablesWithIntrinsicBounds(R$drawable.sms_icon_alert, 0, 0, 0);
        textView.setTextColor(C14167t.m2315a(2131100036));
        textView.setText("");
        textView.setVisibility(4);
    }

    /* renamed from: a */
    public final void m6534a(C12264i iVar, List<String> list, String str) {
        String str2;
        C12266b.m6510d("scan_url");
        if (!TextUtils.isEmpty(iVar.f27689a)) {
            str2 = Telephony.Sms.CONTENT_URI + "/" + iVar.f27689a;
        } else {
            str2 = "";
        }
        SmsMessage smsMessage = new SmsMessage(str2, iVar.f27695g, iVar.f27693e, list);
        Context context = this.f27666c;
        C14191v.m2259a(context, MessageScanActivity.m27495a(context, smsMessage, str));
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0204, code lost:
        if (r24 != false) goto L_0x0207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x02d8, code lost:
        if (r24 != false) goto L_0x02db;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBindViewHolder(p459j.p460a.p503e0.C12255a.C12265j r11, int r12) {
        /*
            Method dump skipped, instructions count: 1128
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p503e0.C12255a.onBindViewHolder(j.a.e0.a$j, int):void");
    }

    /* renamed from: a */
    public final void m6532a(C12265j jVar, C12264i iVar, TextView textView, String str, String str2, String str3, TextView textView2, HashMap<String, Integer> hashMap) {
        boolean f = C12810o.m5239f();
        List<String> e = C14131q4.m2404e(str2);
        C12801n.m5281a(this.f27666c, str2, "#717178", textView2, new C12258c(str3, textView), new View$OnClickListenerC12259d(f, iVar, e), !f);
        View view = jVar.f27701f;
        if (!C12810o.m5239f() || e.isEmpty()) {
            if (view != null) {
                view.setVisibility(8);
            }
            if (hashMap == null) {
                if (str2.toLowerCase(Locale.US).contains("[WEB발신]".toLowerCase(Locale.US))) {
                    textView.setVisibility(0);
                    textView.setText(m6537a((int) R$string.smsdialog_websent));
                }
                if (C12810o.m5243c(str2)) {
                    textView.setVisibility(0);
                    textView.setText(m6537a((int) R$string.smsdialog_haveurl));
                    textView.setTextSize(10.0f);
                    if (C14005a.m2894a()) {
                        textView.setText(C14131q4.m2409b(6));
                    }
                    if (this.f27665b.containsKey(str3)) {
                        Integer num = this.f27665b.get(str3);
                        if (num != null) {
                            m6536a(num.intValue(), textView);
                        }
                    } else {
                        this.f27665b.put(str3, null);
                        C14005a.C14007b bVar = new C14005a.C14007b();
                        bVar.m2858d(str);
                        C14005a.m2883a(str2, new C12261f(str3, textView), bVar);
                    }
                }
                Single.create(new C12263h(this, str2)).subscribeOn(Schedulers.m0io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C12262g(this, textView));
                return;
            }
            return;
        }
        textView.setVisibility(8);
        if (view != null) {
            view.setVisibility(0);
            Button button = (Button) view.findViewById(R$id.btn_scan_url);
            if (button != null) {
                button.setOnClickListener(new View$OnClickListenerC12260e(iVar, e));
            }
        }
    }

    /* renamed from: a */
    public final void m6524a(List<C12264i> list, int i) {
        this.f27664a = list;
        this.f27669f = i;
        notifyDataSetChanged();
    }

    /* renamed from: b */
    public void m6522b(String str) {
        this.f27667d = str;
        this.f27668e = C14108o4.m2474l(str);
        Observable.fromCallable(new CallableC12257b()).subscribeOn(Schedulers.computation()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C12256a());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f27664a.size() + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public C12265j onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C12265j(this, LayoutInflater.from(this.f27666c).inflate(R$layout.result_item_history, viewGroup, false));
    }
}
