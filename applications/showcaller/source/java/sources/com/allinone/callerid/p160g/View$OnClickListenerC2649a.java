package com.allinone.callerid.p160g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.C0951c;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.R$string;
import com.allinone.callerid.R$style;
import com.allinone.callerid.bean.CommentContent;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.mvc.controller.contactpdt.UnknownContactActivity;
import com.allinone.callerid.p136b.C2178g;
import com.allinone.callerid.p162i.p163a.p179j.AbstractC2871b;
import com.allinone.callerid.p162i.p163a.p179j.AbstractC2873d;
import com.allinone.callerid.p162i.p163a.p179j.C2868a;
import com.allinone.callerid.p162i.p163a.p179j.C2874e;
import com.allinone.callerid.search.CallLogBean;
import com.allinone.callerid.util.AsyncTaskC3872x;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3744g1;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3774j;
import com.allinone.callerid.util.C3810q;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import p020b.p067p.p068a.C1764a;
/* renamed from: com.allinone.callerid.g.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/a.class */
public class View$OnClickListenerC2649a extends Fragment implements View.OnClickListener {

    /* renamed from: e0 */
    private CallLogBean f9140e0;

    /* renamed from: f0 */
    private Context f9141f0;

    /* renamed from: g0 */
    private UnknownContactActivity f9142g0;

    /* renamed from: h0 */
    private RelativeLayout f9143h0;

    /* renamed from: i0 */
    private C2178g f9144i0;

    /* renamed from: k0 */
    private String f9146k0;

    /* renamed from: l0 */
    private String f9147l0;

    /* renamed from: n0 */
    private int f9149n0;

    /* renamed from: o0 */
    private AsyncTaskC3872x f9150o0;

    /* renamed from: p0 */
    private ViewStub f9151p0;

    /* renamed from: q0 */
    private PopupWindow f9152q0;

    /* renamed from: r0 */
    private View f9153r0;

    /* renamed from: s0 */
    private String f9154s0;

    /* renamed from: t0 */
    private C2657e f9155t0;

    /* renamed from: u0 */
    private ProgressBar f9156u0;

    /* renamed from: v0 */
    private ProgressBar f9157v0;

    /* renamed from: j0 */
    private List<CommentContent> f9145j0 = new ArrayList();

    /* renamed from: m0 */
    private int f9148m0 = 1;

    /* renamed from: w0 */
    private boolean f9158w0 = true;

    /* renamed from: com.allinone.callerid.g.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/a$a.class */
    public class C2650a implements C2178g.AbstractC2180b {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.allinone.callerid.g.a$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/a$a$a.class */
        public class View$OnClickListenerC2651a implements View.OnClickListener {

            /* renamed from: d */
            final /* synthetic */ int f9160d;

            /* renamed from: com.allinone.callerid.g.a$a$a$a */
            /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/a$a$a$a.class */
            class C2652a implements AsyncTaskC3872x.AbstractC3873a {
                C2652a() {
                    View$OnClickListenerC2651a.this = r4;
                }

                @Override // com.allinone.callerid.util.AsyncTaskC3872x.AbstractC3873a
                /* renamed from: a */
                public void mo23901a(int i) {
                    CommentContent commentContent = (CommentContent) View$OnClickListenerC2649a.this.f9145j0.get(View$OnClickListenerC2651a.this.f9160d);
                    if (1 == i) {
                        C3810q.m24071b().m24070c(C3744g1.f11948v);
                        Toast.makeText(View$OnClickListenerC2649a.this.f9141f0, (int) R$string.infrom_ok, 0).show();
                    } else if (-30 == i) {
                        Toast.makeText(View$OnClickListenerC2649a.this.f9141f0, (int) R$string.is_reported, 0).show();
                    } else {
                        Toast.makeText(View$OnClickListenerC2649a.this.f9141f0, (int) R$string.reported_fail, 0).show();
                    }
                }
            }

            View$OnClickListenerC2651a(int i) {
                C2650a.this = r4;
                this.f9160d = i;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                C3810q.m24071b().m24070c("comment_report_click");
                View$OnClickListenerC2649a view$OnClickListenerC2649a = View$OnClickListenerC2649a.this;
                view$OnClickListenerC2649a.m26955A2(view$OnClickListenerC2649a.f9141f0, this.f9160d, ((CommentContent) View$OnClickListenerC2649a.this.f9145j0.get(this.f9160d)).getCid(), ((CommentContent) View$OnClickListenerC2649a.this.f9145j0.get(this.f9160d)).getT_p());
                if (View$OnClickListenerC2649a.this.f9152q0 != null && View$OnClickListenerC2649a.this.f9152q0.isShowing()) {
                    View$OnClickListenerC2649a.this.f9152q0.dismiss();
                }
                if (View$OnClickListenerC2649a.this.f9150o0 != null) {
                    View$OnClickListenerC2649a.this.f9150o0.m23902a(new C2652a());
                } else {
                    Toast.makeText(View$OnClickListenerC2649a.this.f9141f0, (int) R$string.infrom_ok, 0).show();
                }
            }
        }

        C2650a() {
            View$OnClickListenerC2649a.this = r4;
        }

        @Override // com.allinone.callerid.p136b.C2178g.AbstractC2180b
        /* renamed from: a */
        public void mo26924a(View view, int i) {
            View inflate = LayoutInflater.from(View$OnClickListenerC2649a.this.f9141f0).inflate(R$layout.pop_comment_report, (ViewGroup) null);
            ((TextView) inflate.findViewById(R$id.tv_comment_report)).setTypeface(C3739f1.m24359b());
            ((FrameLayout) inflate.findViewById(R$id.fl_btn)).setOnClickListener(new View$OnClickListenerC2651a(i));
            View$OnClickListenerC2649a.this.f9152q0 = new PopupWindow(inflate);
            View$OnClickListenerC2649a.this.f9152q0.setWidth(View$OnClickListenerC2649a.this.f9142g0.getWindowManager().getDefaultDisplay().getWidth() / 4);
            View$OnClickListenerC2649a.this.f9152q0.setHeight(-2);
            View$OnClickListenerC2649a.this.f9152q0.setFocusable(true);
            if (C3767h1.m24250f0(View$OnClickListenerC2649a.this.f9141f0).booleanValue()) {
                View$OnClickListenerC2649a.this.f9152q0.setAnimationStyle(R$style.pop_style_rtl);
            } else {
                View$OnClickListenerC2649a.this.f9152q0.setAnimationStyle(R$style.pop_style);
            }
            View$OnClickListenerC2649a.this.f9152q0.setBackgroundDrawable(new ColorDrawable(0));
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            View$OnClickListenerC2649a.this.f9152q0.showAtLocation(view, 0, iArr[0], iArr[1] - View$OnClickListenerC2649a.this.f9152q0.getHeight());
        }
    }

    /* renamed from: com.allinone.callerid.g.a$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/a$b.class */
    public class C2653b implements NestedScrollView.AbstractC0636b {
        C2653b() {
            View$OnClickListenerC2649a.this = r4;
        }

        @Override // androidx.core.widget.NestedScrollView.AbstractC0636b
        /* renamed from: a */
        public void mo26923a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
            if (i2 == (nestedScrollView.getChildAt(0).getMeasuredHeight() - nestedScrollView.getMeasuredHeight()) + C3774j.m24169a(View$OnClickListenerC2649a.this.f9141f0, 9.0f)) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("comment", "pageCount:" + View$OnClickListenerC2649a.this.f9149n0);
                }
                if (View$OnClickListenerC2649a.this.f9145j0.size() >= View$OnClickListenerC2649a.this.f9149n0 || !View$OnClickListenerC2649a.this.f9158w0) {
                    return;
                }
                View$OnClickListenerC2649a.this.f9157v0.setVisibility(0);
                View$OnClickListenerC2649a view$OnClickListenerC2649a = View$OnClickListenerC2649a.this;
                view$OnClickListenerC2649a.m26925z2(view$OnClickListenerC2649a.f9141f0, View$OnClickListenerC2649a.this.f9146k0, View$OnClickListenerC2649a.this.f9147l0, View$OnClickListenerC2649a.this.f9148m0);
                View$OnClickListenerC2649a.this.f9158w0 = false;
            }
        }
    }

    /* renamed from: com.allinone.callerid.g.a$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/a$c.class */
    public class RunnableC2654c implements Runnable {

        /* renamed from: com.allinone.callerid.g.a$c$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/a$c$a.class */
        class C2655a implements AbstractC2871b {
            C2655a() {
                RunnableC2654c.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p179j.AbstractC2871b
            /* renamed from: a */
            public void mo26483a(List<CommentContent> list) {
                if (list != null && list.size() > 0) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("comment", "contentList:" + list.toString());
                    }
                    View$OnClickListenerC2649a.this.f9145j0.clear();
                    View$OnClickListenerC2649a.this.f9145j0.addAll(list);
                    if (View$OnClickListenerC2649a.this.f9145j0 != null && View$OnClickListenerC2649a.this.f9145j0.size() > 0) {
                        View$OnClickListenerC2649a.this.f9144i0.m31967i();
                        View$OnClickListenerC2649a.this.f9151p0.setVisibility(8);
                        View$OnClickListenerC2649a.this.f9156u0.setVisibility(8);
                        View$OnClickListenerC2649a.this.f9143h0.setVisibility(0);
                    }
                } else if (View$OnClickListenerC2649a.this.f9140e0 == null || View$OnClickListenerC2649a.this.f9140e0.m24903e() == null || "".equals(View$OnClickListenerC2649a.this.f9140e0.m24903e())) {
                    View$OnClickListenerC2649a.this.f9156u0.setVisibility(8);
                    View$OnClickListenerC2649a.this.m26951E2();
                }
                View$OnClickListenerC2649a.this.m26952D2();
            }
        }

        RunnableC2654c() {
            View$OnClickListenerC2649a.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            View$OnClickListenerC2649a.this.f9156u0.setVisibility(0);
            C2868a.m26489a(View$OnClickListenerC2649a.this.f9154s0, new C2655a());
        }
    }

    /* renamed from: com.allinone.callerid.g.a$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/a$d.class */
    public class C2656d implements AbstractC2873d {

        /* renamed from: a */
        final /* synthetic */ String f9166a;

        C2656d(String str) {
            View$OnClickListenerC2649a.this = r4;
            this.f9166a = str;
        }

        @Override // com.allinone.callerid.p162i.p163a.p179j.AbstractC2873d
        /* renamed from: a */
        public void mo26482a(String str) {
            if (str != null) {
                try {
                    if (!"".equals(str)) {
                        JSONObject jSONObject = new JSONObject(str);
                        if (jSONObject.getInt("status") != 1) {
                            View$OnClickListenerC2649a.this.f9156u0.setVisibility(8);
                            View$OnClickListenerC2649a.this.f9157v0.setVisibility(8);
                            if (View$OnClickListenerC2649a.this.f9145j0 == null || View$OnClickListenerC2649a.this.f9145j0.size() != 0) {
                                return;
                            }
                            View$OnClickListenerC2649a.this.m26951E2();
                            return;
                        }
                        View$OnClickListenerC2649a.this.f9149n0 = jSONObject.getInt("comments_count");
                        JSONArray jSONArray = jSONObject.getJSONArray("soft_comments");
                        if (jSONArray == null || jSONArray.length() == 0) {
                            View$OnClickListenerC2649a.this.f9156u0.setVisibility(8);
                            View$OnClickListenerC2649a.this.f9157v0.setVisibility(8);
                            if (View$OnClickListenerC2649a.this.f9145j0 == null || View$OnClickListenerC2649a.this.f9145j0.size() != 0) {
                                return;
                            }
                            View$OnClickListenerC2649a.this.m26951E2();
                            return;
                        }
                        for (int i = 0; i < jSONArray.length(); i++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                            CommentContent commentContent = new CommentContent();
                            commentContent.setT_p(this.f9166a);
                            commentContent.setCid(jSONObject2.optString("id"));
                            commentContent.setTel_number(jSONObject2.getString("tel_number"));
                            commentContent.setAuthor(jSONObject2.getString("author"));
                            commentContent.setCreate_time(jSONObject2.getString("create_time"));
                            commentContent.setContent(jSONObject2.getString("content"));
                            commentContent.setAudit(jSONObject2.getString("audit"));
                            commentContent.setInform(jSONObject2.getString("inform"));
                            commentContent.setType_label(C3767h1.m24292D(View$OnClickListenerC2649a.this.f9141f0, jSONObject2.getString("type_label")));
                            if (!"".equals(commentContent.getContent()) || !"".equals(commentContent.getType_label())) {
                                View$OnClickListenerC2649a.this.f9145j0.add(commentContent);
                            }
                        }
                        if (View$OnClickListenerC2649a.this.f9145j0 != null && View$OnClickListenerC2649a.this.f9145j0.size() != 0) {
                            for (int i2 = 0; i2 < View$OnClickListenerC2649a.this.f9145j0.size(); i2++) {
                                for (int size = View$OnClickListenerC2649a.this.f9145j0.size() - 1; size > i2; size--) {
                                    if (((CommentContent) View$OnClickListenerC2649a.this.f9145j0.get(i2)).getCreate_time().equals(((CommentContent) View$OnClickListenerC2649a.this.f9145j0.get(size)).getCreate_time())) {
                                        View$OnClickListenerC2649a.this.f9145j0.remove(size);
                                    }
                                }
                            }
                        }
                        if (View$OnClickListenerC2649a.this.f9145j0 != null && View$OnClickListenerC2649a.this.f9145j0.size() > 0) {
                            View$OnClickListenerC2649a.this.f9144i0.m31967i();
                            View$OnClickListenerC2649a.this.f9156u0.setVisibility(8);
                            View$OnClickListenerC2649a.this.f9157v0.setVisibility(8);
                            View$OnClickListenerC2649a.this.f9151p0.setVisibility(8);
                            View$OnClickListenerC2649a.this.f9143h0.setVisibility(0);
                            if (jSONArray.length() >= 10) {
                                View$OnClickListenerC2649a.m26946e2(View$OnClickListenerC2649a.this);
                            }
                        }
                        View$OnClickListenerC2649a.this.f9145j0.size();
                        if (jSONArray.length() >= 10) {
                            return;
                        }
                        View$OnClickListenerC2649a.this.f9144i0.m31967i();
                        return;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    if (!C3718c0.f11914a) {
                        return;
                    }
                    C3718c0.m24436a("comment", "出错啦==" + e.getMessage());
                    return;
                }
            }
            View$OnClickListenerC2649a.this.f9156u0.setVisibility(8);
            View$OnClickListenerC2649a.this.f9157v0.setVisibility(8);
            if (View$OnClickListenerC2649a.this.f9145j0 == null || View$OnClickListenerC2649a.this.f9145j0.size() != 0) {
                return;
            }
            View$OnClickListenerC2649a.this.m26951E2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.g.a$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/a$e.class */
    public class C2657e extends BroadcastReceiver {

        /* renamed from: com.allinone.callerid.g.a$e$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/g/a$e$a.class */
        class C2658a implements AbstractC2871b {
            C2658a() {
                C2657e.this = r4;
            }

            @Override // com.allinone.callerid.p162i.p163a.p179j.AbstractC2871b
            /* renamed from: a */
            public void mo26483a(List<CommentContent> list) {
                if (list != null && list.size() > 0) {
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("comment", "contentList:" + list.toString());
                    }
                    View$OnClickListenerC2649a.this.f9145j0.clear();
                    View$OnClickListenerC2649a.this.f9145j0.addAll(list);
                    if (View$OnClickListenerC2649a.this.f9145j0 != null && View$OnClickListenerC2649a.this.f9145j0.size() > 0) {
                        View$OnClickListenerC2649a.this.f9144i0.m31967i();
                        View$OnClickListenerC2649a.this.f9151p0.setVisibility(8);
                        View$OnClickListenerC2649a.this.f9143h0.setVisibility(0);
                    }
                }
                View$OnClickListenerC2649a.this.m26952D2();
            }
        }

        C2657e() {
            View$OnClickListenerC2649a.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            C2868a.m26489a(View$OnClickListenerC2649a.this.f9154s0, new C2658a());
        }
    }

    /* renamed from: A2 */
    public void m26955A2(Context context, int i, String str, String str2) {
        if (!C3767h1.m24261a(context)) {
            Toast.makeText(context.getApplicationContext(), (int) R$string.search_desc, 0).show();
            return;
        }
        AsyncTaskC3872x asyncTaskC3872x = new AsyncTaskC3872x(context, "android", str, C3767h1.m24251f(str2));
        this.f9150o0 = asyncTaskC3872x;
        asyncTaskC3872x.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
    }

    /* renamed from: B2 */
    private void m26954B2() {
        CallLogBean callLogBean = this.f9140e0;
        if (callLogBean != null) {
            this.f9154s0 = callLogBean.m24880o();
        }
        this.f9142g0.getWindow().getDecorView().post(new RunnableC2654c());
    }

    /* renamed from: C2 */
    private void m26953C2(View view) {
        Typeface m24359b = C3739f1.m24359b();
        this.f9151p0 = (ViewStub) view.findViewById(R$id.vs_no_comment);
        this.f9143h0 = (RelativeLayout) view.findViewById(R$id.rl_comment);
        TextView textView = (TextView) view.findViewById(R$id.tv_comment_title);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R$id.recycler_comment);
        NestedScrollView nestedScrollView = (NestedScrollView) view.findViewById(R$id.nested_scrollview);
        this.f9156u0 = (ProgressBar) view.findViewById(R$id.progress);
        this.f9157v0 = (ProgressBar) view.findViewById(R$id.progress_load);
        this.f9143h0.setVisibility(8);
        textView.setTypeface(m24359b);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.f9141f0, 1, false);
        linearLayoutManager.m32161B2(true);
        linearLayoutManager.m31777z1(true);
        recyclerView.setHasFixedSize(true);
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setItemAnimator(new C0951c());
        C2178g c2178g = new C2178g(this.f9142g0, this.f9145j0);
        this.f9144i0 = c2178g;
        recyclerView.setAdapter(c2178g);
        this.f9144i0.m27878C(new C2650a());
        nestedScrollView.setOnScrollChangeListener(new C2653b());
    }

    /* renamed from: D2 */
    public void m26952D2() {
        CallLogBean callLogBean = this.f9140e0;
        if (callLogBean != null) {
            this.f9146k0 = callLogBean.m24941K();
            String m24943J = this.f9140e0.m24943J();
            this.f9147l0 = m24943J;
            this.f9148m0 = 1;
            m26925z2(this.f9141f0, this.f9146k0, m24943J, 1);
        }
    }

    /* renamed from: E2 */
    public void m26951E2() {
        try {
            ((TextView) ((RelativeLayout) this.f9151p0.inflate()).findViewById(R$id.tv_no_comments)).setTypeface(C3739f1.m24359b());
        } catch (Exception e) {
            this.f9151p0.setVisibility(0);
        }
    }

    /* renamed from: e2 */
    static /* synthetic */ int m26946e2(View$OnClickListenerC2649a view$OnClickListenerC2649a) {
        int i = view$OnClickListenerC2649a.f9148m0;
        view$OnClickListenerC2649a.f9148m0 = i + 1;
        return i;
    }

    /* renamed from: z2 */
    public void m26925z2(Context context, String str, String str2, int i) {
        if (C3767h1.m24261a(context) && str != null && !"".equals(str)) {
            C2874e.m26481a(str, str2, i, new C2656d(str2));
            return;
        }
        this.f9156u0.setVisibility(8);
        this.f9157v0.setVisibility(8);
        List<CommentContent> list = this.f9145j0;
        if (list == null || list.size() != 0) {
            return;
        }
        m26951E2();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: G0 */
    public View mo4887G0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C3767h1.m24281I0(EZCallApplication.m26146c(), EZCallApplication.m26146c().f9914h);
        if (this.f9153r0 == null) {
            this.f9153r0 = View.inflate(m32896u(), R$layout.fragment_comments, null);
            if (C3767h1.m24250f0(m32996B()).booleanValue() && Build.VERSION.SDK_INT >= 17 && m32896u() != null && m32896u().getWindow() != null) {
                m32896u().getWindow().getDecorView().setLayoutDirection(1);
            }
            m26953C2(this.f9153r0);
        }
        return this.f9153r0;
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: H0 */
    public void mo17304H0() {
        super.mo17304H0();
        try {
            if (this.f9155t0 == null) {
                return;
            }
            C1764a.m28939b(this.f9141f0).m28936e(this.f9155t0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: T0 */
    public void mo25021T0() {
        super.mo25021T0();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: Y0 */
    public void mo17303Y0() {
        super.mo17303Y0();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: c1 */
    public void mo25018c1(View view, Bundle bundle) {
        super.mo25018c1(view, bundle);
        if (m32896u() != null) {
            this.f9140e0 = (CallLogBean) m32896u().getIntent().getParcelableExtra("contact_tony");
        }
        m26954B2();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        view.getId();
    }

    @Override // androidx.fragment.app.Fragment
    /* renamed from: y0 */
    public void mo22787y0(Context context) {
        super.mo22787y0(context);
        this.f9141f0 = context;
        this.f9142g0 = (UnknownContactActivity) context;
        this.f9155t0 = new C2657e();
        C1764a.m28939b(context).m28938c(this.f9155t0, new IntentFilter("com.allinone.callerid.UPDATE_COMMENT"));
    }
}
