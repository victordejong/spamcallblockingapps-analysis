package com.allinone.callerid.main;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.ViewTreeObserver;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.customview.AbstractC2445c;
import com.allinone.callerid.customview.ExpandTextView;
import com.allinone.callerid.p197j.C3029a;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3767h1;
import com.allinone.callerid.util.C3806p;
import com.allinone.callerid.util.C3866v;
import com.allinone.callerid.util.C3882z;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/LogActivity.class */
public class LogActivity extends AppCompatActivity {

    /* renamed from: A */
    private TextView f9921A;

    /* renamed from: B */
    private TextView f9922B;

    /* renamed from: C */
    private TextView f9923C;

    /* renamed from: D */
    private TextView f9924D;

    /* renamed from: E */
    private TextView f9925E;

    /* renamed from: F */
    private TextView f9926F;

    /* renamed from: G */
    private TextView f9927G;

    /* renamed from: H */
    private TextView f9928H;

    /* renamed from: I */
    private TextView f9929I;

    /* renamed from: J */
    private TextView f9930J;

    /* renamed from: K */
    private TextView f9931K;

    /* renamed from: L */
    private TextView f9932L;

    /* renamed from: M */
    private TextView f9933M;

    /* renamed from: N */
    private ScrollView f9934N;

    /* renamed from: O */
    private ExpandTextView f9935O;

    /* renamed from: P */
    private ExpandTextView f9936P;

    /* renamed from: Q */
    private ExpandTextView f9937Q;

    /* renamed from: R */
    private ExpandTextView f9938R;

    /* renamed from: S */
    private String f9939S;

    /* renamed from: T */
    private String f9940T;

    /* renamed from: Y */
    String f9945Y;

    /* renamed from: Z */
    String f9946Z;

    /* renamed from: a0 */
    String f9947a0;

    /* renamed from: b0 */
    private int f9948b0;

    /* renamed from: c0 */
    private int f9949c0;

    /* renamed from: u */
    private TextView f9951u;

    /* renamed from: v */
    private TextView f9952v;

    /* renamed from: w */
    private TextView f9953w;

    /* renamed from: x */
    private TextView f9954x;

    /* renamed from: y */
    private TextView f9955y;

    /* renamed from: z */
    private TextView f9956z;

    /* renamed from: U */
    private String f9941U = "android";

    /* renamed from: V */
    private String f9942V = "86";

    /* renamed from: W */
    private String f9943W = "13021125524";

    /* renamed from: X */
    String f9944X = "001";

    /* renamed from: d0 */
    private Handler f9950d0 = new HandlerC3059c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.main.LogActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/LogActivity$a.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC3056a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: com.allinone.callerid.main.LogActivity$a$a */
        /* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/LogActivity$a$a.class */
        class RunnableC3057a implements Runnable {
            RunnableC3057a() {
                ViewTreeObserver$OnGlobalLayoutListenerC3056a.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                LogActivity.this.f9934N.fullScroll(130);
            }
        }

        ViewTreeObserver$OnGlobalLayoutListenerC3056a() {
            LogActivity.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            LogActivity.this.f9934N.post(new RunnableC3057a());
        }
    }

    /* renamed from: com.allinone.callerid.main.LogActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/LogActivity$b.class */
    public class C3058b implements AbstractC2445c {
        C3058b() {
            LogActivity.this = r4;
        }

        @Override // com.allinone.callerid.customview.AbstractC2445c
        /* renamed from: a */
        public void mo26105a() {
        }

        @Override // com.allinone.callerid.customview.AbstractC2445c
        /* renamed from: b */
        public void mo26104b() {
        }
    }

    /* renamed from: com.allinone.callerid.main.LogActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/LogActivity$c.class */
    class HandlerC3059c extends Handler {
        HandlerC3059c() {
            LogActivity.this = r4;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i == 0) {
                LogActivity.this.f9951u.setVisibility(8);
                LogActivity.this.f9952v.setText("获取服务端的时间：返回值为空，请查看网络等原因");
            } else if (i == 1) {
                String obj = message.obj.toString();
                TextView textView = LogActivity.this.f9951u;
                textView.setText("1.获取服务端的时间：\n" + C3882z.m23889b(obj));
                LogActivity.this.f9952v.setText("测试结果：OK\n\n");
                new C3063g().start();
            } else if (i == 20) {
                LogActivity.this.f9953w.setText("请求失败");
                new C3064h().start();
            } else if (i == 30) {
                LogActivity.this.f9936P.setVisibility(0);
                LogActivity.this.f9955y.setText("请求失败\n\n");
                new C3062f().start();
            } else if (i == 40) {
                LogActivity.this.f9956z.setText("请求失败\n\n");
                LogActivity.this.m26106z0("18813032887");
            } else if (i == 80) {
                LogActivity.this.f9926F.setText("请求失败\n\n");
                new C3065i().start();
            } else if (i == 100) {
                LogActivity.this.f9930J.setText("7.检查离线db接口（新）请求失败\n\n");
                new C3066j().start();
            } else if (i == 110) {
                LogActivity.this.f9932L.setText("8.检查离线解析器请求失败\n\n");
                TextView textView2 = LogActivity.this.f9933M;
                textView2.setText("成功个数：" + LogActivity.this.f9948b0 + "\n失败个数：" + LogActivity.this.f9949c0);
            } else if (i == 210) {
                String obj2 = message.obj.toString();
                LogActivity.this.f9935O.setVisibility(0);
                ExpandTextView expandTextView = LogActivity.this.f9935O;
                expandTextView.setContent("2.批量查询的结果：\n" + C3882z.m23889b(obj2));
                LogActivity.this.f9953w.setText("测试结果：Failed\n\n");
                new C3064h().start();
            } else if (i == 211) {
                String obj3 = message.obj.toString();
                LogActivity.this.f9935O.setVisibility(0);
                ExpandTextView expandTextView2 = LogActivity.this.f9935O;
                expandTextView2.setContent("2.批量查询的结果：\n" + C3882z.m23889b(obj3));
                LogActivity.this.f9953w.setText("测试结果：OK\n\n");
                new C3064h().start();
            } else if (i == 310) {
                String obj4 = message.obj.toString();
                LogActivity.this.f9936P.setVisibility(0);
                ExpandTextView expandTextView3 = LogActivity.this.f9936P;
                expandTextView3.setContent("3.号码查询的结果：\n" + C3882z.m23889b(obj4));
                LogActivity.this.f9955y.setText("测试结果：Failed\n\n");
                new C3062f().start();
            } else if (i == 311) {
                String obj5 = message.obj.toString();
                LogActivity.this.f9936P.setVisibility(0);
                ExpandTextView expandTextView4 = LogActivity.this.f9936P;
                expandTextView4.setContent("3.号码查询的结果：\n" + C3882z.m23889b(obj5));
                LogActivity.this.f9955y.setText("测试结果：OK\n\n");
                new C3062f().start();
            } else if (i == 410) {
                String obj6 = message.obj.toString();
                LogActivity.this.f9954x.setVisibility(0);
                TextView textView3 = LogActivity.this.f9954x;
                textView3.setText("4.获取CC请求：\n" + C3882z.m23889b(obj6));
                LogActivity.this.f9956z.setText("测试结果：Failed\n\n");
                LogActivity.this.m26106z0("18813032887");
            } else if (i == 411) {
                String obj7 = message.obj.toString();
                TextView textView4 = LogActivity.this.f9954x;
                textView4.setText("4.获取CC请求：\n" + C3882z.m23889b(obj7));
                LogActivity.this.f9956z.setText("测试结果：OK\n\n");
                LogActivity.this.m26106z0("18813032887");
            } else if (i == 810) {
                String obj8 = message.obj.toString();
                TextView textView5 = LogActivity.this.f9925E;
                textView5.setText("5.日志收集接口：\n" + C3882z.m23889b(obj8));
                LogActivity.this.f9926F.setText("日志收集接口结果：Failed\n\n");
                new C3065i().start();
            } else if (i == 811) {
                String obj9 = message.obj.toString();
                TextView textView6 = LogActivity.this.f9925E;
                textView6.setText("5.日志收集接口：\n" + C3882z.m23889b(obj9));
                LogActivity.this.f9926F.setText("日志收集接口结果：OK\n\n");
                new C3065i().start();
            } else if (i == 1010) {
                String obj10 = message.obj.toString();
                TextView textView7 = LogActivity.this.f9929I;
                textView7.setText("7.检查离线db接口（新）：\n" + C3882z.m23889b(obj10));
                LogActivity.this.f9930J.setText("检查离线db接口（新）结果：Failed\n\n");
                new C3066j().start();
            } else if (i == 1011) {
                String obj11 = message.obj.toString();
                TextView textView8 = LogActivity.this.f9929I;
                textView8.setText("7.检查离线db接口（新）：\n" + C3882z.m23889b(obj11));
                LogActivity.this.f9930J.setText("检查离线db接口（新）结果：OK\n\n");
                new C3066j().start();
            } else if (i == 1110) {
                String obj12 = message.obj.toString();
                TextView textView9 = LogActivity.this.f9931K;
                textView9.setText("8.检查离线解析器：\n" + C3882z.m23889b(obj12));
                LogActivity.this.f9932L.setText("检查离线解析器：Failed\n\n");
                TextView textView10 = LogActivity.this.f9933M;
                textView10.setText("成功个数：" + LogActivity.this.f9948b0 + "\n失败个数：" + LogActivity.this.f9949c0);
            } else if (i != 1111) {
            } else {
                String obj13 = message.obj.toString();
                TextView textView11 = LogActivity.this.f9931K;
                textView11.setText("8.检查离线解析器接口：\n" + C3882z.m23889b(obj13));
                LogActivity.this.f9932L.setText("检查离线解析器结果：OK\n\n");
                TextView textView12 = LogActivity.this.f9933M;
                textView12.setText("成功个数：" + LogActivity.this.f9948b0 + "\n失败个数：" + LogActivity.this.f9949c0);
            }
        }
    }

    /* renamed from: com.allinone.callerid.main.LogActivity$d */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/LogActivity$d.class */
    public class RunnableC3060d implements Runnable {
        RunnableC3060d() {
            LogActivity.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String m26141B0 = LogActivity.this.m26141B0();
                Message message = new Message();
                if (m26141B0 == null) {
                    message.what = 0;
                    LogActivity.m26125g0(LogActivity.this);
                } else if (new JSONObject(m26141B0).getString("status").equals("1")) {
                    message.what = 1;
                    message.obj = m26141B0;
                    LogActivity.m26127e0(LogActivity.this);
                }
                LogActivity.this.f9950d0.sendMessage(message);
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.main.LogActivity$e */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/LogActivity$e.class */
    public class C3061e extends Thread {

        /* renamed from: d */
        final /* synthetic */ String f9962d;

        C3061e(String str) {
            LogActivity.this = r4;
            this.f9962d = str;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                HashMap hashMap = new HashMap();
                String m24270R = C3767h1.m24270R();
                String m24274N = C3767h1.m24274N();
                String m24286G = C3767h1.m24286G();
                JSONArray jSONArray = new JSONArray();
                JSONArray jSONArray2 = new JSONArray();
                jSONArray2.put(this.f9962d);
                jSONArray2.put(C3767h1.m24251f(LogActivity.this.f9945Y));
                jSONArray2.put("0");
                jSONArray2.put("0");
                jSONArray2.put("0");
                jSONArray2.put("0");
                jSONArray2.put("0");
                jSONArray2.put("0");
                jSONArray2.put("0");
                jSONArray2.put("0");
                jSONArray2.put("0");
                jSONArray2.put("2");
                jSONArray2.put("0");
                jSONArray2.put("");
                jSONArray.put(jSONArray2);
                JSONObject jSONObject = new JSONObject();
                JSONArray jSONArray3 = new JSONArray();
                jSONArray3.put(C3767h1.m24251f(""));
                jSONArray3.put(C3767h1.m24251f("86"));
                jSONArray3.put(C3767h1.m24251f(m24270R));
                jSONArray3.put(C3767h1.m24251f(m24274N));
                jSONArray3.put(C3767h1.m24251f(m24286G));
                jSONArray3.put(C3767h1.m24251f(""));
                jSONArray3.put(C3767h1.m24251f("cn"));
                jSONArray3.put(C3767h1.m24251f(""));
                jSONArray3.put(C3767h1.m24251f(""));
                jSONObject.put("user_info", jSONArray3);
                jSONObject.put("tel_number_info", jSONArray);
                hashMap.put("platform", "android");
                hashMap.put("uid", LogActivity.this.f9939S);
                hashMap.put("app_version", LogActivity.this.f9940T);
                hashMap.put("origin", "app");
                hashMap.put("stamp", C3767h1.m24271Q(LogActivity.this.getApplicationContext(), LogActivity.this.f9939S));
                hashMap.put("content", C3866v.m23912c(jSONObject.toString().replaceAll("\\\\", "")));
                String m26206b = C3029a.m26206b("https://ct.show-caller.com/c_n/api/v1/cnwik.php", hashMap);
                Message message = new Message();
                if (m26206b != null) {
                    JSONObject jSONObject2 = new JSONObject(m26206b);
                    message.obj = m26206b;
                    if (jSONObject2.getInt("status") == 1) {
                        LogActivity.m26127e0(LogActivity.this);
                        message.what = 811;
                    } else {
                        LogActivity.m26125g0(LogActivity.this);
                        message.what = 810;
                    }
                } else {
                    LogActivity.m26125g0(LogActivity.this);
                    message.what = 80;
                }
                LogActivity.this.f9950d0.sendMessage(message);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.main.LogActivity$f */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/LogActivity$f.class */
    class C3062f extends Thread {
        C3062f() {
            LogActivity.this = r4;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                String m26142A0 = LogActivity.this.m26142A0();
                Message message = new Message();
                if (m26142A0 != null) {
                    JSONObject jSONObject = new JSONObject(m26142A0);
                    message.obj = m26142A0;
                    if (jSONObject.getInt("status") == 1) {
                        LogActivity.m26127e0(LogActivity.this);
                        message.what = 411;
                    } else {
                        LogActivity.m26125g0(LogActivity.this);
                        message.what = 410;
                    }
                } else {
                    LogActivity.m26125g0(LogActivity.this);
                    message.what = 40;
                }
                LogActivity.this.f9950d0.sendMessage(message);
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.main.LogActivity$g */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/LogActivity$g.class */
    class C3063g extends Thread {
        C3063g() {
            LogActivity.this = r4;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                String m26138F0 = LogActivity.this.m26138F0();
                Message message = new Message();
                if (m26138F0 != null) {
                    JSONObject jSONObject = new JSONObject(m26138F0);
                    message.obj = m26138F0;
                    if (jSONObject.getInt("status") != 1 && jSONObject.getInt("status") != -10) {
                        LogActivity.m26125g0(LogActivity.this);
                        message.what = 210;
                    }
                    message.what = 211;
                    LogActivity.m26127e0(LogActivity.this);
                } else {
                    LogActivity.m26125g0(LogActivity.this);
                    message.what = 20;
                }
                LogActivity.this.f9950d0.sendMessage(message);
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.main.LogActivity$h */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/LogActivity$h.class */
    class C3064h extends Thread {
        C3064h() {
            LogActivity.this = r4;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                String m26139E0 = LogActivity.this.m26139E0();
                Message message = new Message();
                if (m26139E0 != null) {
                    JSONObject jSONObject = new JSONObject(m26139E0);
                    message.obj = m26139E0;
                    if (jSONObject.getInt("status") == 1) {
                        message.what = 311;
                        LogActivity.m26127e0(LogActivity.this);
                    } else {
                        message.what = 310;
                        LogActivity.m26125g0(LogActivity.this);
                    }
                } else {
                    LogActivity.m26125g0(LogActivity.this);
                    message.what = 30;
                }
                LogActivity.this.f9950d0.sendMessage(message);
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.main.LogActivity$i */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/LogActivity$i.class */
    class C3065i extends Thread {
        C3065i() {
            LogActivity.this = r4;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                String m26107y0 = LogActivity.this.m26107y0();
                Message message = new Message();
                if (m26107y0 != null) {
                    JSONObject jSONObject = new JSONObject(m26107y0);
                    message.obj = m26107y0;
                    if (jSONObject.getInt("status") == 1) {
                        LogActivity.m26127e0(LogActivity.this);
                        message.what = 1011;
                    } else {
                        LogActivity.m26125g0(LogActivity.this);
                        message.what = 1010;
                    }
                } else {
                    LogActivity.m26125g0(LogActivity.this);
                    message.what = 100;
                }
                LogActivity.this.f9950d0.sendMessage(message);
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: com.allinone.callerid.main.LogActivity$j */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/main/LogActivity$j.class */
    class C3066j extends Thread {
        C3066j() {
            LogActivity.this = r4;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            try {
                String m26108x0 = LogActivity.this.m26108x0();
                Message message = new Message();
                if (m26108x0 != null) {
                    JSONObject jSONObject = new JSONObject(m26108x0);
                    message.obj = m26108x0;
                    if (jSONObject.getInt("status") != 1 && jSONObject.getInt("status") != -30) {
                        LogActivity.m26125g0(LogActivity.this);
                        message.what = 1110;
                    }
                    LogActivity.m26127e0(LogActivity.this);
                    message.what = 1111;
                } else {
                    LogActivity.m26125g0(LogActivity.this);
                    message.what = 110;
                }
                LogActivity.this.f9950d0.sendMessage(message);
                Thread.sleep(1000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: B0 */
    public String m26141B0() {
        String str;
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("device", this.f9941U);
            hashMap.put("uid", this.f9939S);
            hashMap.put("version", this.f9940T);
            str = C3029a.m26206b("https://app.show-caller.com/api/v1/sertim.php", hashMap);
        } catch (Exception e) {
            e.printStackTrace();
            str = null;
        }
        return str;
    }

    /* renamed from: C0 */
    private void m26140C0() {
        this.f9951u = (TextView) findViewById(R$id.tv_result1);
        this.f9952v = (TextView) findViewById(R$id.tv_result1_ok);
        this.f9935O = (ExpandTextView) findViewById(R$id.tv_result2);
        this.f9953w = (TextView) findViewById(R$id.tv_result2_ok);
        this.f9936P = (ExpandTextView) findViewById(R$id.tv_result3);
        this.f9955y = (TextView) findViewById(R$id.tv_result3_ok);
        this.f9954x = (TextView) findViewById(R$id.tv_result4);
        this.f9956z = (TextView) findViewById(R$id.tv_result4_ok);
        this.f9937Q = (ExpandTextView) findViewById(R$id.tv_result5);
        this.f9921A = (TextView) findViewById(R$id.tv_result5_ok);
        this.f9922B = (TextView) findViewById(R$id.tv_result6);
        this.f9923C = (TextView) findViewById(R$id.tv_result6_ok);
        this.f9938R = (ExpandTextView) findViewById(R$id.tv_result7);
        this.f9924D = (TextView) findViewById(R$id.tv_result7_ok);
        this.f9925E = (TextView) findViewById(R$id.tv_result8);
        this.f9926F = (TextView) findViewById(R$id.tv_result8_ok);
        this.f9927G = (TextView) findViewById(R$id.tv_result9);
        this.f9928H = (TextView) findViewById(R$id.tv_result9_ok);
        this.f9929I = (TextView) findViewById(R$id.tv_result10);
        this.f9930J = (TextView) findViewById(R$id.tv_result10_ok);
        this.f9931K = (TextView) findViewById(R$id.tv_result11);
        this.f9932L = (TextView) findViewById(R$id.tv_result11_ok);
        this.f9933M = (TextView) findViewById(R$id.tv_count);
        this.f9934N = (ScrollView) findViewById(2131297568);
        this.f9936P.setAnimationDuration(500);
        this.f9936P.setMinVisibleLines(3);
        this.f9938R.setAnimationDuration(500);
        this.f9938R.setMinVisibleLines(3);
        this.f9938R.setOnReadMoreListener(new C3058b());
    }

    /* renamed from: E0 */
    public String m26139E0() {
        String str;
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("tel_number", this.f9943W);
            hashMap.put("device", this.f9941U);
            hashMap.put("uid", this.f9939S);
            hashMap.put("version", this.f9940T);
            hashMap.put("default_cc", this.f9942V);
            hashMap.put("cc", this.f9945Y);
            hashMap.put("stamp", this.f9947a0);
            hashMap.put("cid", "");
            hashMap.put("is_contacts", "");
            str = C3029a.m26206b("https://app.show-caller.com/api/v1/sea.php", hashMap);
        } catch (Exception e) {
            e.printStackTrace();
            str = null;
        }
        return str;
    }

    /* renamed from: F0 */
    public String m26138F0() {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add("18813032887");
            arrayList.add("10086");
            arrayList.add("13653310377");
            arrayList.add("10010");
            if (arrayList.size() <= 0) {
                return null;
            }
            String m23912c = C3866v.m23912c(new JSONArray((Collection) arrayList).toString());
            HashMap hashMap = new HashMap();
            hashMap.put("tel_number_list", m23912c);
            hashMap.put("device", this.f9941U);
            hashMap.put("uid", this.f9939S);
            hashMap.put("version", this.f9940T);
            hashMap.put("default_cc", this.f9942V);
            hashMap.put("cc", this.f9942V);
            hashMap.put("stamp", C3767h1.m24271Q(EZCallApplication.m26146c(), (String) arrayList.get(arrayList.size() - 1)));
            return C3029a.m26206b("https://app.show-caller.com/api/v1/sealis.php", hashMap);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: G0 */
    private void m26137G0() {
        new Thread(new RunnableC3060d()).start();
    }

    /* renamed from: e0 */
    static /* synthetic */ int m26127e0(LogActivity logActivity) {
        int i = logActivity.f9948b0;
        logActivity.f9948b0 = i + 1;
        return i;
    }

    /* renamed from: g0 */
    static /* synthetic */ int m26125g0(LogActivity logActivity) {
        int i = logActivity.f9949c0;
        logActivity.f9949c0 = i + 1;
        return i;
    }

    /* renamed from: y0 */
    public String m26107y0() {
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("last_update_time", "0");
            hashMap.put("cc", "91");
            hashMap.put("platform", "android");
            hashMap.put("package", this.f9946Z);
            hashMap.put("app_version", this.f9940T);
            hashMap.put("uid", this.f9939S);
            hashMap.put("stamp", C3767h1.m24271Q(getApplicationContext(), this.f9939S));
            hashMap.put("country", "in");
            hashMap.put("state", "");
            hashMap.put("city", "");
            if (C3718c0.f11914a) {
                C3718c0.m24436a("checkupdate", "params: " + hashMap.toString());
            }
            String m26206b = C3029a.m26206b("https://app.show-caller.com/proc/v1/offpaccheupd.php", hashMap);
            if (C3718c0.f11914a) {
                C3718c0.m24436a("checkupdate", "enlode_result: " + m26206b);
            }
            return m26206b;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: z0 */
    public void m26106z0(String str) {
        new C3061e(str).start();
    }

    /* renamed from: A0 */
    public String m26142A0() {
        String str;
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("tel_number", this.f9944X);
            hashMap.put("device", this.f9941U);
            hashMap.put("uid", this.f9939S);
            hashMap.put("version", this.f9940T);
            hashMap.put("default_cc", this.f9942V);
            hashMap.put("stamp", C3767h1.m24271Q(getApplicationContext(), this.f9944X));
            str = C3029a.m26206b("https://app.show-caller.com/api/v1/gecc.php", hashMap);
        } catch (Exception e) {
            e.printStackTrace();
            str = null;
        }
        return str;
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_log);
        m26140C0();
        this.f9939S = C3767h1.m24268T(this);
        this.f9940T = C3767h1.m24265W(this);
        this.f9946Z = C3767h1.m24275M(getApplicationContext());
        this.f9945Y = C3806p.m24083d(EZCallApplication.m26146c()).getCountry_code();
        this.f9947a0 = C3767h1.m24271Q(this, this.f9943W);
        this.f9934N.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC3056a());
        m26137G0();
    }

    /* renamed from: x0 */
    public String m26108x0() {
        String str;
        String str2 = null;
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("app_version", this.f9946Z);
            hashMap.put("uid", this.f9939S);
            hashMap.put("country", "cn");
            hashMap.put("cc", "86");
            hashMap.put("language", Locale.getDefault().getLanguage());
            hashMap.put("last_update_time", "0");
            hashMap.put("stamp", C3767h1.m24271Q(EZCallApplication.m26146c(), this.f9939S));
            if (C3718c0.f11914a) {
                StringBuilder sb = new StringBuilder();
                sb.append("params: ");
                sb.append(hashMap.toString());
                C3718c0.m24436a("wbb", sb.toString());
            }
            String m26206b = C3029a.m26206b("https://app.show-caller.com/proc/v1/parcheupd.php", hashMap);
            str = m26206b;
            if (C3718c0.f11914a) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("enlode_result: ");
                sb2.append(m26206b);
                str2 = m26206b;
                C3718c0.m24436a("wbb", sb2.toString());
                str = m26206b;
            }
        } catch (Exception e) {
            e.printStackTrace();
            str = str2;
        }
        return str;
    }
}
