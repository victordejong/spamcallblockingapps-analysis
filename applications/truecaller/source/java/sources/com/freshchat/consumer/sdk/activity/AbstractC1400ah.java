package com.freshchat.consumer.sdk.activity;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p057j.C1623aq;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p061k.AbstractC1752n;
import com.freshchat.consumer.sdk.service.Status;
/* renamed from: com.freshchat.consumer.sdk.activity.ah */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/ah.class */
public abstract class AbstractC1400ah<T extends AbstractC1752n> extends AbstractC1419b {

    /* renamed from: Q */
    private View f3903Q;

    /* renamed from: eS */
    private ViewStub f3904eS;

    /* renamed from: eV */
    private View f3905eV;

    /* renamed from: gK */
    private View f3906gK;

    /* renamed from: lG */
    private View f3907lG;

    /* renamed from: lO */
    private AppCompatImageView f3908lO;

    /* renamed from: mt */
    private AppCompatImageView f3909mt;

    /* renamed from: oT */
    private AppCompatImageView f3910oT;

    /* renamed from: pd */
    private TextView f3911pd;

    /* renamed from: pe */
    public T f3912pe;

    /* renamed from: pg */
    private BroadcastReceiver f3913pg = new C1402aj(this);

    /* renamed from: iz */
    private void m41083iz() {
        if (mo41084ig().length > 0) {
            IntentFilter intentFilter = new IntentFilter();
            for (String str : mo41084ig()) {
                intentFilter.addAction(str);
            }
            m41079D().m967c(this.f3913pg, intentFilter);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: U */
    public void mo41096U(int i) {
        int i2;
        int i3;
        if (i == 2) {
            i3 = C1623aq.m40235o(this, C1298R.dimen.freshchat_error_image_height_landscape);
            i2 = C1623aq.m40235o(this, C1298R.dimen.freshchat_error_image_width_landscape);
        } else {
            i2 = -2;
            i3 = -2;
        }
        C1471i.m40846a(this.f3908lO, i3, i2);
        C1471i.m40846a(this.f3909mt, i3, i2);
        C1471i.m40846a(this.f3910oT, i3, i2);
    }

    /* renamed from: a */
    public void mo41095a(Status status) {
        View view;
        if (status == null) {
            return;
        }
        int i = C1403ak.f3916pi[status.ordinal()];
        if (i == 1) {
            view = this.f3905eV;
        } else if (i == 2) {
            view = this.f3906gK;
        } else if (i == 3) {
            mo41089hP();
            return;
        } else if (i == 4) {
            mo41093bv(mo41088hV());
            return;
        } else if (i != 5) {
            return;
        } else {
            view = this.f3907lG;
        }
        m41090h(view);
    }

    /* renamed from: a */
    public void m41094a(boolean z, View.OnClickListener onClickListener) {
        if (z) {
            return;
        }
        View inflate = this.f3904eS.inflate();
        inflate.bringToFront();
        View findViewById = inflate.findViewById(C1298R.C1300id.freshchat_contact_us_btn);
        if (findViewById == null) {
            return;
        }
        findViewById.setOnClickListener(onClickListener);
    }

    /* renamed from: bv */
    public void mo41093bv(String str) {
        m41090h(this.f3903Q);
        this.f3911pd.setText(C1626as.fromHtml(str));
    }

    /* renamed from: dA */
    public abstract String mo41092dA();

    /* renamed from: dh */
    public abstract void mo41091dh();

    /* renamed from: h */
    public void m41090h(View view) {
        C1471i.m40840c(this.f3905eV);
        C1471i.m40840c(this.f3906gK);
        C1471i.m40840c(this.f3907lG);
        C1471i.m40840c(mo41085if());
        C1471i.m40840c(this.f3903Q);
        C1471i.m40842b(view);
    }

    /* renamed from: hP */
    public abstract void mo41089hP();

    /* renamed from: hV */
    public abstract String mo41088hV();

    /* renamed from: i */
    public void m41087i(View view) {
        m41090h(view);
    }

    /* renamed from: ie */
    public abstract void mo41086ie();

    /* renamed from: if */
    public abstract View mo41085if();

    /* renamed from: ig */
    public abstract String[] mo41084ig();

    public void onConfigurationChanged(Configuration configuration) {
        AbstractC1400ah.super.onConfigurationChanged(configuration);
        mo41096U(configuration.orientation);
    }

    @Override // com.freshchat.consumer.sdk.activity.C1392a
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m41083iz();
        mo41091dh();
    }

    public void onDestroy() {
        if (mo41084ig().length > 0) {
            m41079D().m965e(this.f3913pg);
        }
        AbstractC1400ah.super.onDestroy();
    }

    @Override // com.freshchat.consumer.sdk.activity.C1392a
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == C1298R.C1300id.freshchat_menu_item_search_faq) {
            this.f3912pe.m39705jh();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b, com.freshchat.consumer.sdk.activity.C1392a
    public void onResume() {
        super.onResume();
        mo41095a(this.f3912pe.m39707jf());
    }

    /* renamed from: u */
    public void mo41082u() {
        m41100e(mo41092dA());
        m41107C();
        this.f3904eS = (ViewStub) findViewById(C1298R.C1300id.freshchat_contact_us_stub);
        this.f3905eV = findViewById(C1298R.C1300id.faq_loading);
        this.f3906gK = findViewById(C1298R.C1300id.faq_no_internet);
        this.f3907lG = findViewById(C1298R.C1300id.faq_error);
        this.f3903Q = findViewById(C1298R.C1300id.faq_empty);
        this.f3911pd = (TextView) findViewById(C1298R.C1300id.faq_empty_description);
        this.f3910oT = (AppCompatImageView) findViewById(C1298R.C1300id.freshchat_empty_image);
        this.f3909mt = (AppCompatImageView) findViewById(C1298R.C1300id.freshchat_no_internet_image);
        this.f3908lO = (AppCompatImageView) findViewById(C1298R.C1300id.freshchat_error_image);
        ((TextView) findViewById(C1298R.C1300id.faq_retry)).setOnClickListener(new View$OnClickListenerC1401ai(this));
        mo41096U(getResources().getConfiguration().orientation);
    }
}
