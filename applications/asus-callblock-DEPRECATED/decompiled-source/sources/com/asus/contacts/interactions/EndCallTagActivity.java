package com.asus.contacts.interactions;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import android.widget.Toast;
import com.android.contacts.a.b;
import com.android.contacts.activities.BlockAndTagNumberActivity;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SchedulingUtils;
import com.android.vcard.VCardConfig;
import com.asus.a.a;
import com.asus.a.c;
import com.asus.blocklist.BlockListService;
import com.asus.blocklist.g;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/interactions/EndCallTagActivity.class */
public class EndCallTagActivity extends Activity implements View.OnClickListener {
    private String j;
    private View k;
    private View l;
    private View m;
    private View n;
    private View o;
    private TextView p;
    private CheckBox q;
    private boolean s;
    private View t;
    private View u;
    private View v;
    private AsusFloatingChildBottomLayout y;

    /* renamed from: b  reason: collision with root package name */
    private String f2701b = EndCallTagActivity.class.getSimpleName();
    private final int c = 1;
    private final int d = 2;
    private final int e = 3;
    private final int f = 4;
    private final int g = 5;
    private final int h = 6;
    private final int i = 7;
    private int r = -1;
    private String w = BuildConfig.FLAVOR;
    private int x = -1;

    /* renamed from: a  reason: collision with root package name */
    public long f2700a = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.asus.contacts.interactions.EndCallTagActivity$4  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/asus/contacts/interactions/EndCallTagActivity$4.class */
    public final class AnonymousClass4 implements Runnable {
        AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SchedulingUtils.doAfterDraw(EndCallTagActivity.this.y, new Runnable() { // from class: com.asus.contacts.interactions.EndCallTagActivity.4.1
                @Override // java.lang.Runnable
                public final void run() {
                    new Handler().postDelayed(new Runnable() { // from class: com.asus.contacts.interactions.EndCallTagActivity.4.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            EndCallTagActivity.this.finish();
                            EndCallTagActivity.this.overridePendingTransition(0, 0);
                        }
                    }, 60L);
                }
            });
        }
    }

    private void a(int i, boolean z) {
        Log.d(this.f2701b, "callBackAndFinish " + i + " " + z);
        Intent intent = new Intent();
        intent.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_TAGGED_RESULT, z);
        intent.putExtra("ASUS_CALLER_BLOCK_THREAD_ID", this.f2700a);
        intent.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_NUMBER, this.j);
        setResult(i, intent);
        Log.d(this.f2701b, "callBackAndFinish mThreadID:" + this.f2700a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        Log.d(this.f2701b, "close");
        if (z) {
            this.y.b();
            this.y.b(new AnonymousClass4());
            return;
        }
        finish();
        overridePendingTransition(0, 0);
    }

    private void c() {
        d();
        a(-1, false);
        a(true);
    }

    private void d() {
        char c;
        String str;
        String str2 = BuildConfig.FLAVOR;
        if (this.r == 7) {
            c = a.d(this, this.j) ? (char) 1 : (char) 65535;
        } else if (this.r == 3) {
            str2 = getResources().getString(2131755164);
            c = a.b(this, this.j, "promote sales", this.w) ? (char) 1 : (char) 65535;
        } else if (this.r == 2) {
            str2 = getResources().getString(2131755165);
            c = a.b(this, this.j, "fraud", this.w) ? (char) 1 : (char) 65535;
        } else if (this.r == 1) {
            str2 = getResources().getString(2131755161);
            c = a.b(this, this.j, "crank", this.w) ? (char) 1 : (char) 65535;
        } else if (this.r == 4) {
            str2 = getResources().getString(2131755162);
            c = a.b(this, this.j, "house agent", this.w) ? (char) 1 : (char) 65535;
        } else if (this.r == 5) {
            str2 = getResources().getString(2131755163);
            c = a.b(this, this.j, "insurance", this.w) ? (char) 1 : (char) 65535;
        } else {
            c = a.b(this, this.j, "other", this.w) ? (char) 1 : (char) 65535;
        }
        if (c == 1) {
            Toast.makeText(this, this.r == 7 ? getString(2131755243) : String.format(getString(2131755323), this.j, str2), 0).show();
            switch (this.x) {
                case 0:
                    str = "TYPE_ENDCALL";
                    break;
                case 1:
                    str = "TYPE_CONFIRM";
                    break;
                case 2:
                    str = "TYPE_CALLLOG";
                    break;
                case 3:
                    str = "TYPE_DETAIL";
                    break;
                default:
                    str = "other";
                    break;
            }
            SharedPreferences m = c.m(this);
            if (m != null) {
                m.edit().putInt("mark_from:" + str, m.getInt("mark_from:" + str, 0) + 1).apply();
            }
            if (str.equals("TYPE_ENDCALL") || str.equals("TYPE_CONFIRM")) {
                PreferenceManager.getDefaultSharedPreferences(this).edit().putString("callguard_number_to_refresh", this.j + "," + System.currentTimeMillis()).apply();
            }
            c.b(this, this.j);
            Log.d(this.f2701b, "Tag number succeeded");
        } else if (c == 65535) {
            Toast.makeText(this, String.format(getString(2131755240), this.j), 0).show();
            Log.d(this.f2701b, "Tag number failed");
        } else {
            Log.d(this.f2701b, "Tag number no updated");
        }
    }

    public final void a() {
        Log.d(this.f2701b, "doPositiveBlockNumber");
        String str = this.j;
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ((i == 0 && charAt == '+') || PhoneNumberUtils.isISODigit(charAt) || charAt == '#' || charAt == '*' || charAt == ',') {
                sb.append(charAt);
            }
        }
        String sb2 = sb.toString();
        if (g.h(this)) {
            com.asus.blocklist.backwardcompatible.a.c(this, sb2);
        } else {
            g.e(this, sb2);
        }
        d();
        a(-1, true);
        a(true);
    }

    public final void b() {
        Log.d(this.f2701b, "doNegativeBlockNumber");
        a(0, false);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        a(true);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z;
        switch (view.getId()) {
            case 2131296303:
                b.a();
                b.a(111, this, "Call end", "Add to block list", null, null);
                Intent intent = new Intent(this, BlockListService.class);
                intent.setAction("android.intent.action.ASUS_ADD_NUMBER_TO_BLOCK_LIST_SERVICE");
                intent.putExtra("number", this.j);
                startService(intent);
                a(false);
                z = false;
                break;
            case 2131296304:
                b.a();
                b.a(111, this, "Call end", "Add to contact", null, null);
                a.a(this, this.j);
                a(false);
                z = false;
                break;
            case 2131296541:
                a(true);
                z = false;
                break;
            case 2131297372:
                Log.i(this.f2701b, "Cancel tag " + this.j);
                a(true);
                z = false;
                break;
            case 2131297374:
                Intent intent2 = new Intent(this, EndCallCustomTagActivity.class);
                intent2.putExtra("number", this.j);
                intent2.putExtra("EXTRA_IS_BLOCK_CHECKED", this.q.isChecked());
                intent2.putExtra("ASUS_CALLER_BLOCK_THREAD_ID", this.f2700a);
                intent2.setFlags(VCardConfig.FLAG_REFRAIN_PHONE_NUMBER_FORMATTING);
                intent2.putExtra("markFrom", this.x);
                startActivity(intent2);
                a(false);
                z = false;
                break;
            case 2131297378:
                if (this.q.isChecked()) {
                    Log.i(this.f2701b, "Need to block!");
                    com.android.contacts.f.b.a(false, true, 2).show(getFragmentManager(), "block_notice_dialog");
                } else {
                    c();
                }
                Log.i(this.f2701b, "Tag " + this.j + " to tag " + this.r);
                z = false;
                break;
            case 2131297379:
                this.r = this.r == 1 ? -1 : 1;
                z = true;
                break;
            case 2131297383:
                this.r = this.r == 3 ? -1 : 3;
                z = true;
                break;
            case 2131297385:
                this.r = this.r == 2 ? -1 : 2;
                z = true;
                break;
            default:
                z = false;
                break;
        }
        if (z) {
            this.k.setSelected(this.r == 1);
            this.m.setSelected(this.r == 3);
            this.l.setSelected(this.r == 2);
            if (!this.s) {
                if (this.q.isChecked()) {
                    Log.i(this.f2701b, "Need to block!");
                    com.android.contacts.f.b.a(false, true, 2).show(getFragmentManager(), "block_notice_dialog");
                } else {
                    c();
                }
                Log.i(this.f2701b, "Tag " + this.j + " to tag " + this.r);
            } else if (this.r == -1) {
                this.p.setTextColor(getResources().getColor(2131034174));
                this.p.setBackgroundResource(2131165420);
                int dimensionPixelOffset = getResources().getDimensionPixelOffset(2131100091);
                this.p.setPadding(0, dimensionPixelOffset, 0, dimensionPixelOffset);
                this.p.setEnabled(false);
            } else {
                this.p.setTextColor(getResources().getColor(17170443));
                this.p.setBackgroundResource(2131165265);
                this.p.setEnabled(true);
            }
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        Log.d(this.f2701b, "onCreate");
        super.onCreate(bundle);
        if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
            setRequestedOrientation(1);
        } else {
            setRequestedOrientation(-1);
        }
        getWindow().setFlags(131072, 131072);
        Intent intent = getIntent();
        if (intent != null) {
            this.j = intent.getStringExtra("number");
            this.s = intent.getBooleanExtra("isShowBlockCheck", true);
            this.x = intent.getIntExtra("markFrom", -1);
            this.f2700a = intent.getLongExtra("ASUS_CALLER_BLOCK_THREAD_ID", 0L);
            Log.d(this.f2701b, "mThreadID:" + this.f2700a);
            if (TextUtils.isEmpty(this.j)) {
                Log.i(this.f2701b, "No phone number. finish!");
                finish();
                return;
            } else if (intent.getBooleanExtra("doNotTag", false)) {
                this.r = 7;
                d();
                a(-1, false);
                finish();
                return;
            }
        }
        if (c.e()) {
            setContentView(2131427536);
            this.k = findViewById(2131297379);
            this.l = findViewById(2131297385);
            this.m = findViewById(2131297383);
            this.n = findViewById(2131297374);
            this.o = findViewById(2131297372);
            this.p = (TextView) findViewById(2131297378);
            this.q = (CheckBox) findViewById(2131296302);
            this.k.setOnClickListener(this);
            this.l.setOnClickListener(this);
            this.m.setOnClickListener(this);
            this.n.setOnClickListener(this);
            this.o.setOnClickListener(this);
            this.p.setOnClickListener(this);
            if (!this.s) {
                this.q.setVisibility(8);
                this.p.setVisibility(8);
                findViewById(2131296534).setVisibility(0);
            }
        } else {
            setContentView(2131427535);
            this.t = findViewById(2131296304);
            this.u = findViewById(2131296303);
            this.v = findViewById(2131297372);
            this.t.setOnClickListener(this);
            this.u.setOnClickListener(this);
            this.v.setOnClickListener(this);
            b.a();
            b.a(111, this, "Call end", "Show block dialog", null, null);
        }
        ((TextView) findViewById(2131297151)).setText(this.j);
        try {
            this.y = (AsusFloatingChildBottomLayout) findViewById(2131296865);
            SchedulingUtils.doAfterLayout(this.y, new Runnable() { // from class: com.asus.contacts.interactions.EndCallTagActivity.1
                @Override // java.lang.Runnable
                public final void run() {
                    EndCallTagActivity.this.y.a();
                }
            });
            this.y.setOnOutsideTouchListener(new View.OnTouchListener() { // from class: com.asus.contacts.interactions.EndCallTagActivity.2
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    EndCallTagActivity.this.a(true);
                    return true;
                }
            });
            SchedulingUtils.doAfterLayout(this.y, new Runnable() { // from class: com.asus.contacts.interactions.EndCallTagActivity.3
                @Override // java.lang.Runnable
                public final void run() {
                    EndCallTagActivity.this.y.a(new Runnable() { // from class: com.asus.contacts.interactions.EndCallTagActivity.3.1
                        @Override // java.lang.Runnable
                        public final void run() {
                        }
                    });
                }
            });
            ObjectAnimator ofInt = ObjectAnimator.ofInt(getWindow(), "statusBarColor", 0, 2130706432);
            ofInt.setDuration(getResources().getInteger(17694720));
            ofInt.setEvaluator(new ArgbEvaluator());
            ofInt.start();
        } catch (Exception e) {
            Log.w(this.f2701b, e.toString());
            finish();
        }
    }
}
