package com.freshchat.consumer.sdk.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.ConversationOptions;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.p045a.C1314c;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import com.freshchat.consumer.sdk.p054g.C1548h;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1622ap;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1717l;
import com.freshchat.consumer.sdk.p057j.C1720o;
import com.freshchat.consumer.sdk.p057j.p060c.EnumC1674a;
import com.freshchat.consumer.sdk.p061k.C1736b;
import com.freshchat.consumer.sdk.service.p068e.C1895b;
import com.freshchat.consumer.sdk.service.p068e.C1898d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p1727n3.p1869w.p1870a.AbstractC27043a;
import p1727n3.p1869w.p1871b.C27051b;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/ChannelListActivity.class */
public class ChannelListActivity extends AbstractC1419b {

    /* renamed from: aq */
    public static C1466e f3737aq;

    /* renamed from: P */
    private ListView f3738P;

    /* renamed from: Q */
    private View f3739Q;

    /* renamed from: aP */
    private C1736b f3740aP;

    /* renamed from: am */
    private ProgressBar f3741am;

    /* renamed from: ar */
    private C1314c f3745ar;

    /* renamed from: an */
    private ConversationOptions f3742an = new ConversationOptions();

    /* renamed from: ao */
    private List<Channel> f3743ao = new ArrayList();

    /* renamed from: ap */
    private Map<Long, Integer> f3744ap = new HashMap();

    /* renamed from: dH */
    private boolean f3748dH = false;

    /* renamed from: as */
    private AdapterView.OnItemClickListener f3746as = new AdapterView.OnItemClickListener() { // from class: com.freshchat.consumer.sdk.activity.ChannelListActivity.1
        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            ChannelListActivity.this.m41324a((Channel) ChannelListActivity.this.f3743ao.get(i));
        }
    };

    /* renamed from: at */
    private AbstractC27043a.AbstractC27044a<List<Channel>> f3747at = new AbstractC27043a.AbstractC27044a<List<Channel>>() { // from class: com.freshchat.consumer.sdk.activity.ChannelListActivity.2
        /* renamed from: a */
        public void onLoadFinished(C27051b<List<Channel>> c27051b, List<Channel> list) {
            if (C1716k.m39900b(list) == 1 && list.get(0) != null) {
                ChannelListActivity.this.m41324a(list.get(0));
                ChannelListActivity.this.finish();
                return;
            }
            ChannelListActivity.this.f3743ao.clear();
            ChannelListActivity.this.f3743ao.addAll(list);
            if (c27051b instanceof C1548h) {
                ChannelListActivity.this.f3744ap.clear();
                ChannelListActivity.this.f3744ap.putAll(((C1548h) c27051b).m40568iT());
            }
            ChannelListActivity.this.f3748dH = true;
            ChannelListActivity.this.m41318gb();
            ChannelListActivity.this.f3745ar.notifyDataSetChanged();
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [com.freshchat.consumer.sdk.activity.ChannelListActivity, android.app.Activity] */
        /* JADX WARN: Type inference failed for: r1v2, types: [com.freshchat.consumer.sdk.activity.ChannelListActivity, android.app.Activity] */
        @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
        public C27051b<List<Channel>> onCreateLoader(int i, Bundle bundle) {
            return bundle != null ? new C1548h(ChannelListActivity.this.getApplicationContext(), bundle.getBoolean("EXTRA_FORCE_CLEAN_UP_EXPIRED_CSAT"), bundle.getStringArrayList("TAGS")) : new C1548h(ChannelListActivity.this.getApplicationContext(), false);
        }

        @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
        public void onLoaderReset(C27051b<List<Channel>> c27051b) {
            ChannelListActivity.this.f3743ao.clear();
            ChannelListActivity.this.f3745ar.notifyDataSetChanged();
        }
    };

    /* renamed from: F */
    private void m41329F() {
        Bundle bundle = new Bundle();
        if (C1716k.m39902a(this.f3742an.getTags())) {
            bundle.putStringArrayList("TAGS", new ArrayList<>(this.f3742an.getTags()));
        }
        bundle.putBoolean("EXTRA_FORCE_CLEAN_UP_EXPIRED_CSAT", true);
        getSupportLoaderManager().mo976d(0, bundle, this.f3747at);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: G */
    private C1466e m41328G() {
        if (f3737aq == null) {
            f3737aq = C1466e.m40905i(getApplicationContext());
        }
        return f3737aq;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void m41324a(Channel channel) {
        if (channel != null) {
            C1594aa.m40364a(getContext(), this.f3742an).m39890c(channel);
        } else {
            C1471i.m40847a((Context) this, EnumC1464c.CHANNEL_INFO_NOT_AVAILABLE);
        }
    }

    /* renamed from: a */
    private void m41323a(EnumC1674a enumC1674a) {
        int i = C1440g.f3973ld[enumC1674a.ordinal()];
        if (i == 1) {
            boolean m40261aS = C1618al.m40261aS(getContext());
            boolean isEmpty = C1626as.isEmpty(m41328G().m40987bG());
            if (!(!m40261aS) || !isEmpty) {
                m41315ge();
                return;
            }
        } else if (i != 2) {
            if (i != 3) {
                return;
            }
            m41104al();
            return;
        } else if (!C1716k.isEmpty(this.f3743ao)) {
            m41317gc();
            return;
        }
        m41316gd();
    }

    /* renamed from: ga */
    private void m41319ga() {
        this.f3740aP = new C1736b(getContext());
    }

    /* renamed from: gb */
    public void m41318gb() {
        EnumC1674a m39774gq = this.f3740aP.m39774gq();
        EnumC1674a enumC1674a = m39774gq;
        if (m39774gq != EnumC1674a.EXIT_WITH_MESSAGE) {
            enumC1674a = m39774gq;
            if (!this.f3748dH) {
                enumC1674a = EnumC1674a.SHOW_PROGRESS;
            }
        }
        m41323a(enumC1674a);
    }

    /* renamed from: gc */
    private void m41317gc() {
        C1471i.m40840c(this.f3741am);
        C1471i.m40842b(this.f3738P);
        C1471i.m40840c(this.f3739Q);
    }

    /* renamed from: gd */
    private void m41316gd() {
        C1471i.m40840c(this.f3741am);
        C1471i.m40840c(this.f3738P);
        C1471i.m40842b(this.f3739Q);
    }

    /* renamed from: ge */
    private void m41315ge() {
        C1471i.m40842b(this.f3741am);
        C1471i.m40840c(this.f3738P);
        C1471i.m40840c(this.f3739Q);
    }

    private ListView getListView() {
        if (this.f3738P == null) {
            this.f3738P = (ListView) findViewById(C1298R.C1300id.freshchat_activity_channel_list_listview);
        }
        return this.f3738P;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: u */
    private void m41314u() {
        this.f3739Q = findViewById(C1298R.C1300id.freshchat_activity_channel_list_empty_view);
        this.f3741am = (ProgressBar) findViewById(C1298R.C1300id.freshchat_activity_channel_list_progressbar);
        this.f3745ar = new C1314c(this, this.f3743ao, this.f3744ap);
        getListView().setAdapter((ListAdapter) this.f3745ar);
        getListView().setOnItemClickListener(this.f3746as);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public void mo41077a(Context context, Intent intent) {
        String action = intent.getAction();
        if ("com.freshchat.consumer.sdk.actions.ChannelsUpdated".equalsIgnoreCase(action)) {
            m41329F();
        } else if (!"com.freshchat.consumer.sdk.actions.JwtIdTokenStateChanged".equalsIgnoreCase(action) && !"com.freshchat.consumer.sdk.actions.RemoteConfigUpdated".equalsIgnoreCase(action) && (!"com.freshchat.consumer.sdk.actions.JwtModeEnabledForAccount".equalsIgnoreCase(action) || !C1622ap.m40246aZ(getContext()) || !C1720o.m39853bB(getContext()))) {
        } else {
            m41318gb();
        }
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public String[] mo41078a() {
        return new String[]{"com.freshchat.consumer.sdk.actions.JwtModeEnabledForAccount", "com.freshchat.consumer.sdk.actions.ChannelsUpdated", "com.freshchat.consumer.sdk.actions.JwtIdTokenStateChanged", "com.freshchat.consumer.sdk.actions.TokenWaitTimeout", "com.freshchat.consumer.sdk.actions.RemoteConfigUpdated"};
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.C1392a
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C1638b.m40169M(getContext());
        m41319ga();
        setContentView(C1298R.layout.freshchat_activity_channel_list);
        ConversationOptions m39891c = C1717l.m39891c(getIntent().getExtras());
        this.f3742an = m39891c;
        m41100e(C1626as.m40233a(m39891c.getFilteredViewTitle()) ? this.f3742an.getFilteredViewTitle() : getString(C1298R.string.freshchat_activity_title_channel_list));
        m41107C();
        m41314u();
        C1649bg.m40077d(getContext(), getIntent().getStringArrayExtra("INPUT_TAGS"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b, com.freshchat.consumer.sdk.activity.C1392a
    public void onResume() {
        super.onResume();
        boolean isEmpty = C1626as.isEmpty(m41328G().m40987bG());
        C1638b.m40153a(getApplicationContext(), C1895b.EnumC1896a.NORMAL);
        C1638b.m40162a(getApplicationContext(), 3, C1898d.EnumC1899a.NORMAL);
        C1638b.m40170L(getContext());
        if (isEmpty && !C1618al.m40261aS(getContext())) {
            Toast.makeText(getContext(), C1298R.string.freshchat_error_message_not_connected_to_internet, 0).show();
        }
        if (!isEmpty || !C1618al.m40261aS(getContext())) {
            m41329F();
        }
        m41318gb();
    }
}
