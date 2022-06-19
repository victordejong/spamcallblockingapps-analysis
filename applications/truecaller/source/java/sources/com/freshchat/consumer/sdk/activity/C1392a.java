package com.freshchat.consumer.sdk.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.Freshchat;
import com.freshchat.consumer.sdk.FreshchatActionListener;
import com.freshchat.consumer.sdk.FreshchatUserInteractionListener;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p047b.C1467f;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1610af;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1621ao;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1719n;
import com.freshchat.consumer.sdk.p057j.C1723q;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.activity.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/a.class */
public class C1392a extends h {

    /* renamed from: ly */
    private long f3895ly;

    /* renamed from: a */
    private String m41105a(View view) {
        if (view == null || view.getId() == -1) {
            return "";
        }
        return view.getClass() + " with id '" + view.getContext().getResources().getResourceEntryName(view.getId()) + "'";
    }

    /* renamed from: a */
    private static boolean m41106a(Context context) {
        boolean z;
        try {
            String m41103b = m41103b(context);
            int identifier = context.getResources().getIdentifier("freshchatDisableFrame", "string", context.getPackageName());
            z = true;
            if (identifier != 0) {
                z = true;
                if (m41103b.equalsIgnoreCase(context.getResources().getString(identifier))) {
                    z = false;
                }
            }
        } catch (Exception e) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    private static String m41103b(Context context) {
        C1466e m40905i = C1466e.m40905i(context);
        String str = m40905i.getAppId() + "73463f9d-70de-41f8-857a-58590bdd5903" + m40905i.getAppKey();
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.reverse();
        return C1594aa.m40357aA(sb.toString());
    }

    /* renamed from: f */
    private boolean m41099f(long j, long j2) {
        boolean z = false;
        if (j2 > 0) {
            z = false;
            if (j > 0) {
                z = false;
                if (j < j2) {
                    z = true;
                }
            }
        }
        return z;
    }

    private FreshchatUserInteractionListener getFreshchatUserInteractionListener() {
        return Freshchat.getInstance(getContext()).getFreshchatUserInteractionListener();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: C */
    public void m41107C() {
        if (!m41106a(getContext())) {
            return;
        }
        TextView textView = new TextView(this);
        textView.setBackgroundColor(-16777216);
        textView.setTextColor(-1);
        textView.setTextSize(10.0f);
        textView.setText("Powered by Freshchat");
        textView.setGravity(17);
        int m40303h = C1610af.m40303h(this, 2);
        textView.setPadding(0, m40303h, 0, m40303h);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2, 81);
        layoutParams.setMargins(0, 0, 0, 0);
        textView.setLayoutParams(layoutParams);
        View findViewById = findViewById(16908290);
        if (!(findViewById instanceof FrameLayout)) {
            return;
        }
        FrameLayout frameLayout = (FrameLayout) findViewById;
        frameLayout.addView(textView);
        int m40303h2 = C1610af.m40303h(this, 16);
        View childAt = frameLayout.getChildAt(0);
        if (childAt == null) {
            return;
        }
        int paddingLeft = childAt.getPaddingLeft();
        int paddingRight = childAt.getPaddingRight();
        C1471i.m40851a(getContext(), childAt, paddingLeft, childAt.getPaddingTop(), paddingRight, childAt.getPaddingBottom() + m40303h2);
    }

    /* renamed from: al */
    public void m41104al() {
        C1471i.m40855a(getContext(), C1298R.string.freshchat_error_message_token_failed);
        m41098gs();
    }

    /* renamed from: bM */
    public boolean m41102bM() {
        return (this instanceof CategoryListActivity) || (this instanceof ArticleListActivity) || (this instanceof ArticleDetailActivity) || (this instanceof AbstractC1400ah);
    }

    /* renamed from: dH */
    public boolean m41101dH() {
        return getFreshchatUserInteractionListener() != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public void m41100e(String str) {
        AbstractC25393a supportActionBar = getSupportActionBar();
        AbstractC25393a abstractC25393a = supportActionBar;
        if (supportActionBar == null) {
            abstractC25393a = C1467f.m40873j(this);
        }
        if (abstractC25393a == null) {
            StringBuilder m8728C = C22128a.m8728C("Failed to set ActionBar for ");
            m8728C.append(getClass().getSimpleName());
            C1613ai.m40283e("FRESHCHAT_WARNING", m8728C.toString());
            return;
        }
        abstractC25393a.mo3553n(true);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        abstractC25393a.mo3542y(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void freshchatOnClickProxy(View view) {
        String str = view.getTag() != null ? (String) view.getTag() : null;
        try {
            Class m40248u = C1621ao.m40248u(view.getContext(), str);
            if (m40248u == null) {
                if (!C1626as.isEmpty(str)) {
                    str.startsWith(getPackageName());
                }
                m41105a(view);
            }
            Object newInstance = m40248u.newInstance();
            if (newInstance instanceof FreshchatActionListener) {
                ((FreshchatActionListener) newInstance).onClick(view);
            } else {
                m41105a(view);
            }
        } catch (Exception e) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Context getContext() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: gs */
    public void m41098gs() {
        C1466e.m40905i((Context) this).m40911gu();
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onBackPressed() {
        try {
            C1392a.super.onBackPressed();
        } catch (IllegalStateException e) {
            C1723q.m39823a(e);
            finish();
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    public void onCreate(Bundle bundle) {
        char c;
        C1392a.super.onCreate(bundle);
        if (bundle == null) {
            c = C1719n.m39866fP();
        } else if (!bundle.containsKey("EXTRA_CREATED_AT")) {
            return;
        } else {
            c = bundle.getLong("EXTRA_CREATED_AT");
        }
        this.f3895ly = c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            if (MediaSessionCompat.m43201s0(this) == null) {
                onBackPressed();
                return true;
            }
            Intent m43207q0 = MediaSessionCompat.m43207q0(this);
            if (m43207q0 != null) {
                navigateUpTo(m43207q0);
                return true;
            }
            StringBuilder m8728C = C22128a.m8728C("Activity ");
            m8728C.append(getClass().getSimpleName());
            m8728C.append(" does not have a parent activity name specified. (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data>  element in your manifest?)");
            throw new IllegalArgumentException(m8728C.toString());
        }
        return C1392a.super.onOptionsItemSelected(menuItem);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onResume() {
        C1392a.super.onResume();
        if (m41099f(this.f3895ly, C1466e.m40905i((Context) this).m40912gt())) {
            finish();
            return;
        }
        long m40900iN = C1466e.m40905i((Context) this).m40900iN();
        if (m41102bM() && m41099f(this.f3895ly, m40900iN)) {
            finish();
            return;
        }
        C1466e m40905i = C1466e.m40905i(getApplicationContext());
        if (m40905i == null || m40905i.isAccountActive()) {
            return;
        }
        finish();
    }

    public void onSaveInstanceState(Bundle bundle) {
        bundle.putLong("EXTRA_CREATED_AT", this.f3895ly);
        C1392a.super.onSaveInstanceState(bundle);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onUserInteraction() {
        C1392a.super.onUserInteraction();
        try {
            if (!m41101dH() || getFreshchatUserInteractionListener() == null) {
                return;
            }
            getFreshchatUserInteractionListener().onUserInteraction();
        } catch (Exception e) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onUserLeaveHint() {
        C1392a.super.onUserLeaveHint();
        try {
            if (!m41101dH() || getFreshchatUserInteractionListener() == null) {
                return;
            }
            getFreshchatUserInteractionListener().onUserLeaveHint();
        } catch (Exception e) {
        }
    }
}
