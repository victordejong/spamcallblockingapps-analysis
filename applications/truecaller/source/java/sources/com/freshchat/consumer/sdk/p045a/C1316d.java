package com.freshchat.consumer.sdk.p045a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.Message;
import com.freshchat.consumer.sdk.beans.Participant;
import com.freshchat.consumer.sdk.beans.fragment.CalendarEventFragment;
import com.freshchat.consumer.sdk.beans.fragment.CarouselCardDefaultFragment;
import com.freshchat.consumer.sdk.beans.fragment.FragmentType;
import com.freshchat.consumer.sdk.beans.fragment.MessageFragment;
import com.freshchat.consumer.sdk.beans.fragment.UnknownFragment;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p056i.RunnableC1560c;
import com.freshchat.consumer.sdk.p057j.C1615ak;
import com.freshchat.consumer.sdk.p057j.C1623aq;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1680cf;
import com.freshchat.consumer.sdk.p057j.C1685cj;
import com.freshchat.consumer.sdk.p057j.C1689cm;
import com.freshchat.consumer.sdk.p057j.C1698cv;
import com.freshchat.consumer.sdk.p057j.C1710g;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p057j.C1719n;
import com.freshchat.consumer.sdk.p057j.C1722p;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p061k.C1749l;
import com.freshchat.consumer.sdk.p069ui.CalendarEventCardView;
import com.freshchat.consumer.sdk.p069ui.CarouselCardView;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.freshchat.consumer.sdk.a.d */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/d.class */
public class C1316d extends RecyclerView.AbstractC0317g<RecyclerView.AbstractC0313c0> {
    public static final String TAG = "com.freshchat.consumer.sdk.a.d";

    /* renamed from: aM */
    private final List<Message> f3556aM;

    /* renamed from: aN */
    private final Map<String, Participant> f3557aN;

    /* renamed from: bn */
    private CarouselCardView.AbstractC1926a f3558bn;

    /* renamed from: bo */
    private AbstractC1322f f3559bo;

    /* renamed from: cA */
    private final Drawable f3560cA;

    /* renamed from: cB */
    private final Drawable f3561cB;

    /* renamed from: cC */
    private final int f3562cC;

    /* renamed from: cD */
    private final String f3563cD;

    /* renamed from: cE */
    private final String f3564cE;

    /* renamed from: cF */
    private final String f3565cF;

    /* renamed from: cK */
    private final int f3566cK;

    /* renamed from: cL */
    private final C1466e f3567cL;

    /* renamed from: cM */
    private final int f3568cM;

    /* renamed from: cN */
    private final int f3569cN;

    /* renamed from: cO */
    private final boolean f3570cO;

    /* renamed from: cX */
    private final C1685cj.AbstractC1686a f3572cX;
    private final Context context;

    /* renamed from: cr */
    private final LayoutInflater f3573cr;

    /* renamed from: cy */
    private final C1615ak f3574cy;

    /* renamed from: cz */
    private final Drawable f3575cz;

    /* renamed from: fM */
    private Boolean f3576fM;

    /* renamed from: lZ */
    private final C1319c f3577lZ;

    /* renamed from: ma */
    private boolean f3578ma;

    /* renamed from: oq */
    private final AbstractC1323g f3581oq;

    /* renamed from: pV */
    private int f3584pV;

    /* renamed from: qy */
    private final float f3585qy;

    /* renamed from: qz */
    private final float f3586qz;

    /* renamed from: cP */
    private final HashMap<String, RunnableC1560c> f3571cP = new HashMap<>();

    /* renamed from: mb */
    private final int f3579mb = C1680cf.EnumC1681a.CAROUSEL.asInt();

    /* renamed from: mc */
    private final int f3580mc = C1680cf.EnumC1681a.CAROUSEL_CARD.asInt();

    /* renamed from: or */
    private final int f3582or = C1680cf.EnumC1681a.CALENDAR_EVENT.asInt();

    /* renamed from: pU */
    private Set<Long> f3583pU = new HashSet();

    /* renamed from: com.freshchat.consumer.sdk.a.d$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/d$a.class */
    public static class C1317a extends RecyclerView.AbstractC0313c0 {

        /* renamed from: nF */
        private final ImageView f3587nF;

        /* renamed from: ou */
        private final CalendarEventCardView f3588ou;

        /* renamed from: ov */
        private final TextView f3589ov;

        public C1317a(View view) {
            super(view);
            this.f3588ou = (CalendarEventCardView) view.findViewById(C1298R.C1300id.freshchat_calendar_event);
            this.f3589ov = (TextView) view.findViewById(C1298R.C1300id.freshchat_message_time);
            this.f3587nF = (ImageView) view.findViewById(C1298R.C1300id.freshchat_message_upload_status);
        }

        /* renamed from: a */
        public void m41488a(C1749l c1749l) {
            this.f3588ou.setCalendarTimeSlotMessageViewModel(c1749l);
        }

        /* renamed from: hk */
        public ImageView m41487hk() {
            return this.f3587nF;
        }

        /* renamed from: hv */
        public TextView m41486hv() {
            return this.f3589ov;
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.a.d$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/d$b.class */
    public static class C1318b extends RecyclerView.AbstractC0313c0 {

        /* renamed from: mW */
        private final CarouselCardView f3590mW;

        /* renamed from: no */
        private final TextView f3591no;

        public C1318b(View view) {
            super(view);
            this.f3590mW = (CarouselCardView) view.findViewById(C1298R.C1300id.freshchat_carousel_card);
            this.f3591no = (TextView) view.findViewById(C1298R.C1300id.freshchat_message_time);
        }

        /* renamed from: aZ */
        public CarouselCardView m41485aZ() {
            return this.f3590mW;
        }

        /* renamed from: ba */
        public TextView m41484ba() {
            return this.f3591no;
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.a.d$c */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/d$c.class */
    public static class C1319c extends RecyclerView.AbstractC0328n {

        /* renamed from: np */
        private final int f3592np;

        public C1319c(int i) {
            this.f3592np = i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
            super.getItemOffsets(rect, view, recyclerView, c0347z);
            if (rect != null) {
                rect.right = this.f3592np;
            }
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.a.d$d */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/d$d.class */
    public static class C1320d extends C1321e {

        /* renamed from: cG */
        private final RecyclerView f3593cG;

        public C1320d(View view) {
            super(view);
            this.f3593cG = (RecyclerView) view.findViewById(C1298R.C1300id.freshchat_message_carousel_recycler_view);
        }

        /* renamed from: ay */
        public RecyclerView m41483ay() {
            return this.f3593cG;
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.a.d$e */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/d$e.class */
    public static class C1321e extends RecyclerView.AbstractC0313c0 {

        /* renamed from: nA */
        private final RelativeLayout f3594nA;

        /* renamed from: nB */
        private final LinearLayout f3595nB;

        /* renamed from: nC */
        private final ImageView f3596nC;

        /* renamed from: nD */
        private final TextView f3597nD;

        /* renamed from: nE */
        private final TextView f3598nE;

        /* renamed from: nF */
        private final ImageView f3599nF;

        /* renamed from: nz */
        private final RelativeLayout f3600nz;

        /* renamed from: qB */
        private final LinearLayout f3601qB;

        /* renamed from: qC */
        private final View f3602qC;

        /* renamed from: qD */
        private final View f3603qD;

        public C1321e(View view) {
            super(view);
            this.f3600nz = (RelativeLayout) view.findViewById(C1298R.C1300id.freshchat_message_root);
            this.f3594nA = (RelativeLayout) view.findViewById(C1298R.C1300id.freshchat_message_content_wrapper);
            int i = C1298R.C1300id.freshchat_message_fragment_wrapper;
            this.f3595nB = (LinearLayout) view.findViewById(i);
            this.f3596nC = (ImageView) view.findViewById(C1298R.C1300id.freshchat_message_avatar);
            this.f3597nD = (TextView) view.findViewById(C1298R.C1300id.freshchat_message_user_name);
            this.f3598nE = (TextView) view.findViewById(C1298R.C1300id.freshchat_message_time);
            this.f3599nF = (ImageView) view.findViewById(C1298R.C1300id.freshchat_message_upload_status);
            this.f3602qC = view.findViewById(C1298R.C1300id.freshchat_show_original_content_btn);
            View findViewById = view.findViewById(C1298R.C1300id.freshchat_original_message_container);
            this.f3603qD = findViewById;
            this.f3601qB = (LinearLayout) findViewById.findViewById(i);
        }

        /* renamed from: bc */
        public RelativeLayout m41482bc() {
            return this.f3600nz;
        }

        /* renamed from: bd */
        public RelativeLayout m41481bd() {
            return this.f3594nA;
        }

        /* renamed from: hg */
        public LinearLayout m41480hg() {
            return this.f3595nB;
        }

        /* renamed from: hh */
        public ImageView m41479hh() {
            return this.f3596nC;
        }

        /* renamed from: hi */
        public TextView m41478hi() {
            return this.f3597nD;
        }

        /* renamed from: hj */
        public TextView m41477hj() {
            return this.f3598nE;
        }

        /* renamed from: hk */
        public ImageView m41476hk() {
            return this.f3599nF;
        }

        /* renamed from: ip */
        public LinearLayout m41475ip() {
            return this.f3601qB;
        }

        /* renamed from: iq */
        public View m41474iq() {
            return this.f3602qC;
        }

        /* renamed from: ir */
        public View m41473ir() {
            return this.f3603qD;
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.a.d$f */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/d$f.class */
    public interface AbstractC1322f {
        /* renamed from: f */
        void mo41170f(Message message);
    }

    /* renamed from: com.freshchat.consumer.sdk.a.d$g */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/d$g.class */
    public interface AbstractC1323g {
        /* renamed from: a */
        void mo41169a(Message message, boolean z);
    }

    /* renamed from: com.freshchat.consumer.sdk.a.d$h */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/a/d$h.class */
    public class View$OnLongClickListenerC1324h implements View.OnLongClickListener {

        /* renamed from: gz */
        private final Message f3604gz;

        /* renamed from: oq */
        private final AbstractC1323g f3605oq;

        /* renamed from: qE */
        private final boolean f3607qE;

        public View$OnLongClickListenerC1324h(Message message, AbstractC1323g abstractC1323g, boolean z) {
            C1316d.this = r4;
            this.f3607qE = z;
            this.f3604gz = message;
            this.f3605oq = abstractC1323g;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            AbstractC1323g abstractC1323g = this.f3605oq;
            if (abstractC1323g != null) {
                abstractC1323g.mo41169a(this.f3604gz, this.f3607qE);
                return true;
            }
            return false;
        }
    }

    public C1316d(Context context, List<Message> list, Map<String, Participant> map, AbstractC1323g abstractC1323g, C1685cj.AbstractC1686a abstractC1686a) {
        this.context = context;
        this.f3556aM = list;
        this.f3573cr = LayoutInflater.from(context);
        C1466e m40905i = C1466e.m40905i(context.getApplicationContext());
        this.f3567cL = m40905i;
        this.f3574cy = new C1615ak(context);
        this.f3557aN = map;
        this.f3570cO = m40905i.isTeamMemberInfoVisible();
        this.f3562cC = C1623aq.m40240a(context, C1298R.attr.freshchatTeamMemberAvatarIcon, false);
        this.f3561cB = C1710g.m39961Q(context);
        this.f3577lZ = new C1319c(context.getResources().getDimensionPixelSize(C1298R.dimen.freshchat_category_icon_padding));
        this.f3584pV = context.getResources().getDimensionPixelSize(C1298R.dimen.freshchat_translation_toggle_btn_dimension);
        this.f3568cM = C1623aq.m40238j(context, C1298R.attr.freshchatChatBubbleLeft);
        this.f3569cN = C1623aq.m40238j(context, C1298R.attr.freshchatChatBubbleRight);
        this.f3566cK = (int) (C1722p.m39830ar(context) * 0.2f);
        Resources resources = context.getResources();
        this.f3560cA = resources.getDrawable(C1298R.C1299drawable.freshchat_ic_message_status_sent);
        this.f3575cz = resources.getDrawable(C1298R.C1299drawable.freshchat_ic_message_status_pending);
        this.f3563cD = m41494e(context);
        this.f3565cF = resources.getString(C1298R.string.freshchat_chat_deeplink);
        this.f3564cE = resources.getString(C1298R.string.freshchat_chat_deeplink_faq);
        this.f3581oq = abstractC1323g;
        this.f3572cX = abstractC1686a;
        this.f3585qy = C1623aq.m40235o(context, C1298R.dimen.freshchat_message_view_line_spacing_extra);
        this.f3586qz = C1623aq.m40239a(resources, C1298R.dimen.freshchat_message_view_line_spacing_multiplier).getFloat();
    }

    /* renamed from: a */
    private String m41503a(Message message, boolean z, String str) {
        if (message == null) {
            return null;
        }
        Participant m41490n = m41490n(message.getMessageUserAlias());
        String str2 = null;
        if (m41490n != null) {
            str2 = null;
            if (C1626as.m40233a(m41490n.getFirstName())) {
                str2 = m41490n.getFirstName();
            }
        }
        if (message.getMessageType() != Message.MessageType.FREDDY_BOT.getIntValue() && message.getMessageType() != Message.MessageType.BOT.getIntValue()) {
            String str3 = str;
            if (z) {
                str3 = str;
                if (C1626as.m40233a(str2)) {
                    str3 = str2;
                }
            }
            return str3;
        } else if (!C1626as.m40233a(str)) {
            return str;
        } else {
            if (C1626as.m40233a(message.getMessageUserName())) {
                str = message.getMessageUserName();
            } else if (C1626as.m40233a(str2)) {
                str = str2;
            }
            return str;
        }
    }

    /* renamed from: a */
    private void m41515a(Context context, TextView textView, long j) {
        int i;
        if (context == null || textView == null) {
            return;
        }
        if (j > 100) {
            textView.setText(C1719n.m39865i(context, j));
            i = 0;
        } else {
            i = 8;
        }
        textView.setVisibility(i);
    }

    /* renamed from: a */
    public void m41514a(View view, boolean z) {
        int i;
        Context context;
        if (z) {
            context = this.context;
            i = C1298R.string.freshchat_content_description_hide_original_content;
        } else {
            context = this.context;
            i = C1298R.string.freshchat_content_description_show_original_content;
        }
        view.setContentDescription(context.getString(i));
    }

    /* renamed from: a */
    private void m41513a(LinearLayout linearLayout, Message message, boolean z, boolean z2, boolean z3) {
        linearLayout.removeAllViews();
        if (C1716k.isEmpty(message.getMessageFragments())) {
            return;
        }
        for (MessageFragment messageFragment : message.getMessageFragments()) {
            View m40272a = this.f3574cy.m40272a(linearLayout, messageFragment, z, z3, z2, message.getAlias());
            if (m40272a != null) {
                m41501a(z2, messageFragment, m40272a);
                linearLayout.addView(m40272a);
            }
        }
    }

    /* renamed from: a */
    private void m41512a(C1321e c1321e) {
        if (this.f3576fM == null) {
            this.f3576fM = Boolean.valueOf(c1321e.m41479hh().getVisibility() == 0);
        }
    }

    /* renamed from: a */
    private void m41511a(C1321e c1321e, Message message) {
        boolean z;
        boolean isUserMessage = message.isUserMessage();
        if (isUserMessage) {
            c1321e.m41482bc().setHorizontalGravity(8388613);
            Drawable drawable = C1623aq.getDrawable(this.context, this.f3569cN);
            if (drawable != null) {
                c1321e.m41481bd().setBackground(drawable);
            }
            c1321e.m41479hh().setVisibility(8);
            c1321e.m41478hi().setVisibility(8);
            c1321e.m41476hk().setVisibility(0);
            c1321e.m41476hk().setImageDrawable(m41491g(message.getUploadState()));
            C1471i.m40840c(c1321e.m41474iq());
            C1471i.m40852a(this.context, c1321e.m41482bc(), this.f3566cK, 0);
            C1471i.m40848a(this.context, c1321e.m41477hj(), C1298R.attr.freshchatUserMessageTimeTextStyle);
            z = false;
        } else {
            boolean m39990h = C1698cv.m39990h(this.context, message);
            c1321e.m41482bc().setHorizontalGravity(8388611);
            Drawable drawable2 = C1623aq.getDrawable(this.context, this.f3568cM);
            if (drawable2 != null) {
                c1321e.m41481bd().setBackground(drawable2);
            }
            m41497c(c1321e, message);
            String m41503a = m41503a(message, this.f3570cO, this.f3563cD);
            if (C1626as.m40233a(m41503a)) {
                c1321e.m41478hi().setVisibility(0);
                c1321e.m41478hi().setText(m41503a);
            } else {
                c1321e.m41478hi().setVisibility(8);
            }
            c1321e.m41476hk().setVisibility(8);
            C1471i.m40852a(this.context, c1321e.m41482bc(), 0, this.f3566cK);
            C1471i.m40848a(this.context, c1321e.m41477hj(), C1298R.attr.freshchatTeamMemberMessageTimeTextStyle);
            m41510a(c1321e, message, m39990h);
            m41514a(c1321e.m41474iq(), c1321e.m41473ir().getVisibility() == 0);
            z = m39990h;
        }
        C1471i.m40840c(c1321e.m41473ir());
        c1321e.m41477hj().setVisibility(0);
        m41513a(c1321e.m41480hg(), message, z, isUserMessage, true);
        if (this.f3583pU.contains(Long.valueOf(message.getId()))) {
            m41499b(c1321e, message, z);
        }
        m41514a(c1321e.m41474iq(), c1321e.m41473ir().getVisibility() == 0);
        m41504a(message, c1321e.m41480hg());
        m41515a(this.context, c1321e.m41477hj(), message.getCreatedMillis());
        m41500b(c1321e, message);
    }

    /* renamed from: a */
    private void m41510a(C1321e c1321e, Message message, boolean z) {
        View m41474iq = c1321e.m41474iq();
        if (!z) {
            C1471i.m40840c(m41474iq);
            return;
        }
        C1471i.m40842b(m41474iq);
        if (this.f3584pV == 0) {
            m41474iq.post(new RunnableC1331h(this, m41474iq, c1321e));
        } else {
            C1471i.m40852a(this.context, c1321e.m41482bc(), 0, this.f3566cK - this.f3584pV);
        }
        m41474iq.setOnClickListener(new View$OnClickListenerC1346p(this, c1321e, message, z, m41474iq));
    }

    /* renamed from: a */
    private void m41504a(Message message, LinearLayout linearLayout) {
        Message.MessageType messageTypeFromIntValue = Message.MessageType.getMessageTypeFromIntValue(message.getMessageType());
        if (!message.isResponded() && C1689cm.m40000u(message)) {
            linearLayout.addView(C1685cj.m40014a(this.context, linearLayout, message, this.f3572cX));
        } else if (messageTypeFromIntValue != Message.MessageType.MESSAGE_TYPE_CALENDER_INVITE_CANCELLED_BY_USER) {
        } else {
            TextView textView = (TextView) linearLayout.findViewById(C1298R.C1300id.freshchat_text);
            textView.setCompoundDrawablesWithIntrinsicBounds(this.context.getResources().getDrawable(C1623aq.m40238j(this.context, C1298R.attr.freshchatCalendarCancelInviteIcon)), (Drawable) null, (Drawable) null, (Drawable) null);
            textView.setCompoundDrawablePadding(C1623aq.m40235o(this.context, C1298R.dimen.freshchat_calendar_cancel_invite_icon_padding));
        }
    }

    /* renamed from: a */
    private void m41501a(boolean z, MessageFragment messageFragment, View view) {
        int i;
        TextView textView;
        if (messageFragment.getFragmentType() == FragmentType.TEXT.asInt() || messageFragment.getFragmentType() == FragmentType.QUICK_REPLY_BUTTON.asInt()) {
            textView = (TextView) view.findViewById(C1298R.C1300id.freshchat_text);
            i = z ? C1298R.attr.freshchatUserMessageTextStyle : C1298R.attr.freshchatTeamMemberMessageTextStyle;
        } else if (messageFragment instanceof UnknownFragment) {
            textView = (TextView) view.findViewById(C1298R.C1300id.freshchat_unknown_fragment_text);
            i = z ? C1298R.attr.freshchatUnsupportedUserMessageTextStyle : C1298R.attr.freshchatUnsupportedTeamMemberMessageTextStyle;
        } else {
            textView = null;
            i = 0;
        }
        if (textView != null) {
            C1471i.m40848a(this.context, textView, i);
        }
    }

    /* renamed from: b */
    private void m41500b(C1321e c1321e, Message message) {
        View$OnLongClickListenerC1324h view$OnLongClickListenerC1324h = new View$OnLongClickListenerC1324h(message, this.f3581oq, true);
        c1321e.m41482bc().setOnLongClickListener(view$OnLongClickListenerC1324h);
        c1321e.m41480hg().setOnLongClickListener(view$OnLongClickListenerC1324h);
    }

    /* renamed from: b */
    public void m41499b(C1321e c1321e, Message message, boolean z) {
        m41513a(c1321e.m41475ip(), message, z, false, false);
        C1471i.m40842b(c1321e.m41473ir());
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0063, code lost:
        if (r4.f3570cO != false) goto L21;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m41497c(com.freshchat.consumer.sdk.p045a.C1316d.C1321e r5, com.freshchat.consumer.sdk.beans.Message r6) {
        /*
            Method dump skipped, instructions count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.freshchat.consumer.sdk.p045a.C1316d.m41497c(com.freshchat.consumer.sdk.a.d$e, com.freshchat.consumer.sdk.beans.Message):void");
    }

    /* renamed from: e */
    private String m41494e(Context context) {
        return context.getString(C1298R.string.freshchat_default_agent_name);
    }

    /* renamed from: f */
    private Message m41492f(int i) {
        List<Message> list = this.f3556aM;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.f3556aM.get(i);
    }

    /* renamed from: g */
    private Drawable m41491g(int i) {
        return i == 1 ? this.f3560cA : this.f3575cz;
    }

    /* renamed from: n */
    private Participant m41490n(String str) {
        return (!C1626as.m40233a(str) || !C1716k.m39894d(this.f3557aN)) ? null : this.f3557aN.get(str);
    }

    /* renamed from: a */
    public void m41509a(AbstractC1322f abstractC1322f) {
        this.f3559bo = abstractC1322f;
    }

    /* renamed from: a */
    public void m41502a(CarouselCardView.AbstractC1926a abstractC1926a) {
        this.f3558bn = abstractC1926a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return C1716k.m39900b(this.f3556aM);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        Message m41492f = m41492f(i);
        boolean z = true;
        if (i != getItemCount() - 1) {
            z = false;
        }
        return C1680cf.m40027a(m41492f, z, this.f3578ma).asInt();
    }

    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        Context context;
        TextView m41486hv;
        char createdMillis;
        C1321e c1321e;
        try {
            Message message = this.f3556aM.get(i);
            if (abstractC0313c0 instanceof C1320d) {
                C1320d c1320d = (C1320d) abstractC0313c0;
                List<MessageFragment> m40026k = C1680cf.m40026k(message);
                if (C1716k.m39902a(m40026k)) {
                    c1320d.m41483ay().setAdapter(new C1329g(this.context, m40026k, this.f3558bn));
                }
                AbstractC1322f abstractC1322f = this.f3559bo;
                if (abstractC1322f != null) {
                    abstractC1322f.mo41170f(message);
                }
                c1321e = (C1321e) abstractC0313c0;
            } else if (!(abstractC0313c0 instanceof C1321e)) {
                if (abstractC0313c0 instanceof C1318b) {
                    C1318b c1318b = (C1318b) abstractC0313c0;
                    CarouselCardDefaultFragment m40024m = C1680cf.m40024m(message);
                    if (m40024m != null) {
                        m40024m.setSelected(true);
                        c1318b.m41485aZ().setData(m40024m);
                        c1318b.m41485aZ().setUploadedStateDrawable(m41491g(message.getUploadState()));
                    }
                    context = this.context;
                    m41486hv = c1318b.m41484ba();
                    createdMillis = message.getCreatedMillis();
                } else if (!(abstractC0313c0 instanceof C1317a)) {
                    return;
                } else {
                    C1317a c1317a = (C1317a) abstractC0313c0;
                    CalendarEventFragment m40002s = C1689cm.m40002s(message);
                    if (m40002s != null) {
                        C1749l c1749l = new C1749l(this.context);
                        c1749l.m39716b(m40002s);
                        c1749l.m39713y(message.isUploaded());
                        c1749l.m39693br(C1689cm.m40007a(this.f3557aN, message));
                        c1317a.m41488a(c1749l);
                    }
                    c1317a.m41487hk().setImageDrawable(m41491g(message.getUploadState()));
                    context = this.context;
                    m41486hv = c1317a.m41486hv();
                    createdMillis = message.getCreatedMillis();
                }
                m41515a(context, m41486hv, createdMillis);
                return;
            } else {
                c1321e = (C1321e) abstractC0313c0;
            }
            m41511a(c1321e, message);
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == this.f3579mb) {
            C1320d c1320d = new C1320d(LayoutInflater.from(this.context).inflate(C1298R.layout.freshchat_listitem_carousel, viewGroup, false));
            c1320d.m41483ay().setLayoutManager(new LinearLayoutManager(this.context, 0, false));
            c1320d.m41483ay().addItemDecoration(this.f3577lZ);
            m41512a(c1320d);
            return c1320d;
        } else if (i == this.f3580mc) {
            return new C1318b(this.f3573cr.inflate(C1298R.layout.freshchat_listitem_carousel_card, viewGroup, false));
        } else {
            if (i == this.f3582or) {
                return new C1317a(this.f3573cr.inflate(C1298R.layout.freshchat_list_item_calendar_event, viewGroup, false));
            }
            C1321e c1321e = new C1321e(LayoutInflater.from(this.context).inflate(C1298R.layout.freshchat_listitem_message, viewGroup, false));
            m41512a(c1321e);
            return c1321e;
        }
    }

    /* renamed from: x */
    public void m41489x(boolean z) {
        this.f3578ma = z;
    }
}
