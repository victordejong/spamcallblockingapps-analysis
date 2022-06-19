package com.freshchat.consumer.sdk.activity;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RatingBar;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.activity.PictureAttachmentActivity;
import com.freshchat.consumer.sdk.beans.CalendarDay;
import com.freshchat.consumer.sdk.beans.CalendarMessageMeta;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.beans.Conversation;
import com.freshchat.consumer.sdk.beans.Csat;
import com.freshchat.consumer.sdk.beans.CsatResponse;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.Participant;
import com.freshchat.consumer.sdk.beans.config.RemoteConfig;
import com.freshchat.consumer.sdk.beans.fragment.AudioFragment;
import com.freshchat.consumer.sdk.beans.fragment.CallbackButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.CarouselCardDefaultFragment;
import com.freshchat.consumer.sdk.beans.fragment.CollectionFragment;
import com.freshchat.consumer.sdk.beans.fragment.ImageFragment;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.fragment.QuickReplyButtonFragment;
import com.freshchat.consumer.sdk.beans.fragment.QuickReplyDropDownFragment;
import com.freshchat.consumer.sdk.beans.fragment.TextFragment;
import com.freshchat.consumer.sdk.beans.reqres.CsatResponseRequest;
import com.freshchat.consumer.sdk.p045a.C1316d;
import com.freshchat.consumer.sdk.p045a.C1325e;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import com.freshchat.consumer.sdk.p047b.EnumC1475k;
import com.freshchat.consumer.sdk.p049c.C1508e;
import com.freshchat.consumer.sdk.p049c.C1511g;
import com.freshchat.consumer.sdk.p053f.View$OnTouchListenerC1536b;
import com.freshchat.consumer.sdk.p054g.C1547g;
import com.freshchat.consumer.sdk.p054g.C1550i;
import com.freshchat.consumer.sdk.p055h.C1555b;
import com.freshchat.consumer.sdk.p056i.RunnableC1560c;
import com.freshchat.consumer.sdk.p057j.AbstractC1631ax;
import com.freshchat.consumer.sdk.p057j.C1594aa;
import com.freshchat.consumer.sdk.p057j.C1611ag;
import com.freshchat.consumer.sdk.p057j.C1613ai;
import com.freshchat.consumer.sdk.p057j.C1618al;
import com.freshchat.consumer.sdk.p057j.C1619am;
import com.freshchat.consumer.sdk.p057j.C1620an;
import com.freshchat.consumer.sdk.p057j.C1622ap;
import com.freshchat.consumer.sdk.p057j.C1623aq;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1628au;
import com.freshchat.consumer.sdk.p057j.C1630aw;
import com.freshchat.consumer.sdk.p057j.C1632ay;
import com.freshchat.consumer.sdk.p057j.C1634az;
import com.freshchat.consumer.sdk.p057j.C1638b;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import com.freshchat.consumer.sdk.p057j.C1669by;
import com.freshchat.consumer.sdk.p057j.C1685cj;
import com.freshchat.consumer.sdk.p057j.C1689cm;
import com.freshchat.consumer.sdk.p057j.C1702cy;
import com.freshchat.consumer.sdk.p057j.C1710g;
import com.freshchat.consumer.sdk.p057j.C1711h;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1720o;
import com.freshchat.consumer.sdk.p057j.C1722p;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p057j.C1724r;
import com.freshchat.consumer.sdk.p057j.C1732x;
import com.freshchat.consumer.sdk.p061k.C1737c;
import com.freshchat.consumer.sdk.p061k.C1740e;
import com.freshchat.consumer.sdk.p061k.C1743g;
import com.freshchat.consumer.sdk.p062l.C1766c;
import com.freshchat.consumer.sdk.p063m.C1782f;
import com.freshchat.consumer.sdk.p069ui.CarouselCardView;
import com.freshchat.consumer.sdk.p069ui.FlowLayout;
import com.freshchat.consumer.sdk.service.AbstractC1804a;
import com.freshchat.consumer.sdk.service.p064a.C1807c;
import com.freshchat.consumer.sdk.service.p067d.C1869c;
import com.freshchat.consumer.sdk.service.p067d.C1870d;
import com.freshchat.consumer.sdk.service.p068e.C1895b;
import com.freshchat.consumer.sdk.service.p068e.C1898d;
import com.freshchat.consumer.sdk.service.p068e.C1915r;
import com.freshchat.consumer.sdk.service.p068e.C1918t;
import com.tenor.android.core.constant.ContentFormat;
import io.agora.rtc.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import n3.b.a.g;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1744b0.p1745a.C25586h;
import p1727n3.p1869w.p1870a.AbstractC27043a;
import p1727n3.p1869w.p1871b.C27051b;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/ConversationDetailActivity.class */
public class ConversationDetailActivity extends AbstractC1419b implements AbstractC1631ax, C1782f.AbstractC1783a {
    public static final String TAG = ConversationDetailActivity.class.getName();

    /* renamed from: aS */
    private static long f3751aS;

    /* renamed from: aA */
    private View f3752aA;

    /* renamed from: aB */
    private RecyclerView f3753aB;

    /* renamed from: aC */
    private EditText f3754aC;

    /* renamed from: aD */
    private View f3755aD;

    /* renamed from: aE */
    private View f3756aE;

    /* renamed from: aF */
    private View f3757aF;

    /* renamed from: aG */
    private View f3758aG;

    /* renamed from: aH */
    private ProgressBar f3759aH;

    /* renamed from: aI */
    private TextView f3760aI;

    /* renamed from: aJ */
    private LinearLayoutManager f3761aJ;

    /* renamed from: aK */
    private String f3762aK;

    /* renamed from: aL */
    private Conversation f3763aL;

    /* renamed from: aO */
    private boolean f3766aO;

    /* renamed from: aQ */
    private C1316d f3767aQ;

    /* renamed from: aR */
    private String f3768aR;

    /* renamed from: aT */
    private CountDownTimer f3769aT;

    /* renamed from: aU */
    private g f3770aU;

    /* renamed from: aq */
    private C1466e f3776aq;

    /* renamed from: av */
    private C1511g f3777av;

    /* renamed from: aw */
    private ClipboardManager f3778aw;

    /* renamed from: ax */
    private C1711h f3779ax;

    /* renamed from: ay */
    private View f3780ay;

    /* renamed from: az */
    private View f3781az;

    /* renamed from: ba */
    private RecyclerView f3782ba;

    /* renamed from: bf */
    private View f3786bf;

    /* renamed from: bg */
    private View f3787bg;

    /* renamed from: bi */
    private View f3789bi;

    /* renamed from: bj */
    private C1743g f3790bj;

    /* renamed from: bp */
    private View f3795bp;

    /* renamed from: bq */
    private TextView f3796bq;

    /* renamed from: cT */
    private C1782f f3797cT;
    private long channelId;
    private String channelType;

    /* renamed from: eT */
    private C1508e f3801eT;

    /* renamed from: hE */
    private ConnectivityManager.NetworkCallback f3802hE;

    /* renamed from: jo */
    private boolean f3804jo;

    /* renamed from: lE */
    private String[] f3805lE;

    /* renamed from: le */
    private View f3806le;

    /* renamed from: lf */
    private View f3807lf;

    /* renamed from: lg */
    private RemoteConfig f3808lg;

    /* renamed from: lz */
    private C1737c f3809lz;
    private int orientation;

    /* renamed from: aM */
    private List<Message> f3764aM = new ArrayList();

    /* renamed from: aN */
    private Map<String, Participant> f3765aN = new HashMap();

    /* renamed from: jn */
    private long f3803jn = -1;

    /* renamed from: bn */
    private CarouselCardView.AbstractC1926a f3793bn = new CarouselCardView.AbstractC1926a() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.12
        @Override // com.freshchat.consumer.sdk.p069ui.CarouselCardView.AbstractC1926a
        /* renamed from: a */
        public void mo39300a(CarouselCardDefaultFragment carouselCardDefaultFragment) {
            ConversationDetailActivity.this.mo40187ao();
            Message m39763a = ConversationDetailActivity.this.f3809lz.m39763a(ConversationDetailActivity.this.m41306G().m40966bj(), carouselCardDefaultFragment, ConversationDetailActivity.this.m41252af(), ConversationDetailActivity.this.channelId, ConversationDetailActivity.this.f3809lz.m39739E(ConversationDetailActivity.this.f3764aM));
            if (m39763a != null) {
                ConversationDetailActivity.this.m41263a(m39763a);
                C1649bg.m40098a(ConversationDetailActivity.this.getContext(), carouselCardDefaultFragment);
            }
        }
    };

    /* renamed from: bo */
    private C1316d.AbstractC1322f f3794bo = new C1316d.AbstractC1322f() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.15
        @Override // com.freshchat.consumer.sdk.p045a.C1316d.AbstractC1322f
        /* renamed from: f */
        public void mo41170f(Message message) {
            if (message == null) {
                return;
            }
            ConversationDetailActivity.this.f3809lz.m39755y(message.getId());
        }
    };

    /* renamed from: cU */
    public final C1316d.AbstractC1323g f3798cU = new C1316d.AbstractC1323g() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.16
        /* JADX WARN: Type inference failed for: r0v6, types: [com.freshchat.consumer.sdk.activity.ConversationDetailActivity, android.app.Activity] */
        @Override // com.freshchat.consumer.sdk.p045a.C1316d.AbstractC1323g
        /* renamed from: a */
        public void mo41169a(Message message, boolean z) {
            if (!C1630aw.m40204eS() || ConversationDetailActivity.this.m41300J() == null || message == null) {
                return;
            }
            String string = ConversationDetailActivity.this.getString(C1298R.string.freshchat_message_content_copied_to_clipboard);
            String m39393a = C1869c.m39393a(ConversationDetailActivity.this.getContext(), message, z);
            if (!C1626as.m40233a(m39393a)) {
                return;
            }
            ConversationDetailActivity.this.m41300J().setPrimaryClip(ClipData.newPlainText(m39393a, m39393a));
            Toast.makeText(ConversationDetailActivity.this.getContext(), string, 1).show();
        }
    };

    /* renamed from: aV */
    private TextWatcher f3771aV = new TextWatcher() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.19
        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            boolean z = editable != null && editable.length() > 0;
            ConversationDetailActivity.this.f3756aE.setAlpha(z ? 1.0f : 0.6f);
            ConversationDetailActivity.this.m41261a(true ^ z);
            if (ConversationDetailActivity.this.m41101dH()) {
                ConversationDetailActivity.this.onUserInteraction();
            }
            if (editable == null || !C1722p.m39831aD(ConversationDetailActivity.this.getContext())) {
                return;
            }
            C1471i.m40849a(ConversationDetailActivity.this.getContext(), ConversationDetailActivity.this.f3754aC);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    };

    /* renamed from: aW */
    private DialogInterface.OnClickListener f3772aW = new DialogInterface.OnClickListener() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.20
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                ConversationDetailActivity.this.m41257aa();
            } else if (i != 1) {
            } else {
                ConversationDetailActivity.this.m41281Z();
            }
        }
    };

    /* renamed from: aX */
    private View.OnClickListener f3773aX = new View.OnClickListener() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.21
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ConversationDetailActivity.this.m41282Y();
            C1471i.m40853a(ConversationDetailActivity.this.getContext(), (View) ConversationDetailActivity.this.f3754aC);
        }
    };

    /* renamed from: aY */
    private View.OnClickListener f3774aY = new View.OnClickListener() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C1471i.m40853a(ConversationDetailActivity.this.getContext(), (View) ConversationDetailActivity.this.f3754aC);
            ConversationDetailActivity.this.m41287T();
        }
    };

    /* renamed from: aZ */
    private View.OnLongClickListener f3775aZ = new View.OnLongClickListener() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.3
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            C1471i.m40853a(ConversationDetailActivity.this.getContext(), (View) ConversationDetailActivity.this.f3754aC);
            ConversationDetailActivity.this.m41287T();
            return true;
        }
    };

    /* renamed from: bk */
    private View.OnClickListener f3791bk = new View.OnClickListener() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.4
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C1471i.m40840c(view);
            ConversationDetailActivity.this.m41200gW();
        }
    };

    /* renamed from: bl */
    private C1325e.AbstractC1326a f3792bl = new C1325e.AbstractC1326a() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.5
        @Override // com.freshchat.consumer.sdk.p045a.C1325e.AbstractC1326a
        /* renamed from: a */
        public void mo41167a(QuickReplyButtonFragment quickReplyButtonFragment, long j) {
            ConversationDetailActivity.this.mo40187ao();
            Message m39763a = ConversationDetailActivity.this.f3809lz.m39763a(ConversationDetailActivity.this.m41306G().m40966bj(), quickReplyButtonFragment, ConversationDetailActivity.this.m41252af(), ConversationDetailActivity.this.channelId, j);
            if (m39763a != null) {
                ConversationDetailActivity.this.m41263a(m39763a);
                C1649bg.m40097a(ConversationDetailActivity.this.getContext(), quickReplyButtonFragment);
            }
        }
    };

    /* renamed from: bb */
    private AbstractC27043a.AbstractC27044a<List<Message>> f3783bb = new C13816();

    /* renamed from: cW */
    private C1766c.AbstractC1768b f3799cW = new C13827();

    /* renamed from: bh */
    private AbstractC27043a.AbstractC27044a<Channel> f3788bh = new AbstractC27043a.AbstractC27044a<Channel>() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.11
        /* renamed from: a */
        public void onLoadFinished(C27051b<Channel> c27051b, Channel channel) {
            if (channel == null) {
                ConversationDetailActivity.this.finish();
                C1471i.m40847a(ConversationDetailActivity.this.getContext(), EnumC1464c.CHANNEL_INFO_INVALID);
            } else if (channel.isHidden()) {
                C1471i.m40855a(ConversationDetailActivity.this.getContext(), C1298R.string.freshchat_channel_disabled);
                ConversationDetailActivity.this.finish();
            } else {
                ConversationDetailActivity.this.channelId = channel.getId();
                ConversationDetailActivity.this.f3762aK = channel.getName();
                ConversationDetailActivity.this.channelType = channel.getChannelType();
                long unused = ConversationDetailActivity.f3751aS = ConversationDetailActivity.this.channelId;
                if (ConversationDetailActivity.this.getSupportActionBar() != null) {
                    ConversationDetailActivity.this.getSupportActionBar().mo3542y(ConversationDetailActivity.this.f3762aK);
                    ConversationDetailActivity.this.m41253ae();
                }
                if (ConversationDetailActivity.this.m41251ag()) {
                    ConversationDetailActivity.this.m41250ah();
                }
                if (c27051b instanceof C1547g) {
                    ConversationDetailActivity.this.f3763aL = ((C1547g) c27051b).m40569dg();
                }
                ConversationDetailActivity.this.m41216et();
                ConversationDetailActivity.this.m41286U();
            }
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [com.freshchat.consumer.sdk.activity.ConversationDetailActivity, android.app.Activity] */
        /* JADX WARN: Type inference failed for: r1v2, types: [com.freshchat.consumer.sdk.activity.ConversationDetailActivity, android.app.Activity] */
        @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
        public C27051b<Channel> onCreateLoader(int i, Bundle bundle) {
            return bundle != null ? new C1547g(ConversationDetailActivity.this.getApplicationContext(), bundle.getBoolean("EXTRA_FORCE_CLEAN_UP_EXPIRED_CSAT"), bundle.getLong("CHANNEL_ID")) : new C1547g(ConversationDetailActivity.this.getApplicationContext(), false);
        }

        @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
        public void onLoaderReset(C27051b<Channel> c27051b) {
            ConversationDetailActivity.this.channelId = 0L;
            ConversationDetailActivity.this.f3762aK = "";
            ConversationDetailActivity.this.channelType = null;
            ConversationDetailActivity.this.f3763aL = null;
        }
    };

    /* renamed from: bc */
    private View.OnClickListener f3784bc = new View.OnClickListener() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.13
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String obj = ConversationDetailActivity.this.f3754aC.getText().toString();
            ConversationDetailActivity.this.f3754aC.setText("");
            ConversationDetailActivity.this.f3754aC.requestFocus();
            ConversationDetailActivity.this.m41207g(obj);
            C1632ay.m40177c(ConversationDetailActivity.this.getContext(), ConversationDetailActivity.this.f3764aM);
        }
    };

    /* renamed from: bd */
    public View.OnClickListener f3785bd = new View$OnClickListenerC1439f(this);

    /* renamed from: cX */
    private final C1685cj.AbstractC1686a f3800cX = new C1454u(this);

    /* renamed from: com.freshchat.consumer.sdk.activity.ConversationDetailActivity$6 */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/ConversationDetailActivity$6.class */
    public class C13816 implements AbstractC27043a.AbstractC27044a<List<Message>> {
        public C13816() {
            ConversationDetailActivity.this = r4;
        }

        /* renamed from: a */
        public void onLoadFinished(C27051b<List<Message>> c27051b, List<Message> list) {
            C25586h.C25590d m39760b = ConversationDetailActivity.this.f3809lz.m39760b(ConversationDetailActivity.this.f3764aM, list);
            ConversationDetailActivity.this.f3764aM.clear();
            ConversationDetailActivity.this.f3764aM.addAll(list);
            ConversationDetailActivity.this.f3765aN.clear();
            C1550i c1550i = (C1550i) c27051b;
            List<Participant> participants = c1550i.getParticipants();
            if (C1716k.m39902a(participants)) {
                for (Participant participant : participants) {
                    ConversationDetailActivity.this.f3765aN.put(participant.getAlias(), participant);
                }
            }
            m39760b.m3179b(new C1451r(this, ConversationDetailActivity.this.f3767aQ));
            boolean m41241av = ConversationDetailActivity.this.m41241av();
            ConversationDetailActivity.this.m41302I().m41489x(m41241av);
            ConversationDetailActivity.this.m41298K();
            if (c27051b instanceof C1550i) {
                ConversationDetailActivity.this.f3766aO = c1550i.m40563di();
            }
            ConversationDetailActivity.this.m41248aj();
            ConversationDetailActivity conversationDetailActivity = ConversationDetailActivity.this;
            if (m41241av) {
                conversationDetailActivity.mo40186ap();
                ConversationDetailActivity.this.mo40188an();
                ConversationDetailActivity.this.m41246aq();
                ConversationDetailActivity.this.m41244as();
                ConversationDetailActivity.this.m41205gC();
                ConversationDetailActivity.this.m41204gS();
                C1649bg.m40073k(ConversationDetailActivity.this.getContext(), ConversationDetailActivity.this.channelId);
            } else {
                conversationDetailActivity.m41259aX();
            }
            ConversationDetailActivity.this.f3809lz.m39767a(ConversationDetailActivity.this.channelId, ConversationDetailActivity.this.f3799cW);
        }

        /* JADX WARN: Type inference failed for: r2v1, types: [com.freshchat.consumer.sdk.activity.ConversationDetailActivity, android.app.Activity] */
        @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
        public C27051b<List<Message>> onCreateLoader(int i, Bundle bundle) {
            return new C1550i(ConversationDetailActivity.this.getApplicationContext(), bundle.getLong("CHANNEL_ID"), ConversationDetailActivity.this.f3764aM, ConversationDetailActivity.this.m41209ff());
        }

        @Override // p1727n3.p1869w.p1870a.AbstractC27043a.AbstractC27044a
        public void onLoaderReset(C27051b<List<Message>> c27051b) {
            ConversationDetailActivity.this.f3764aM.clear();
            ConversationDetailActivity.this.f3765aN.clear();
            ConversationDetailActivity.this.m41302I().notifyDataSetChanged();
            ConversationDetailActivity.this.f3766aO = false;
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.activity.ConversationDetailActivity$7 */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/activity/ConversationDetailActivity$7.class */
    public class C13827 implements C1766c.AbstractC1768b {
        public C13827() {
            ConversationDetailActivity.this = r4;
        }

        @Override // com.freshchat.consumer.sdk.p062l.C1766c.AbstractC1768b
        /* renamed from: hu */
        public void mo39604hu() {
            C1471i.m40840c(ConversationDetailActivity.this.f3795bp);
        }

        @Override // com.freshchat.consumer.sdk.p062l.C1766c.AbstractC1768b
        /* renamed from: o */
        public void mo39603o(Message message) {
            String m39754z = ConversationDetailActivity.this.f3809lz.m39754z(message);
            Uri m39758w = ConversationDetailActivity.this.f3809lz.m39758w(message);
            if (!C1626as.m40233a(m39754z) || m39758w == null) {
                C1471i.m40840c(ConversationDetailActivity.this.f3795bp);
                return;
            }
            ConversationDetailActivity.this.f3796bq.setText(m39754z);
            ConversationDetailActivity.this.f3795bp.setOnClickListener(new View$OnClickListenerC1452s(this, m39758w));
            C1471i.m40842b(ConversationDetailActivity.this.f3795bp);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: G */
    public C1466e m41306G() {
        if (this.f3776aq == null) {
            this.f3776aq = C1466e.m40905i(getApplicationContext());
        }
        return this.f3776aq;
    }

    /* renamed from: H */
    public static long m41304H() {
        return f3751aS;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: I */
    public C1316d m41302I() {
        if (this.f3767aQ == null) {
            C1316d c1316d = new C1316d(this, this.f3764aM, this.f3765aN, this.f3798cU, this.f3800cX);
            this.f3767aQ = c1316d;
            c1316d.m41502a(this.f3793bn);
            this.f3767aQ.m41509a(this.f3794bo);
        }
        return this.f3767aQ;
    }

    /* renamed from: J */
    public ClipboardManager m41300J() {
        if (this.f3778aw == null && C1630aw.m40204eS()) {
            this.f3778aw = (ClipboardManager) getContext().getSystemService("clipboard");
        }
        return this.f3778aw;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: K */
    public void m41298K() {
        m41292O();
        m41293N();
        m41226c(getIntent());
    }

    /* renamed from: L */
    private void m41296L() {
        if (this.f3779ax != null) {
            if (m41294M()) {
                this.f3779ax.m39939eh();
            }
            this.f3779ax.m39935el();
        }
    }

    /* renamed from: M */
    private boolean m41294M() {
        C1711h c1711h = this.f3779ax;
        return (c1711h == null || c1711h.m39936ek() == null || !this.f3779ax.m39936ek().m39929M()) ? false : true;
    }

    /* renamed from: N */
    private void m41293N() {
        if (m41255ac().m40712m(this.channelId) <= 0 || !m41243at()) {
            return;
        }
        C1638b.m40143b(getContext(), this.channelId, this.f3763aL.getConversationId());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: O */
    private void m41292O() {
        try {
            Set<Long> m40717i = m41255ac().m40717i(this.channelId);
            String str = TAG;
            C1613ai.m40284d(str, "Unread marketing Ids for channel " + this.channelId + " are " + m40717i);
            for (Long l : m40717i) {
                long longValue = l.longValue();
                C1594aa.m40341g(getApplicationContext(), longValue);
                C1555b.m40540a(getContext(), 0L, longValue);
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: P */
    private C1508e m41291P() {
        if (this.f3801eT == null) {
            this.f3801eT = new C1508e(getApplicationContext());
        }
        return this.f3801eT;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: Q */
    private boolean m41290Q() {
        return C1619am.m40260a(this, C1619am.f4375iE);
    }

    /* renamed from: R */
    private void m41289R() {
        if (m41290Q()) {
            m41288S();
            return;
        }
        this.f3755aD.setOnClickListener(this.f3774aY);
        this.f3755aD.setOnLongClickListener(this.f3775aZ);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: S */
    private void m41288S() {
        this.f3779ax = new C1711h(getApplicationContext(), this, this.channelId);
        setVolumeControlStream(3);
        View$OnTouchListenerC1536b view$OnTouchListenerC1536b = new View$OnTouchListenerC1536b(this, this.f3779ax);
        this.f3759aH = (ProgressBar) findViewById(C1298R.C1300id.freshchat_conv_detail_voice_reply_progressbar);
        this.f3760aI = (TextView) findViewById(C1298R.C1300id.freshchat_conv_detail_voice_reply_time_elapsed_text);
        this.f3755aD.setOnClickListener(null);
        this.f3755aD.setOnLongClickListener(null);
        this.f3755aD.setOnTouchListener(view$OnTouchListenerC1536b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: T */
    public void m41287T() {
        String str;
        int i;
        if (C1630aw.m40193fa()) {
            C1613ai.m40281i(TAG, "Permissions required for voice messaging has NOT been granted. Requesting permission.");
            boolean shouldShowRequestPermissionRationale = shouldShowRequestPermissionRationale("android.permission.RECORD_AUDIO");
            boolean shouldShowRequestPermissionRationale2 = shouldShowRequestPermissionRationale("android.permission.WRITE_EXTERNAL_STORAGE");
            if (shouldShowRequestPermissionRationale && shouldShowRequestPermissionRationale2) {
                i = C1298R.string.freshchat_chat_voice_messaging_permissions_rationale;
            } else if (shouldShowRequestPermissionRationale2) {
                i = C1298R.string.f3526x7d361bc1;
            } else if (!shouldShowRequestPermissionRationale) {
                str = "";
                C1471i.m40837e(getContext(), str);
                requestPermissions(C1619am.m40253b(getContext(), C1619am.f4375iE), 100);
            } else {
                i = C1298R.string.f3525x9d161db4;
            }
            str = getString(i);
            C1471i.m40837e(getContext(), str);
            requestPermissions(C1619am.m40253b(getContext(), C1619am.f4375iE), 100);
        }
    }

    /* renamed from: W */
    private void m41284W() {
        if (m41306G().m40962bn()) {
            try {
                RunnableC1560c.m40507dW();
            } catch (Exception e) {
                C1723q.m39823a(e);
            }
        }
    }

    /* renamed from: X */
    private void m41283X() {
        if (m41306G().isGallerySelectionEnabled() || m41306G().isCameraCaptureEnabled()) {
            C1471i.m40842b(this.f3757aF);
        } else {
            C1471i.m40840c(this.f3757aF);
        }
    }

    /* renamed from: Y */
    public void m41282Y() {
        boolean isCameraCaptureEnabled = m41306G().isCameraCaptureEnabled();
        boolean isGallerySelectionEnabled = m41306G().isGallerySelectionEnabled();
        if (isCameraCaptureEnabled && isGallerySelectionEnabled) {
            m41256ab();
        } else if (isCameraCaptureEnabled) {
            m41257aa();
        } else if (!isGallerySelectionEnabled) {
        } else {
            m41281Z();
        }
    }

    /* renamed from: Z */
    public void m41281Z() {
        Intent intent = new Intent();
        intent.setType(C1634az.EnumC1636b.TYPE_IMAGE.getType());
        intent.setAction((!C1630aw.m40198eY() || !getResources().getBoolean(C1298R.bool.freshchat_document_provider_enabled)) ? "android.intent.action.GET_CONTENT" : "android.intent.action.OPEN_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        startActivityForResult(intent, 125);
    }

    /* renamed from: a */
    private static void m41280a(Context context, long j, long j2, boolean z, int i, String str) {
        if (j == 0 || j2 == 0) {
            return;
        }
        new C1508e(context).m40766U(Long.toString(j));
        C1918t c1918t = new C1918t();
        CsatResponseRequest csatResponseRequest = new CsatResponseRequest();
        CsatResponse conversationId = new CsatResponse().setCsatId(j2).setIssueResolved(z).setConversationId(j);
        if (i > 0) {
            conversationId.setStars(i);
        }
        if (!C1626as.isEmpty(str)) {
            conversationId.setResponse(str);
        }
        csatResponseRequest.setCsatResponse(conversationId);
        c1918t.m39319a(csatResponseRequest);
        C1870d.m39385b(context, c1918t);
    }

    /* renamed from: a */
    public void m41279a(Uri uri, int i) {
        startActivityForResult(PictureAttachmentActivity.m41123a(getContext(), uri, i, this.f3754aC.getText().toString()), (int) Constants.ERR_WATERMARKR_INFO);
    }

    /* renamed from: a */
    private void m41278a(MenuItem menuItem, boolean z) {
        int i;
        Context context;
        if (m41306G().m40960bo()) {
            int m40240a = C1623aq.m40240a(getContext(), C1298R.attr.freshchatSpeakerIcon, false);
            if (m40240a <= 0) {
                return;
            }
            menuItem.setVisible(true);
            menuItem.setIcon(m40240a);
            if (!z) {
                return;
            }
            context = getContext();
            i = C1298R.string.freshchat_speaker_phone_on;
        } else {
            int m40240a2 = C1623aq.m40240a(getContext(), C1298R.attr.freshchatEarpieceIcon, false);
            if (m40240a2 <= 0) {
                return;
            }
            menuItem.setVisible(true);
            menuItem.setIcon(m40240a2);
            if (!z) {
                return;
            }
            context = getContext();
            i = C1298R.string.freshchat_speaker_phone_off;
        }
        C1471i.m40855a(context, i);
    }

    /* renamed from: a */
    private void m41266a(CalendarMessageMeta calendarMessageMeta, CalendarDay.TimeSlot timeSlot, int i) {
        Message m39765a = this.f3809lz.m39765a(calendarMessageMeta, timeSlot, i, m41252af(), this.channelId);
        if (m39765a != null) {
            m41263a(m39765a);
        }
    }

    /* renamed from: a */
    public void m41265a(Csat csat, boolean z) {
        m41264a(csat, z, 0, (String) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void m41264a(Csat csat, boolean z, int i, String str) {
        m41280a(getApplicationContext(), this.f3763aL.getConversationId(), csat.getCsatId(), z, i, str);
        m41254ad();
        C1471i.m40836e(this.f3754aC);
    }

    /* renamed from: a */
    public void m41263a(Message message) {
        if (message == null) {
            return;
        }
        this.f3804jo = true;
        C1649bg.m40072l(getContext(), this.channelId);
        if (!C1618al.m40261aS(getContext())) {
            C1471i.m40855a(getContext(), C1298R.string.freshchat_error_send_message_when_no_internet);
        }
        C1471i.m40836e(this.f3754aC);
        List<Message> m39769K = this.f3809lz.m39769K(this.f3764aM);
        if (C1716k.m39902a(m39769K)) {
            m41255ac().m40732a(m39769K, this.channelId);
            message.setAlias(C1702cy.m39981b(m39769K.get(0).getCreatedMillis(), C1716k.m39900b(m39769K)));
        }
        if (!m41255ac().m40730b(message)) {
            C1471i.m40847a(getContext(), EnumC1464c.MESSAGE_SENDING_FAILED);
            return;
        }
        C1689cm.m40010a(getContext(), message, this.channelId);
        m41285V();
        if (!C1807c.m39524bd(getContext())) {
            C1638b.m40158a(getContext(), message, new AbstractC1804a<C1915r>() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.18
                /* renamed from: a */
                public void mo39382a(C1915r c1915r) {
                    if (c1915r.isSuccess()) {
                        ConversationDetailActivity.this.m41248aj();
                    }
                }
            });
            return;
        }
        C1807c.m39523d(getContext(), message);
        C1638b.m40169M(getContext());
    }

    /* renamed from: a */
    private void m41262a(String str, int i, int i2, String str2) {
        try {
            Message m41193h = m41193h(str2);
            ImageFragment imageFragment = new ImageFragment();
            imageFragment.setContent(str);
            imageFragment.setContentType(ContentFormat.IMAGE_JPEG);
            imageFragment.setHeight(i2);
            imageFragment.setWidth(i);
            m41193h.addMessageFragment(imageFragment);
            m41263a(m41193h);
            m41214f("image");
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: a */
    public void m41261a(boolean z) {
        View view;
        if (!z || !m41306G().m40962bn()) {
            C1471i.m40842b(this.f3756aE);
            view = this.f3755aD;
        } else {
            C1471i.m40842b(this.f3755aD);
            view = this.f3756aE;
        }
        C1471i.m40840c(view);
    }

    /* renamed from: aI */
    private View m41260aI(String str) {
        TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(C1298R.layout.freshchat_message_chip_text, (ViewGroup) null);
        textView.setMaxLines(2);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setText(str);
        return textView;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0054, code lost:
        if (r0 == com.freshchat.consumer.sdk.p047b.EnumC1475k.CALLBACK) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* renamed from: aX */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m41259aX() {
        /*
            r3 = this;
            r0 = r3
            r0.m41254ad()
            r0 = r3
            com.freshchat.consumer.sdk.k.c r0 = r0.f3809lz
            r1 = r3
            java.util.List<com.freshchat.consumer.sdk.beans.Message> r1 = r1.f3764aM
            com.freshchat.consumer.sdk.b.k r0 = r0.m39742C(r1)
            r4 = r0
            com.freshchat.consumer.sdk.b.k r0 = com.freshchat.consumer.sdk.p047b.EnumC1475k.NORMAL
            r5 = r0
            r0 = r4
            r1 = r5
            if (r0 == r1) goto L1d
            r0 = r3
            r0.m41205gC()
        L1d:
            com.freshchat.consumer.sdk.b.k r0 = com.freshchat.consumer.sdk.p047b.EnumC1475k.DROP_DOWN
            r6 = r0
            r0 = r4
            r1 = r6
            if (r0 == r1) goto L2a
            r0 = r3
            r0.m41204gS()
        L2a:
            r0 = r4
            r1 = r5
            if (r0 != r1) goto L36
        L2f:
            r0 = r3
            r0.m41220cu()
            goto L5a
        L36:
            r0 = r4
            r1 = r6
            if (r0 != r1) goto L42
            r0 = r3
            r0.m41213fS()
            goto L5a
        L42:
            r0 = r4
            com.freshchat.consumer.sdk.b.k r1 = com.freshchat.consumer.sdk.p047b.EnumC1475k.CAROUSEL
            if (r0 != r1) goto L50
            r0 = r3
            r0.mo40186ap()
            goto L5a
        L50:
            r0 = r4
            com.freshchat.consumer.sdk.b.k r1 = com.freshchat.consumer.sdk.p047b.EnumC1475k.CALLBACK
            if (r0 != r1) goto L5a
            goto L2f
        L5a:
            r0 = r3
            com.freshchat.consumer.sdk.k.c r0 = r0.f3809lz
            r1 = r3
            java.util.List<com.freshchat.consumer.sdk.beans.Message> r1 = r1.f3764aM
            boolean r0 = r0.m39770I(r1)
            if (r0 == 0) goto L6c
            r0 = r3
            r0.mo40186ap()
        L6c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.m41259aX():void");
    }

    /* renamed from: aY */
    public void m41258aY() {
        m41302I().m41489x(false);
        m41259aX();
        if (this.f3809lz.m39742C(this.f3764aM) == EnumC1475k.CAROUSEL) {
            this.f3753aB.post(new RunnableC1450q(this));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: aa */
    public void m41257aa() {
        if (C1630aw.m40193fa() && !C1619am.m40254aX(getContext())) {
            if (shouldShowRequestPermissionRationale("android.permission.CAMERA")) {
                Toast.makeText((Context) this, (CharSequence) getString(C1298R.string.freshchat_chat_camera_permissions_rationale), 1).show();
            }
            requestPermissions(new String[]{"android.permission.CAMERA"}, 101);
            return;
        }
        try {
            this.f3768aR = null;
            File m39788aF = C1732x.m39788aF(getContext());
            Intent m40251a = C1620an.m40251a(getContext(), m39788aF);
            if (m40251a != null && !m40251a.hasExtra("HAS_ERRORS")) {
                this.f3768aR = m39788aF.getAbsolutePath();
                startActivityForResult(m40251a, 126);
                return;
            }
            String stringExtra = m40251a != null ? m40251a.getStringExtra("ERROR_MESSAGE") : "";
            String str = stringExtra;
            if (C1626as.isEmpty(stringExtra)) {
                str = EnumC1464c.PICTURE_ATTACHMENT_FAILED.toString();
            }
            Toast.makeText(getContext(), str, 1).show();
        } catch (Exception e) {
            this.f3768aR = null;
            C1613ai.m40282e("FRESHCHAT", "Exception while initiating camera capture", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ab */
    private void m41256ab() {
        String string = getString(C1298R.string.freshchat_chat_capture_from_camera);
        String string2 = getString(C1298R.string.freshchat_chat_select_from_gallery);
        g$a m40834m = C1471i.m40834m(this);
        DialogInterface.OnClickListener onClickListener = this.f3772aW;
        AlertController.C0037b c0037b = m40834m.f70854a;
        c0037b.f167q = new String[]{string, string2};
        c0037b.f169s = onClickListener;
        m40834m.m3652q();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ac */
    private C1511g m41255ac() {
        if (this.f3777av == null) {
            this.f3777av = new C1511g(getApplicationContext());
        }
        return this.f3777av;
    }

    /* renamed from: ad */
    private void m41254ad() {
        if (m41294M()) {
            return;
        }
        if (m41251ag()) {
            m41250ah();
            return;
        }
        mo40187ao();
        mo40188an();
        m41245ar();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ae */
    public void m41253ae() {
        if (!this.f3776aq.isResponseExpectationEnabled()) {
            return;
        }
        String m39820d = C1724r.m39820d(this, this.channelId);
        if (getSupportActionBar() == null || !C1626as.m40233a(m39820d)) {
            return;
        }
        getSupportActionBar().mo3544w(m39820d);
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* renamed from: af */
    public long m41252af() {
        char c;
        if (m41243at()) {
            c = this.f3763aL.getConversationId();
        } else {
            c = 0;
            if (C1716k.m39902a(this.f3764aM)) {
                Iterator<Message> it = this.f3764aM.iterator();
                while (true) {
                    c = 0;
                    if (!it.hasNext()) {
                        break;
                    }
                    Message next = it.next();
                    if (!C1869c.m39386i(next) && next.getConversationId() != 0) {
                        c = next.getConversationId();
                        this.f3763aL = new Conversation(c).setChannelId(this.channelId);
                        break;
                    }
                }
            }
        }
        return c;
    }

    /* renamed from: ag */
    public boolean m41251ag() {
        return Channel.CHANNEL_TYPE_AGENT_ONLY.equals(this.channelType);
    }

    /* renamed from: ah */
    public void m41250ah() {
        mo40186ap();
        mo40188an();
        m41245ar();
        this.f3761aJ.setReverseLayout(false);
        List<Message> list = this.f3764aM;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.f3753aB.scrollToPosition(this.f3764aM.size() - 1);
    }

    /* renamed from: ai */
    private boolean m41249ai() {
        boolean z = true;
        if (!this.f3766aO || C1716k.m39900b(this.f3764aM) <= 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: aj */
    public void m41248aj() {
        try {
            if (!m41249ai()) {
                return;
            }
            m41238b(m41196gg().getRefreshIntervals().getActiveConvMinFetchInterval());
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: ak */
    private void m41247ak() {
        CountDownTimer countDownTimer = this.f3769aT;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    /* renamed from: aq */
    public void m41246aq() {
        C1471i.m40853a(getContext(), (View) this.f3754aC);
        m41236b(this.f3752aA);
    }

    /* renamed from: ar */
    private void m41245ar() {
        m41224c(this.f3752aA);
    }

    /* renamed from: as */
    public void m41244as() {
        View view = this.f3752aA;
        if (view != null) {
            View findViewById = view.findViewById(C1298R.C1300id.freshchat_chat_resolution_positive_btn);
            if (findViewById != null) {
                findViewById.setOnClickListener(this.f3785bd);
            }
            View findViewById2 = this.f3752aA.findViewById(C1298R.C1300id.freshchat_chat_resolution_negative_btn);
            if (findViewById2 == null) {
                return;
            }
            findViewById2.setOnClickListener(this.f3785bd);
        }
    }

    /* renamed from: at */
    private boolean m41243at() {
        Conversation conversation = this.f3763aL;
        return conversation != null && conversation.getConversationId() > 0;
    }

    /* renamed from: au */
    private boolean m41242au() {
        return m41243at() && this.f3763aL.getCsat() != null && this.f3763aL.getCsat().getCsatId() > 0;
    }

    /* renamed from: av */
    public boolean m41241av() {
        Csat csat = (!m41242au() || !this.f3763aL.hasPendingCsat()) ? null : this.f3763aL.getCsat();
        if (csat == null) {
            return false;
        }
        boolean z = csat.getStatus() == Csat.CSatStatus.NOT_RATED;
        boolean z2 = z;
        if (C1628au.m40219a(m41196gg())) {
            z2 = z;
            if (C1628au.m40217a(m41196gg(), csat)) {
                long m41252af = m41252af();
                m41291P().m40755t(m41252af);
                C1649bg.m40080c(getContext(), m41252af, this.channelId);
                z2 = false;
            }
        }
        boolean z3 = false;
        if (z2) {
            z3 = false;
            if (!m41240aw()) {
                z3 = false;
                if (!m41294M()) {
                    z3 = true;
                }
            }
        }
        return z3;
    }

    /* renamed from: aw */
    private boolean m41240aw() {
        EditText editText = this.f3754aC;
        return editText != null && C1626as.m40233a(editText.getText());
    }

    /* renamed from: ax */
    private boolean m41239ax() {
        g gVar = this.f3770aU;
        return gVar != null && gVar.isShowing();
    }

    /* renamed from: b */
    public Message m41230b(CallbackButtonFragment callbackButtonFragment) {
        Message m41193h = m41193h(callbackButtonFragment.getLabel());
        m41193h.setMessageType(Message.MessageType.POSTBACK_MESSAGE.getIntValue());
        return m41193h;
    }

    /* renamed from: b */
    public void m41238b(final long j) {
        try {
            m41247ak();
            final double activeConvFetchBackoffRatio = m41196gg().getConversationConfig().getActiveConvFetchBackoffRatio();
            final long activeConvMaxFetchInterval = m41196gg().getRefreshIntervals().getActiveConvMaxFetchInterval();
            CountDownTimer countDownTimer = new CountDownTimer(j, j) { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.14
                /* JADX WARN: Type inference failed for: r0v1, types: [com.freshchat.consumer.sdk.activity.ConversationDetailActivity, android.app.Activity] */
                /* JADX WARN: Type inference failed for: r0v18, types: [com.freshchat.consumer.sdk.activity.ConversationDetailActivity, android.app.Activity] */
                @Override // android.os.CountDownTimer
                public void onFinish() {
                    if (C1618al.m40261aS(ConversationDetailActivity.this.getApplicationContext())) {
                        C1638b.m40162a(ConversationDetailActivity.this.getApplicationContext(), C1626as.m40233a(ConversationDetailActivity.this.m41306G().m40980bP()) ? 11 : 12, C1898d.EnumC1899a.IMMEDIATE);
                        C1613ai.m40284d("FRESHCHAT", "Polling for new Messages");
                    }
                    ConversationDetailActivity.this.m41238b(Math.min((long) (j * activeConvFetchBackoffRatio), activeConvMaxFetchInterval));
                }

                @Override // android.os.CountDownTimer
                public void onTick(long j2) {
                }
            };
            this.f3769aT = countDownTimer;
            countDownTimer.start();
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private void m41237b(Intent intent) {
        if (!intent.hasExtra("CHANNEL_ID")) {
            finish();
            C1471i.m40847a((Context) this, EnumC1464c.CHANNEL_ID_MISSING);
            return;
        }
        this.channelId = intent.getLongExtra("CHANNEL_ID", 0L);
        if (intent.hasExtra("UNFETCHED_CHANNEL")) {
            finish();
            startActivity(new Intent(getContext(), ChannelListActivity.class));
        }
        if (intent.hasExtra("CHANNEL_NAME") && !C1626as.isEmpty(intent.getStringExtra("CHANNEL_NAME"))) {
            this.f3762aK = intent.getStringExtra("CHANNEL_NAME");
        }
        if (intent.hasExtra("CHANNEL_TYPE") && !C1626as.isEmpty(intent.getStringExtra("CHANNEL_TYPE"))) {
            this.channelType = intent.getStringExtra("CHANNEL_TYPE");
        }
        this.f3805lE = intent.getStringArrayExtra("INPUT_TAGS");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    private void m41236b(View view) {
        runOnUiThread(new RunnableC1437d(this, view));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public void m41229b(boolean z) {
        Csat csat;
        boolean z2;
        Conversation conversation = this.f3763aL;
        if (conversation == null || (csat = conversation.getCsat()) == null || m41239ax()) {
            return;
        }
        g$a m40843b = C1471i.m40843b((Context) this, C1298R.attr.freshchatCustomerSurveyDialog);
        View inflate = LayoutInflater.from(this).inflate(C1298R.layout.freshchat_dialog_customer_survey, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(C1298R.C1300id.freshchat_custsurvey_question_text);
        RatingBar ratingBar = (RatingBar) inflate.findViewById(C1298R.C1300id.freshchat_custsurvey_rating_bar);
        EditText editText = (EditText) inflate.findViewById(C1298R.C1300id.freshchat_custsurvey_user_comment);
        if (z) {
            String string = getString(C1298R.string.freshchat_chat_resolution_survey_question);
            String str = string;
            if (C1626as.isEmpty(string)) {
                str = csat.getQuestion();
            }
            textView.setText(C1626as.fromHtml(str));
            z2 = csat.isMobileUserCommentsAllowed();
        } else {
            textView.setText(getString(C1298R.string.freshchat_chat_resolution_suggestions_prompt));
            z2 = true;
        }
        if (z) {
            m41236b(ratingBar);
        } else {
            m41224c(ratingBar);
        }
        if (z2) {
            m41236b(editText);
        } else {
            m41224c(editText);
        }
        m40843b.m3660i(C1298R.string.freshchat_chat_rating_submit, new DialogInterface$OnClickListenerC1446m(this, z, ratingBar, editText, csat, z));
        DialogInterface$OnCancelListenerC1447n dialogInterface$OnCancelListenerC1447n = new DialogInterface$OnCancelListenerC1447n(this, csat, z);
        AlertController.C0037b c0037b = m40843b.f70854a;
        c0037b.f164n = dialogInterface$OnCancelListenerC1447n;
        c0037b.f171u = inflate;
        c0037b.f170t = 0;
        this.f3770aU = m40843b.m3668a();
        ratingBar.setOnRatingBarChangeListener(new C1448o(this, z));
        this.f3770aU.setOnShowListener(new DialogInterface$OnShowListenerC1449p(this, z));
        this.f3770aU.show();
    }

    /* renamed from: c */
    private void m41228c() {
        this.f3780ay = findViewById(C1298R.C1300id.freshchat_conv_detail_text_reply_layout);
        this.f3781az = findViewById(C1298R.C1300id.freshchat_conv_detail_voice_reply_layout);
        this.f3752aA = findViewById(C1298R.C1300id.freshchat_chat_resolution_confirmation_layout);
        this.f3753aB = (RecyclerView) findViewById(C1298R.C1300id.freshchat_conv_detail_list);
        this.f3754aC = (EditText) findViewById(C1298R.C1300id.freshchat_conv_detail_reply_text);
        this.f3755aD = findViewById(C1298R.C1300id.freshchat_conv_detail_record_voice_reply_button);
        this.f3756aE = findViewById(C1298R.C1300id.freshchat_conv_detail_send_reply_button);
        this.f3757aF = findViewById(C1298R.C1300id.freshchat_conv_detail_attach_image);
        this.f3758aG = findViewById(C1298R.C1300id.freshchat_conversation_banner_message_text);
        this.f3806le = findViewById(C1298R.C1300id.freshchat_activity_conversation_detail_progressbar);
        this.f3807lf = findViewById(C1298R.C1300id.freshchat_activity_conversation_detail_content);
        this.f3786bf = findViewById(C1298R.C1300id.freshchat_quick_reply_container);
        this.f3789bi = findViewById(C1298R.C1300id.freshchat_drop_down_input_frame);
        this.f3782ba = (RecyclerView) findViewById(C1298R.C1300id.freshchat_drop_down_recycler_view);
        this.f3787bg = findViewById(C1298R.C1300id.freshchat_drop_down_recycler_view_container);
        this.f3795bp = findViewById(C1298R.C1300id.freshchat_conversation_meeting_banner);
        this.f3796bq = (TextView) findViewById(C1298R.C1300id.freshchat_meeting_banner_date_text);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    private void m41226c(Intent intent) {
        if (intent != null) {
            try {
                long longExtra = intent.getLongExtra("MARKETING_ID", -1L);
                if (!intent.getBooleanExtra("NOTIFICATION_CLICKED", false)) {
                    return;
                }
                C1594aa.m40340h(getApplicationContext(), longExtra);
            } catch (Exception e) {
                C1723q.m39823a(e);
            }
        }
    }

    /* renamed from: c */
    private void m41225c(final Uri uri, final int i) {
        C1634az.m40174a(getContext(), uri, C1634az.EnumC1636b.TYPE_IMAGE, new C1634az.AbstractC1635a() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.17
            @Override // com.freshchat.consumer.sdk.p057j.C1634az.AbstractC1635a
            /* renamed from: a */
            public void mo40172a(C1634az.EnumC1637c enumC1637c) {
                int i2 = C1432bl.f3949jz[enumC1637c.ordinal()];
                C1471i.m40847a(ConversationDetailActivity.this.getContext(), i2 != 1 ? i2 != 2 ? EnumC1464c.PICTURE_ATTACHMENT_INVALID_PARAMS_ERROR : EnumC1464c.PICTURE_ATTACHMENT_UNKNOWN_TYPE_ERROR : EnumC1464c.PICTURE_ATTACHMENT_NON_IMAGE_URI_ERROR);
            }

            @Override // com.freshchat.consumer.sdk.p057j.C1634az.AbstractC1635a
            /* renamed from: fQ */
            public void mo40171fQ() {
                ConversationDetailActivity.this.m41279a(uri, i);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: c */
    private void m41224c(View view) {
        runOnUiThread(new RunnableC1438e(this, view));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: cu */
    private void m41220cu() {
        CollectionFragment m39734M = this.f3809lz.m39742C(this.f3764aM) == EnumC1475k.CALLBACK ? this.f3809lz.m39734M(this.f3764aM) : this.f3809lz.m39743B(this.f3764aM);
        if (m39734M == null) {
            return;
        }
        FlowLayout flowLayout = (FlowLayout) findViewById(C1298R.C1300id.freshchat_chips_flowlayout);
        flowLayout.setRtl(C1722p.m39831aD(getContext()));
        flowLayout.removeAllViews();
        boolean z = false;
        boolean z2 = false;
        if (C1716k.m39902a(m39734M.getFragments())) {
            z = false;
            for (final MessageFragment messageFragment : m39734M.getFragments()) {
                if (messageFragment instanceof QuickReplyButtonFragment) {
                    final C1740e c1740e = new C1740e(this);
                    c1740e.m39751b((QuickReplyButtonFragment) messageFragment);
                    String m39749jL = c1740e.m39749jL();
                    if (!C1626as.isEmpty(m39749jL)) {
                        View m41260aI = m41260aI(m39749jL);
                        flowLayout.addView(m41260aI);
                        m41260aI.setOnClickListener(new View.OnClickListener() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.8
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                ConversationDetailActivity.this.m41207g(c1740e.m39750hb());
                            }
                        });
                        z = true;
                    }
                } else if (messageFragment instanceof TextFragment) {
                    z2 = true;
                } else if (messageFragment instanceof CallbackButtonFragment) {
                    String label = ((CallbackButtonFragment) messageFragment).getLabel();
                    if (!C1626as.isEmpty(label)) {
                        View m41260aI2 = m41260aI(label);
                        flowLayout.addView(m41260aI2);
                        m41260aI2.setOnClickListener(new View.OnClickListener() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.9
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                ConversationDetailActivity.this.f3809lz.m39761a(ConversationDetailActivity.this.f3764aM, (CallbackButtonFragment) messageFragment);
                                ConversationDetailActivity.this.m41263a(ConversationDetailActivity.this.m41230b((CallbackButtonFragment) messageFragment));
                            }
                        });
                        z = true;
                    }
                }
            }
        } else {
            z2 = false;
        }
        if (!z) {
            return;
        }
        this.f3786bf.setVisibility(4);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f3786bf.getLayoutParams();
        layoutParams.height = -2;
        this.f3786bf.setLayoutParams(layoutParams);
        if (!z2) {
            mo40186ap();
        }
        mo40188an();
        TypedValue typedValue = new TypedValue();
        getResources().getValue(C1298R.dimen.freshchat_quick_reply_view_max_height_percentage, typedValue, true);
        final float f = typedValue.getFloat() / 100.0f;
        this.f3786bf.post(new Runnable() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.10
            @Override // java.lang.Runnable
            public void run() {
                float height = ConversationDetailActivity.this.findViewById(C1298R.C1300id.freshchat_message_container).getHeight();
                float height2 = ConversationDetailActivity.this.f3786bf.getHeight();
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) ConversationDetailActivity.this.f3786bf.getLayoutParams();
                float f2 = height2 / height;
                float f3 = f;
                layoutParams2.height = f2 > f3 ? (int) (height * f3) : -2;
                ConversationDetailActivity.this.f3786bf.setLayoutParams(layoutParams2);
                ConversationDetailActivity.this.m41206gB();
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: eB */
    private ConnectivityManager m41217eB() {
        ConnectivityManager connectivityManager;
        try {
            connectivityManager = (ConnectivityManager) getSystemService("connectivity");
        } catch (Exception e) {
            C1723q.m39823a(e);
            connectivityManager = null;
        }
        return connectivityManager;
    }

    /* renamed from: et */
    public void m41216et() {
        if (this.f3803jn >= 0 || !m41243at()) {
            return;
        }
        this.f3803jn = this.f3763aL.getStatus();
    }

    /* renamed from: f */
    private void m41214f(String str) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: fS */
    private void m41213fS() {
        QuickReplyDropDownFragment m39744A = this.f3809lz.m39744A(this.f3764aM);
        if (m39744A == null) {
            return;
        }
        C1743g c1743g = new C1743g(this);
        this.f3790bj = c1743g;
        c1743g.m39748a(m39744A);
        List<MessageFragment> m39746he = this.f3790bj.m39746he();
        if (C1716k.isEmpty(m39746he)) {
            return;
        }
        mo40186ap();
        setDropDownHeight(getResources().getConfiguration().orientation);
        m41203gT();
        long m39739E = this.f3809lz.m39739E(this.f3764aM);
        this.f3809lz.m39757x(m39739E);
        this.f3782ba.setAdapter(new C1325e(this, m39746he, this.f3792bl, m39739E));
    }

    /* renamed from: fT */
    private boolean m41212fT() {
        return C1630aw.m40191fc() && C1710g.m39954ah(getContext()) >= 24;
    }

    /* renamed from: fU */
    private void m41211fU() {
        try {
            if (!m41212fT()) {
                return;
            }
            this.f3802hE = new C1453t(this);
            NetworkRequest.Builder builder = new NetworkRequest.Builder();
            ConnectivityManager m41217eB = m41217eB();
            if (m41217eB == null) {
                return;
            }
            m41217eB.registerNetworkCallback(builder.build(), this.f3802hE);
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: fV */
    private void m41210fV() {
        ConnectivityManager m41217eB;
        ConnectivityManager.NetworkCallback networkCallback;
        try {
            if (!m41212fT() || (m41217eB = m41217eB()) == null || (networkCallback = this.f3802hE) == null) {
                return;
            }
            m41217eB.unregisterNetworkCallback(networkCallback);
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: ff */
    public boolean m41209ff() {
        boolean z = false;
        if (m41243at()) {
            z = false;
            if (this.f3804jo) {
                z = false;
                if (this.f3763aL.getStatus() == 2) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: g */
    public void m41207g(String str) {
        try {
            if (C1626as.isEmpty(str)) {
                return;
            }
            m41263a(m41193h(str));
            m41214f("text");
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: gB */
    public void m41206gB() {
        C1471i.m40842b(this.f3786bf);
    }

    /* renamed from: gC */
    public void m41205gC() {
        C1471i.m40840c(this.f3786bf);
    }

    /* renamed from: ga */
    private void m41199ga() {
        this.f3809lz = new C1737c(getContext());
    }

    /* renamed from: gb */
    private void m41198gb() {
        m41175x();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: gf */
    private void m41197gf() {
        this.f3761aJ = (LinearLayoutManager) this.f3753aB.getLayoutManager();
        m41254ad();
        this.f3753aB.setAdapter(m41302I());
        this.f3756aE.setOnClickListener(this.f3784bc);
        m41283X();
        this.f3757aF.setOnClickListener(this.f3773aX);
        this.f3754aC.addTextChangedListener(this.f3771aV);
        this.f3789bi.setOnClickListener(new View.OnClickListener() { // from class: com.freshchat.consumer.sdk.activity.ConversationDetailActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ConversationDetailActivity.this.m41201gV();
            }
        });
        this.f3787bg.setOnClickListener(this.f3791bk);
        this.f3782ba.setLayoutManager(new LinearLayoutManager(this));
        m41261a(true);
        m41289R();
        String string = m41306G().getString("CONFIG_CONVERSATION_BANNER_MESSAGE");
        if (!C1626as.m40233a(string)) {
            C1471i.m40840c(this.f3758aG);
            return;
        }
        C1471i.m40842b(this.f3758aG);
        View view = this.f3758aG;
        if (!(view instanceof TextView)) {
            return;
        }
        ((TextView) view).setText(string);
    }

    /* renamed from: gg */
    private RemoteConfig m41196gg() {
        if (this.f3808lg == null) {
            this.f3808lg = C1622ap.m40245bD(getContext());
        }
        return this.f3808lg;
    }

    /* renamed from: gv */
    private void m41195gv() {
        C1782f c1782f = this.f3797cT;
        if (c1782f != null) {
            c1782f.dismiss();
            this.f3797cT = null;
        }
    }

    /* renamed from: h */
    private Message m41193h(String str) {
        Message m39389a = C1869c.m39389a(m41306G().m40966bj(), str, m41252af(), this.channelId);
        m39389a.setConversationId(m41252af());
        return m39389a;
    }

    /* renamed from: n */
    public void m41186n(Message message) {
        CalendarMessageMeta m39756x = this.f3809lz.m39756x(message);
        C1782f m39582a = C1782f.m39582a(this.orientation, m39756x, this.f3809lz.m39764a(m39756x, this.f3765aN));
        this.f3797cT = m39582a;
        m39582a.show(getSupportFragmentManager(), "CalendarBottomSheet");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: p */
    private void m41184p() {
        try {
            if (isTaskRoot()) {
                String m40976bT = m41306G().m40976bT();
                if (C1626as.m40233a(m40976bT)) {
                    C1594aa.m40339k(getContext(), m40976bT);
                } else {
                    startActivity(getPackageManager().getLaunchIntentForPackage(getPackageName()));
                }
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    private void setDropDownHeight(int i) {
        Resources resources;
        int i2;
        int dimensionPixelSize = getResources().getDimensionPixelSize(C1298R.dimen.freshchat_drop_down_item_height);
        if (this.f3790bj == null) {
            return;
        }
        if (i == 2) {
            resources = getResources();
            i2 = C1298R.integer.freshchat_drop_down_max_display_items_landscape;
        } else {
            resources = getResources();
            i2 = C1298R.integer.freshchat_drop_down_max_display_items_portrait;
        }
        int integer = resources.getInteger(i2);
        C1471i.m40841b(this.f3782ba, this.f3809lz.m39768a(this.f3790bj.m39745hf(), integer, dimensionPixelSize));
    }

    /* renamed from: x */
    private void m41175x() {
        int i = C1432bl.f3950ld[this.f3809lz.m39774gq().ordinal()];
        if (i == 1) {
            C1471i.m40842b(this.f3806le);
            C1471i.m40840c(this.f3807lf);
        } else if (i != 2) {
            if (i != 3) {
                return;
            }
            m41104al();
        } else {
            C1669by.m40045gN().m40047d(getContext(), true);
            C1471i.m40840c(this.f3806le);
            C1471i.m40842b(this.f3807lf);
            if (this.f3789bi.getVisibility() != 0) {
                return;
            }
            this.f3809lz.m39753z(this.f3764aM);
        }
    }

    /* renamed from: U */
    public void m41286U() {
        Bundle bundle = new Bundle();
        bundle.putLong("CHANNEL_ID", this.channelId);
        getSupportLoaderManager().mo976d(0, bundle, this.f3783bb);
    }

    /* renamed from: V */
    public void m41285V() {
        Bundle bundle = new Bundle();
        bundle.putLong("CHANNEL_ID", this.channelId);
        bundle.putBoolean("EXTRA_FORCE_CLEAN_UP_EXPIRED_CSAT", true);
        getSupportLoaderManager().mo976d(0, bundle, this.f3788bh);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public void mo41077a(Context context, Intent intent) {
        String action = intent.getAction();
        C1611ag.m40301a("FRESHCHAT", intent);
        if ("com.freshchat.consumer.sdk.actions.ExpectedConversationResponseTimeUpdated".equals(action)) {
            m41253ae();
        } else if (!"com.freshchat.consumer.sdk.actions.ChannelsUpdated".equals(action) && !"com.freshchat.consumer.sdk.actions.MessagesUpdated".equals(action) && !"com.freshchat.consumer.sdk.actions.MessageStatusChanged".equals(action)) {
            if (!"com.freshchat.consumer.sdk.actions.JwtIdTokenStateChanged".equalsIgnoreCase(action) && !"com.freshchat.consumer.sdk.actions.RemoteConfigUpdated".equalsIgnoreCase(action) && (!"com.freshchat.consumer.sdk.actions.JwtModeEnabledForAccount".equalsIgnoreCase(action) || !C1622ap.m40246aZ(getContext()) || !C1720o.m39853bB(getContext()))) {
                return;
            }
            m41198gb();
        } else if ("com.freshchat.consumer.sdk.actions.MessageStatusChanged".equals(action) && C1611ag.m40298d(intent, "CHANNEL_ID") == this.channelId && !intent.getBooleanExtra("STATUS_SUCCESS", true)) {
            C1471i.m40855a(getContext(), C1298R.string.freshchat_message_sending_failed);
        } else {
            m41285V();
            if (this.f3754aC.hasFocus()) {
                this.f3754aC.requestFocus();
            } else {
                this.f3753aB.requestFocus();
            }
        }
    }

    /* renamed from: a */
    public void m41267a(CalendarMessageMeta calendarMessageMeta) {
        Message m39766a = this.f3809lz.m39766a(calendarMessageMeta, m41252af(), this.channelId);
        if (m39766a != null) {
            m41263a(m39766a);
            this.f3809lz.m39771B(m39766a);
        }
    }

    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1631ax
    /* renamed from: a */
    public void mo40190a(C1711h.C1713a c1713a) {
        if (c1713a != null) {
            try {
                if (c1713a.m39926er() != null && !C1626as.isEmpty(c1713a.m39926er().getAbsolutePath())) {
                    Message m41193h = m41193h("");
                    AudioFragment audioFragment = new AudioFragment();
                    audioFragment.setContent(c1713a.m39926er().getAbsolutePath());
                    audioFragment.setContentType("audio/mpeg3");
                    audioFragment.setDuration(c1713a.m39925es());
                    m41193h.addMessageFragment(audioFragment);
                    C1471i.m40853a(getContext(), (View) this.f3754aC);
                    m41263a(m41193h);
                    m41214f("audio");
                }
            } catch (Exception e) {
                C1723q.m39823a(e);
            }
        }
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    /* renamed from: a */
    public String[] mo41078a() {
        return new String[]{"com.freshchat.consumer.sdk.actions.JwtModeEnabledForAccount", "com.freshchat.consumer.sdk.actions.MessagesUpdated", "com.freshchat.consumer.sdk.actions.ChannelsUpdated", "com.freshchat.consumer.sdk.actions.MessageStatusChanged", "com.freshchat.consumer.sdk.actions.ExpectedConversationResponseTimeUpdated", "com.freshchat.consumer.sdk.actions.JwtIdTokenStateChanged", "com.freshchat.consumer.sdk.actions.TokenWaitTimeout", "com.freshchat.consumer.sdk.actions.RemoteConfigUpdated"};
    }

    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1631ax
    /* renamed from: am */
    public void mo40189am() {
        m41236b(this.f3781az);
    }

    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1631ax
    /* renamed from: an */
    public void mo40188an() {
        m41224c(this.f3781az);
    }

    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1631ax
    /* renamed from: ao */
    public void mo40187ao() {
        m41204gS();
        m41236b(this.f3780ay);
    }

    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1631ax
    /* renamed from: ap */
    public void mo40186ap() {
        m41224c(this.f3780ay);
        C1471i.m40853a(getContext(), this.f3780ay);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1631ax
    /* renamed from: b */
    public void mo40185b(int i) {
        runOnUiThread(new RunnableC1441h(this, i));
    }

    @Override // com.freshchat.consumer.sdk.p063m.C1782f.AbstractC1783a
    /* renamed from: b */
    public void mo39571b(CalendarMessageMeta calendarMessageMeta) {
        m41267a(calendarMessageMeta);
    }

    @Override // com.freshchat.consumer.sdk.p063m.C1782f.AbstractC1783a
    /* renamed from: b */
    public void mo39570b(CalendarMessageMeta calendarMessageMeta, CalendarDay.TimeSlot timeSlot, int i) {
        m41266a(calendarMessageMeta, timeSlot, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1631ax
    /* renamed from: c */
    public void mo40184c(int i) {
        runOnUiThread(new RunnableC1442i(this, i));
    }

    /* renamed from: gS */
    public void m41204gS() {
        m41202gU();
        m41200gW();
        this.f3790bj = null;
    }

    /* renamed from: gT */
    public void m41203gT() {
        C1471i.m40842b(this.f3789bi);
    }

    /* renamed from: gU */
    public void m41202gU() {
        C1471i.m40840c(this.f3789bi);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: gV */
    public void m41201gV() {
        C1471i.m40842b(this.f3787bg);
        Animation loadAnimation = AnimationUtils.loadAnimation(this, C1298R.anim.freshchat_slide_up);
        loadAnimation.setDuration(300L);
        this.f3782ba.startAnimation(loadAnimation);
        this.f3782ba.setVisibility(0);
        this.f3782ba.bringToFront();
    }

    /* renamed from: gW */
    public void m41200gW() {
        C1471i.m40840c(this.f3787bg);
        this.f3782ba.setVisibility(8);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.p057j.AbstractC1631ax
    /* renamed from: i */
    public void mo40183i(String str) {
        runOnUiThread(new RunnableC1445l(this, str));
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        try {
            if (i == 125 && i2 == -1) {
                C1613ai.m40284d(TAG, "onActivityResult::REQUEST_CODE_GALLERY");
                m41225c(intent.getData(), i);
            } else if (i == 126 && i2 == -1) {
                String str = TAG;
                C1613ai.m40284d(str, "onActivityResult::REQUEST_CODE_CAMERA");
                if (this.f3768aR != null) {
                    C1613ai.m40284d(str, "Found Pic From Camera : " + this.f3768aR);
                    m41279a(Uri.parse(this.f3768aR), i);
                    this.f3768aR = null;
                }
            } else if (i != 127 || i2 != -1) {
                String str2 = TAG;
                C1613ai.m40284d(str2, "onActivityResult::Request Code " + i + ", Result: " + i2);
            } else {
                this.f3754aC.setText("");
                PictureAttachmentActivity.C1391a c1391a = new PictureAttachmentActivity.C1391a();
                c1391a.m41111d(intent);
                m41262a(c1391a.m41114aK(), c1391a.getWidth(), c1391a.getHeight(), c1391a.m41113aL());
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b, com.freshchat.consumer.sdk.activity.C1392a
    public void onBackPressed() {
        if (C1471i.m40835f(this.f3782ba)) {
            m41200gW();
            return;
        }
        m41284W();
        m41184p();
        super.onBackPressed();
    }

    public void onConfigurationChanged(Configuration configuration) {
        ConversationDetailActivity.super.onConfigurationChanged(configuration);
        setDropDownHeight(configuration.orientation);
        this.orientation = configuration.orientation;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.C1392a
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        C1638b.m40169M(getContext());
        m41199ga();
        m41237b(getIntent());
        setContentView(C1298R.layout.freshchat_activity_conversation_detail);
        m41100e(C1626as.isEmpty(this.f3762aK) ? "Support" : this.f3762aK);
        m41107C();
        this.orientation = getResources().getConfiguration().orientation;
        m41228c();
        m41197gf();
        C1649bg.m40102a(getContext(), this.channelId, this.f3805lE);
        m41211fU();
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(C1298R.C1302menu.freshchat_conversation_detail, menu);
        MenuItem findItem = menu.findItem(C1298R.C1300id.freshchat_menu_item_toggle_speakerphone);
        if (m41306G().m40962bn()) {
            m41278a(findItem, false);
            return true;
        }
        findItem.setVisible(false);
        return true;
    }

    public void onDestroy() {
        ConversationDetailActivity.super.onDestroy();
        C1613ai.m40284d(TAG, "Feedback activity is being destroyed");
        m41210fV();
    }

    @Override // com.freshchat.consumer.sdk.activity.C1392a
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == C1298R.C1300id.freshchat_menu_item_toggle_speakerphone) {
            if (m41306G().m40960bo()) {
                m41306G().m40908h(false);
            } else {
                m41306G().m40908h(true);
            }
            m41278a(menuItem, true);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b
    public void onPause() {
        super.onPause();
        f3751aS = 0L;
        m41247ak();
        try {
            if (m41239ax()) {
                this.f3770aU.cancel();
            }
            m41195gv();
            m41296L();
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        String str;
        int i2;
        if (i == 100) {
            str = TAG;
            C1613ai.m40281i(str, "Received response for audio recording permission request.");
            if (C1619am.m40259a(iArr)) {
                C1613ai.m40281i(str, getString(C1298R.string.freshchat_chat_voice_messaging_permissions_granted));
                m41288S();
                return;
            }
            i2 = C1298R.string.freshchat_chat_voice_messaging_permissions_not_granted;
        } else if (i != 101) {
            ConversationDetailActivity.super.onRequestPermissionsResult(i, strArr, iArr);
            return;
        } else if (C1619am.m40259a(iArr)) {
            C1613ai.m40281i(TAG, getString(C1298R.string.freshchat_chat_camera_permissions_granted));
            m41257aa();
            return;
        } else {
            str = TAG;
            i2 = C1298R.string.freshchat_chat_camera_permissions_not_granted;
        }
        C1613ai.m40285d(this, str, getString(i2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.freshchat.consumer.sdk.activity.AbstractC1419b, com.freshchat.consumer.sdk.activity.C1392a
    public void onResume() {
        super.onResume();
        f3751aS = this.channelId;
        try {
            C1638b.m40153a(getApplicationContext(), C1895b.EnumC1896a.NORMAL);
            C1638b.m40162a(getApplicationContext(), 4, C1898d.EnumC1899a.NORMAL);
            C1638b.m40163V(getApplicationContext());
            C1638b.m40170L(getContext());
            C1555b.m40540a(getContext(), this.channelId, 0L);
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
        m41198gb();
        m41285V();
    }

    public void onStop() {
        ConversationDetailActivity.super.onStop();
        C1613ai.m40284d(TAG, "Conversation Detail activity is being stopped");
    }
}
