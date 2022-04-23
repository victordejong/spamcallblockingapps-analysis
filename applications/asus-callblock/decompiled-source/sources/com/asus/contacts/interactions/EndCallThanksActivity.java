package com.asus.contacts.interactions;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SchedulingUtils;
import com.asus.a.c;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/interactions/EndCallThanksActivity.class */
public class EndCallThanksActivity extends Activity implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private String f2711a = EndCallThanksActivity.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private TextView f2712b;
    private View c;
    private AsusFloatingChildBottomLayout d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.asus.contacts.interactions.EndCallThanksActivity$4  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/asus/contacts/interactions/EndCallThanksActivity$4.class */
    public final class AnonymousClass4 implements Runnable {
        AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SchedulingUtils.doAfterDraw(EndCallThanksActivity.this.d, new Runnable() { // from class: com.asus.contacts.interactions.EndCallThanksActivity.4.1
                @Override // java.lang.Runnable
                public final void run() {
                    new Handler().postDelayed(new Runnable() { // from class: com.asus.contacts.interactions.EndCallThanksActivity.4.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            EndCallThanksActivity.this.finish();
                            EndCallThanksActivity.this.overridePendingTransition(0, 0);
                        }
                    }, 60L);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.d.b();
        this.d.b(new AnonymousClass4());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131297132:
                a();
                return;
            default:
                return;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int q = c.q(this);
        if (q == 0 || !(q == 1 || q % 5 == 0)) {
            Log.d(this.f2711a, "count 0, return");
            finish();
            return;
        }
        if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
            setRequestedOrientation(1);
        } else {
            setRequestedOrientation(-1);
        }
        getWindow().setFlags(131072, 131072);
        setContentView(2131427541);
        try {
            this.d = (AsusFloatingChildBottomLayout) findViewById(2131296865);
            SchedulingUtils.doAfterLayout(this.d, new Runnable() { // from class: com.asus.contacts.interactions.EndCallThanksActivity.1
                @Override // java.lang.Runnable
                public final void run() {
                    EndCallThanksActivity.this.d.a();
                }
            });
            this.d.setOnOutsideTouchListener(new View.OnTouchListener() { // from class: com.asus.contacts.interactions.EndCallThanksActivity.2
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    EndCallThanksActivity.this.a();
                    return true;
                }
            });
            SchedulingUtils.doAfterLayout(this.d, new Runnable() { // from class: com.asus.contacts.interactions.EndCallThanksActivity.3
                @Override // java.lang.Runnable
                public final void run() {
                    EndCallThanksActivity.this.d.a(new Runnable() { // from class: com.asus.contacts.interactions.EndCallThanksActivity.3.1
                        @Override // java.lang.Runnable
                        public final void run() {
                        }
                    });
                }
            });
            this.f2712b = (TextView) findViewById(2131297395);
            this.f2712b.setText(getResources().getString(2131755324, Integer.valueOf(q)));
            this.c = findViewById(2131297132);
            this.c.setOnClickListener(this);
            ObjectAnimator ofInt = ObjectAnimator.ofInt(getWindow(), "statusBarColor", 0, 2130706432);
            ofInt.setDuration(getResources().getInteger(17694720));
            ofInt.setEvaluator(new ArgbEvaluator());
            ofInt.start();
        } catch (Exception e) {
            Log.w(this.f2711a, e.toString());
            finish();
        }
    }
}
