package com.freshchat.consumer.sdk.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.freshchat.consumer.sdk.ConversationOptions;
import com.freshchat.consumer.sdk.FaqOptions;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.p054g.C1540a;
import com.freshchat.consumer.sdk.p054g.C1545e;
import com.freshchat.consumer.sdk.p054g.C1548h;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1622ap;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1717l;
import com.freshchat.consumer.sdk.p057j.C1718m;
import com.freshchat.consumer.sdk.p057j.C1729u;
import com.freshchat.consumer.sdk.p057j.C1730v;
import com.freshchat.consumer.sdk.p057j.C1733y;
import java.util.ArrayList;
import java.util.List;
import p1727n3.p1869w.p1870a.AbstractC27043a;
import p1727n3.p1869w.p1871b.C27051b;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/InterstitialActivity.class */
public class InterstitialActivity extends AbstractC1419b {

    /* renamed from: qN */
    private boolean f3872qN;

    /* renamed from: g */
    private FaqOptions f3870g = new FaqOptions();

    /* renamed from: an */
    private ConversationOptions f3866an = new ConversationOptions();

    /* renamed from: qM */
    private boolean f3871qM = false;

    /* renamed from: bM */
    public AbstractC27043a.AbstractC27044a<List<String>> f3867bM = new AbstractC27043a.AbstractC27044a<List<String>>() { // from class: com.freshchat.consumer.sdk.activity.InterstitialActivity.1
        /* renamed from: a */
        public void onLoadFinished(C27051b<List<String>> c27051b, List<String> list) {
            InterstitialActivity.this.m41136a(list);
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [com.freshchat.consumer.sdk.activity.InterstitialActivity, android.app.Activity] */
        @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
        public C27051b<List<String>> onCreateLoader(int i, Bundle bundle) {
            if (bundle == null || !bundle.containsKey("TAGS")) {
                return null;
            }
            return new C1545e(InterstitialActivity.this.getApplicationContext(), bundle.getStringArrayList("TAGS"));
        }

        @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
        public void onLoaderReset(C27051b<List<String>> c27051b) {
        }
    };

    /* renamed from: bN */
    public AbstractC27043a.AbstractC27044a<List<String>> f3868bN = new AbstractC27043a.AbstractC27044a<List<String>>() { // from class: com.freshchat.consumer.sdk.activity.InterstitialActivity.2
        /* renamed from: a */
        public void onLoadFinished(C27051b<List<String>> c27051b, List<String> list) {
            InterstitialActivity.this.m41130b(list);
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [com.freshchat.consumer.sdk.activity.InterstitialActivity, android.app.Activity] */
        @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
        public C27051b<List<String>> onCreateLoader(int i, Bundle bundle) {
            if (bundle == null || !bundle.containsKey("TAGS")) {
                return null;
            }
            return new C1540a(InterstitialActivity.this.getApplicationContext(), bundle.getStringArrayList("TAGS"));
        }

        @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
        public void onLoaderReset(C27051b<List<String>> c27051b) {
        }
    };

    /* renamed from: bO */
    public AbstractC27043a.AbstractC27044a<List<Channel>> f3869bO = new AbstractC27043a.AbstractC27044a<List<Channel>>() { // from class: com.freshchat.consumer.sdk.activity.InterstitialActivity.3
        /* renamed from: a */
        public void onLoadFinished(C27051b<List<Channel>> c27051b, List<Channel> list) {
            InterstitialActivity.this.m41128c(list);
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [com.freshchat.consumer.sdk.activity.InterstitialActivity, android.app.Activity] */
        @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
        public C27051b<List<Channel>> onCreateLoader(int i, Bundle bundle) {
            if (bundle == null || !bundle.containsKey("TAGS")) {
                return null;
            }
            return new C1548h(InterstitialActivity.this.getApplicationContext(), false, bundle.getStringArrayList("TAGS"));
        }

        @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
        public void onLoaderReset(C27051b<List<Channel>> c27051b) {
        }
    };

    /* renamed from: a */
    public void m41136a(List<String> list) {
        m41127r().m39799w(list);
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: aC */
    private void m41135aC() {
        if (this.f3871qM) {
            return;
        }
        if (getSupportActionBar() != null) {
            getSupportActionBar().mo3557f();
        }
        RelativeLayout relativeLayout = new RelativeLayout(this);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        ProgressBar progressBar = new ProgressBar(this);
        progressBar.setIndeterminate(true);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(13, -1);
        relativeLayout.addView(progressBar, layoutParams2);
        setContentView(relativeLayout, layoutParams);
        this.f3871qM = true;
    }

    /* renamed from: aD */
    private void m41134aD() {
        AbstractC27043a supportLoaderManager;
        AbstractC27043a.AbstractC27044a<List<String>> abstractC27044a;
        if (C1716k.isEmpty(this.f3870g.getTags())) {
            m41127r().m39805eu();
        } else if (!C1733y.m39775cp(getContext())) {
            ArrayList<String> arrayList = new ArrayList<>(this.f3870g.getTags());
            m41135aC();
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("TAGS", arrayList);
            if (this.f3870g.getFilterType() == FaqOptions.FilterType.ARTICLE) {
                supportLoaderManager = getSupportLoaderManager();
                abstractC27044a = this.f3868bN;
            } else if (this.f3870g.getFilterType() != FaqOptions.FilterType.CATEGORY) {
                return;
            } else {
                supportLoaderManager = getSupportLoaderManager();
                abstractC27044a = this.f3867bM;
            }
            supportLoaderManager.mo976d(0, bundle, abstractC27044a);
            return;
        } else {
            m41127r().m39803iY();
        }
        finish();
    }

    /* renamed from: aE */
    private void m41133aE() {
        if (C1716k.isEmpty(this.f3866an.getTags())) {
            m41132aF().m39889eu();
            finish();
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>(this.f3866an.getTags());
        m41135aC();
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("TAGS", arrayList);
        getSupportLoaderManager().mo976d(0, bundle, this.f3869bO);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: aF */
    private C1718m m41132aF() {
        return C1594aa.m40364a((Context) this, this.f3866an);
    }

    /* renamed from: b */
    public void m41130b(List<String> list) {
        m41127r().m39798x(list);
        finish();
    }

    /* renamed from: c */
    public void m41128c(List<Channel> list) {
        m41132aF().m39887u(list);
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: r */
    private C1730v m41127r() {
        return C1594aa.m40363a((Context) this, this.f3870g);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public void mo41077a(Context context, Intent intent) {
        if (!C1626as.m40223o(intent.getAction(), "com.freshchat.consumer.sdk.actions.RemoteConfigUpdated") || this.f3870g == null) {
            return;
        }
        m41134aD();
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public String[] mo41078a() {
        return this.f3872qN ? new String[]{"com.freshchat.consumer.sdk.actions.RemoteConfigUpdated"} : new String[0];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.C1392a
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        if (!FaqOptions.class.getSimpleName().equals(extras.getString("OPTIONS_TYPE"))) {
            if (!ConversationOptions.class.getSimpleName().equals(extras.getString("OPTIONS_TYPE"))) {
                return;
            }
            this.f3866an = C1717l.m39891c(getIntent().getExtras());
            m41133aE();
            return;
        }
        this.f3870g = C1729u.m39812d(getIntent().getExtras());
        boolean z = !C1622ap.m40246aZ(this);
        this.f3872qN = z;
        if (!z) {
            m41134aD();
            return;
        }
        C1638b.m40170L(getContext());
        m41135aC();
    }
}
