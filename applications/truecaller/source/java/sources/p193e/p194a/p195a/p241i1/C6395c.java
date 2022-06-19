package p193e.p194a.p195a.p241i1;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.listitem.ListItemX;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.conversation.AttachmentType;
import com.truecaller.messaging.conversation.ConversationAction;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Draft;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.InboxTab;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.ReplySnippet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1221t.p1222a.p1228y.C20344b;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p200c.p207j8.C5405a;
import p193e.p194a.p195a.p200c.p208k.p209a.C5421k;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6489q;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p837h0.AbstractC14840m;
import s1.f0.d;
import s1.f0.h;
import s1.f0.r;
import s1.f0.v;
import s1.g;
import s1.k;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.i1.c */
/* loaded from: classes11-dex2jar.jar:e/a/a/i1/c.class */
public final class C6395c implements AbstractC6394b {

    /* renamed from: a */
    public final g f21284a = C25225a.m3978P1(C6396a.f21293b);

    /* renamed from: b */
    public final h f21285b;

    /* renamed from: c */
    public final AbstractC19223c0 f21286c;

    /* renamed from: d */
    public final AbstractC6489q f21287d;

    /* renamed from: e */
    public final AbstractC18951b0 f21288e;

    /* renamed from: f */
    public final C20592g f21289f;

    /* renamed from: g */
    public final AbstractC14840m f21290g;

    /* renamed from: h */
    public final AbstractC6392i0 f21291h;

    /* renamed from: i */
    public final AbstractC19222c f21292i;

    /* renamed from: e.a.a.i1.c$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/i1/c$a.class */
    public static final class C6396a extends m implements a<List<? extends C5405a>> {

        /* renamed from: b */
        public static final C6396a f21293b = new C6396a();

        public C6396a() {
            super(0);
        }

        public Object invoke() {
            return i.T(new C5405a[]{new C5405a("��", C2752R.raw.animated_emoji_rolling_on_the_floor_laughing), new C5405a("��", C2752R.raw.animated_emoji_smiling_face_with_heart_eyes), new C5405a("��", C2752R.raw.animated_emoji_partying_face), new C5405a("��", C2752R.raw.animated_emoji_fire), new C5405a("��", C2752R.raw.animated_emoji_pleading_face), new C5405a("��", C2752R.raw.animated_emoji_loudly_crying_face), new C5405a("��", C2752R.raw.animated_emoji_pouting_face)});
        }
    }

    @Inject
    public C6395c(AbstractC19223c0 abstractC19223c0, AbstractC6489q abstractC6489q, AbstractC18951b0 abstractC18951b0, C20592g c20592g, AbstractC14840m abstractC14840m, AbstractC6392i0 abstractC6392i0, AbstractC19222c abstractC19222c) {
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC6489q, "imGroupUtil");
        l.e(abstractC18951b0, "dateHelper");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC14840m, "filterSettings");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC19222c, "clock");
        this.f21286c = abstractC19223c0;
        this.f21287d = abstractC6489q;
        this.f21288e = abstractC18951b0;
        this.f21289f = c20592g;
        this.f21290g = abstractC14840m;
        this.f21291h = abstractC6392i0;
        this.f21292i = abstractC19222c;
        StringBuilder m8728C = C22128a.m8728C("\\b");
        m8728C.append(abstractC6392i0.mo31116Y1());
        m8728C.append("([_A-Za-z0-9]+)");
        this.f21285b = new h(m8728C.toString());
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: A */
    public int mo31349A(int i, boolean z) {
        return i != 0 ? i != 1 ? i != 2 ? 0 : z ? 2131887035 : 2131887034 : 2131886989 : 2131886990;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: B */
    public String mo31348B(int i) {
        String mo13768b = this.f21286c.mo13768b(i == 3 ? 2131887023 : 2131887031, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…entNotDelivered\n        )");
        return mo13768b;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: C */
    public Uri mo31347C(double d, double d2, CharSequence charSequence) {
        String str;
        if (charSequence != null) {
            str = String.format(Locale.US, "%s%.7f,%.7f%s%s", Arrays.copyOf(new Object[]{"https://www.google.com/maps/search/?api=1&query=", Double.valueOf(d), Double.valueOf(d2), "&query_place_id=", charSequence}, 5));
            l.d(str, "java.lang.String.format(locale, format, *args)");
        } else {
            str = String.format(Locale.US, "%s%.7f,%.7f", Arrays.copyOf(new Object[]{"https://maps.google.com/maps?q=", Double.valueOf(d), Double.valueOf(d2)}, 3));
            l.d(str, "java.lang.String.format(locale, format, *args)");
        }
        Uri parse = Uri.parse(str);
        l.d(parse, "Uri.parse(uriStr)");
        return parse;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: D */
    public String mo31346D(Conversation conversation, InboxTab inboxTab) {
        l.e(conversation, "conversation");
        l.e(inboxTab, "inboxTab");
        boolean z = true;
        boolean z2 = !this.f21289f.m10963h0().isEnabled();
        boolean z3 = inboxTab == InboxTab.SPAM || (z2 && inboxTab == InboxTab.OTHERS);
        Participant[] participantArr = conversation.f13211m;
        l.d(participantArr, "conversation.participants");
        String str = null;
        if (!C6405h.m31299e(participantArr)) {
            if (!z3) {
                str = null;
            } else {
                Participant[] participantArr2 = conversation.f13211m;
                l.d(participantArr2, "conversation.participants");
                Object m3845s0 = C25225a.m3845s0(participantArr2);
                l.d(m3845s0, "conversation.participants.first()");
                Participant participant = (Participant) m3845s0;
                if (!this.f21290g.mo19547u() || !z2) {
                    z = false;
                }
                str = null;
                if (participant.m35449k(z)) {
                    str = this.f21286c.mo13768b(2131886134, new Object[0]);
                }
            }
        }
        return str;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: E */
    public String mo31345E(String str, int i) {
        if (i > 1) {
            if (str == null || str.length() == 0) {
                str = this.f21286c.mo13759k(C2752R.plurals.MmsMultipleContactsVcardName, i, Integer.valueOf(i));
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(w3.c.a.a.a.h.a(str, 16));
                sb.append(" + ");
                int i2 = i - 1;
                sb.append(this.f21286c.mo13759k(C2752R.plurals.MultipleContactsVcardName, i2, Integer.valueOf(i2)));
                str = sb.toString();
            }
            l.d(str, "if (contactName.isNullOr…         }\"\n            }");
        } else {
            boolean z = true;
            if (str != null) {
                z = str.length() == 0;
            }
            if (z) {
                str = this.f21286c.mo13768b(C2752R.string.MessageContactAttachmentPlaceholder, new Object[0]);
            }
            l.d(str, "if (contactName.isNullOr…    contactName\n        }");
        }
        return str;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: F */
    public k<Integer, Integer> mo31344F(int i, int i2, int i3, int i4) {
        k<Integer, Integer> kVar;
        if ((i & 1) == 0) {
            return new k<>(0, 0);
        }
        if ((i & 116) != 0) {
            kVar = new k<>(Integer.valueOf(i4 == 0 ? 2131231979 : 2131232311), Integer.valueOf((int) C2752R.string.MessageStatusSending));
        } else if (i3 == 3) {
            kVar = new k<>(Integer.valueOf(i4 == 0 ? 2131231978 : 2131232233), Integer.valueOf((int) C2752R.string.MessageStatusRead));
        } else if (i2 == 3) {
            kVar = new k<>(Integer.valueOf(i4 == 0 ? 2131231974 : 2131231818), Integer.valueOf((int) C2752R.string.MessageStatusDelivered));
        } else if (i == 1) {
            kVar = new k<>(Integer.valueOf(i4 == 0 ? 2131231980 : 2131232312), Integer.valueOf((int) C2752R.string.MessageStatusSent));
        } else if ((i & 128) == 128) {
            int i5 = 0;
            if (i4 == 1) {
                i5 = 2131232376;
            }
            kVar = new k<>(Integer.valueOf(i5), Integer.valueOf((int) C2752R.string.MessageStatusScheduled));
        } else {
            kVar = new k<>(0, 0);
        }
        return kVar;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: G */
    public String mo31343G(String str) {
        l.e(str, "contentText");
        if (str.length() == 0) {
            return null;
        }
        s1.f0.g b = h.b(this.f21285b, str, 0, 2);
        String str2 = null;
        if (b != null) {
            s1.f0.g gVar = b;
            str2 = null;
            if (gVar.a.size() > 1) {
                d dVar = gVar.a.get(1);
                str2 = null;
                if (dVar != null) {
                    str2 = dVar.a;
                }
            }
        }
        return str2;
    }

    /* renamed from: H */
    public final ConversationAction m31342H(Conversation conversation) {
        Participant[] participantArr = conversation.f13211m;
        if (!(participantArr.length == 1 && !C10480a.m25914p1(participantArr))) {
            participantArr = null;
        }
        ConversationAction conversationAction = null;
        if (participantArr != null) {
            Participant participant = (Participant) C25225a.m3830v0(participantArr);
            conversationAction = null;
            if (participant != null) {
                if (!(participant.f11569b != 5)) {
                    participant = null;
                }
                conversationAction = null;
                if (participant != null) {
                    boolean z = false;
                    if (this.f21290g.mo19547u()) {
                        z = false;
                        if (!this.f21289f.m10963h0().isEnabled()) {
                            z = true;
                        }
                    }
                    conversationAction = !participant.m35449k(z) ? ConversationAction.TOP_BLOCK : ConversationAction.TOP_UNBLOCK;
                }
            }
        }
        return conversationAction;
    }

    /* renamed from: I */
    public final List<String> m31341I(Message message) {
        Entity[] entityArr = message.f13394o;
        l.d(entityArr, "entities");
        ArrayList arrayList = new ArrayList();
        for (Entity entity : entityArr) {
            String str = entity.f13307b;
            if (str == null || str.length() == 0) {
                str = null;
            }
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    /* renamed from: J */
    public final boolean m31340J(String str) {
        return l.a("text/html", str) || l.a("text/plain", str);
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: a */
    public C5405a mo31339a(String str) {
        Object obj;
        l.e(str, "text");
        if (!this.f21289f.m10982W().isEnabled()) {
            return null;
        }
        C5405a c5405a = null;
        if (mo31315y(str)) {
            if (C20344b.f57181a.m11236a(str) != 1) {
                c5405a = null;
            } else {
                Iterator it = ((List) this.f21284a.getValue()).iterator();
                do {
                    obj = null;
                    if (!it.hasNext()) {
                        break;
                    }
                    obj = it.next();
                } while (!l.a(((C5405a) obj).f18491a, str));
                c5405a = (C5405a) obj;
            }
        }
        return c5405a;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: b */
    public Drawable mo31338b(int i, String str) {
        Drawable drawable = null;
        if (i == 1) {
            if (str == null) {
                drawable = null;
            } else {
                Entity.C4195a c4195a = Entity.f13305h;
                if (c4195a.m35038e(str)) {
                    drawable = this.f21286c.mo13767c(C2752R.C2753drawable.ic_tcx_gif_filled_12dp);
                } else if (c4195a.m35037f(str)) {
                    drawable = this.f21286c.mo13767c(C2752R.C2753drawable.ic_inbox_photo);
                } else if (c4195a.m35031l(str)) {
                    drawable = this.f21286c.mo13767c(C2752R.C2753drawable.ic_inbox_video);
                } else if (c4195a.m35032k(str)) {
                    drawable = this.f21286c.mo13767c(2131232617);
                } else if (c4195a.m35040c(str)) {
                    drawable = this.f21286c.mo13767c(C2752R.C2753drawable.ic_inbox_voice_clip);
                } else if (c4195a.m35039d(str)) {
                    drawable = this.f21286c.mo13767c(2131232506);
                } else {
                    drawable = null;
                    if (c4195a.m35035h(str)) {
                        drawable = this.f21286c.mo13767c(2131232577);
                    }
                }
            }
        }
        return drawable;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x01d1, code lost:
        if (r18 == false) goto L62;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0155  */
    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo31337c(com.truecaller.messaging.data.types.Message r10, boolean r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p241i1.C6395c.mo31337c(com.truecaller.messaging.data.types.Message, boolean, boolean):boolean");
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: d */
    public String mo31336d(Draft draft) {
        BinaryEntity binaryEntity;
        String str;
        String mo13768b;
        l.e(draft, "draft");
        BinaryEntity[] binaryEntityArr = draft.f13272g;
        l.d(binaryEntityArr, "draft.media");
        int length = binaryEntityArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                binaryEntity = null;
                break;
            }
            binaryEntity = binaryEntityArr[i];
            if (binaryEntity.mo34896e()) {
                break;
            }
            i++;
        }
        if (binaryEntity == null || (mo13768b = this.f21286c.mo13768b(C2752R.string.MessageEditAudioCaption, new Object[0])) == null) {
            str = draft.f13268c;
            l.d(str, "draft.text");
        } else {
            str = mo13768b;
        }
        return str;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: e */
    public AttachmentType mo31335e(String str) {
        l.e(str, "type");
        Entity.C4195a c4195a = Entity.f13305h;
        return c4195a.m35037f(str) ? AttachmentType.IMAGE : c4195a.m35038e(str) ? AttachmentType.GIF : c4195a.m35040c(str) ? AttachmentType.AUDIO : c4195a.m35031l(str) ? AttachmentType.VIDEO : c4195a.m35032k(str) ? AttachmentType.VCARD : c4195a.m35039d(str) ? AttachmentType.DOCUMENT : c4195a.m35035h(str) ? AttachmentType.LOCATION : AttachmentType.UNKNOWN;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: f */
    public int mo31334f(int i, boolean z) {
        return (!z || !(i == 1 || i == 2)) ? i == 2 ? 2131888239 : i == 3 ? 2131888242 : i == 4 ? 2131888241 : 2131888240 : 2131888238;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: g */
    public int mo31333g(Message message) {
        return message.f13379S != -1 ? 2131886994 : 0;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: h */
    public String mo31332h(Message message) {
        l.e(message, "message");
        AbstractC18951b0 abstractC18951b0 = this.f21288e;
        b bVar = message.f13384e;
        l.d(bVar, "message.date");
        return abstractC18951b0.mo14273v(((e) bVar).a).toString();
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: i */
    public boolean mo31331i(Conversation conversation) {
        return (conversation != null ? m31342H(conversation) : null) == ConversationAction.TOP_UNBLOCK;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: j */
    public int mo31330j(int i, boolean z) {
        return (!z || !(i == 1 || i == 2)) ? i == 2 ? 2131232481 : i == 3 ? 2131232483 : i == 4 ? 2131232576 : 2131232482 : 2131231966;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0192  */
    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.drawable.Drawable mo31329k(com.truecaller.messaging.data.types.Conversation r26) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p241i1.C6395c.mo31329k(com.truecaller.messaging.data.types.Conversation):android.graphics.drawable.Drawable");
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: l */
    public ListItemX.SubtitleColor mo31328l(String str, int i) {
        return str != null ? ListItemX.SubtitleColor.RED : i == 6 ? ListItemX.SubtitleColor.BLUE : ListItemX.SubtitleColor.DEFAULT;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: m */
    public String mo31327m(Conversation conversation) {
        l.e(conversation, "conversation");
        AbstractC18951b0 abstractC18951b0 = this.f21288e;
        b bVar = conversation.f13207i;
        l.d(bVar, "conversation.date");
        return abstractC18951b0.mo14284k(((e) bVar).a).toString();
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: n */
    public String mo31326n(Conversation conversation) {
        l.e(conversation, "conversation");
        if (!C10480a.m25904r1(conversation.f13211m)) {
            String m35066a = conversation.m35066a();
            l.d(m35066a, "conversation.participantsText");
            return m35066a;
        }
        ImGroupInfo imGroupInfo = conversation.f13224z;
        if (imGroupInfo != null) {
            String str = imGroupInfo.f13320b;
            if (str == null) {
                str = "";
            }
            return str;
        }
        AbstractC6489q abstractC6489q = this.f21287d;
        String str2 = conversation.f13211m[0].f11572e;
        l.d(str2, "conversation.participants[0].normalizedAddress");
        return abstractC6489q.mo30870e(str2);
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: o */
    public Drawable mo31325o(Message message) {
        List<String> m31341I = m31341I(message);
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) m31341I).iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (!m31340J((String) next)) {
                arrayList.add(next);
            }
        }
        return mo31338b(arrayList.size(), (String) i.D(arrayList));
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: p */
    public int mo31324p(Message message, s1.z.b.l<? super Entity, Boolean> lVar) {
        int i;
        l.e(lVar, "negativePredicate");
        int i2 = 0;
        int i3 = 0;
        if (message.m35020f()) {
            Entity[] entityArr = message.f13394o;
            l.d(entityArr, "message.entities");
            int length = entityArr.length;
            int i4 = 0;
            while (true) {
                i = i4;
                if (i3 >= length) {
                    break;
                }
                Entity entity = entityArr[i3];
                l.d(entity, "it");
                int i5 = i;
                if (((Boolean) ((C5421k.C5424c) lVar).m33127d(entity)).booleanValue()) {
                    i5 = i + 1;
                }
                i3++;
                i4 = i5;
            }
            i2 = message.f13394o.length - i;
        }
        return i2;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: q */
    public String mo31323q(ReplySnippet replySnippet) {
        String str;
        l.e(replySnippet, "replySnippet");
        if (replySnippet.f13460b == 1) {
            str = this.f21286c.mo13768b(C2752R.string.ParticipantSelfName, new Object[0]);
            l.d(str, "resourceProvider.getStri…ring.ParticipantSelfName)");
        } else {
            String str2 = replySnippet.f13462d;
            if (str2 != null) {
                str = str2;
            } else {
                String str3 = replySnippet.f13463e;
                if (str3 != null) {
                    Integer num = replySnippet.f13464f;
                    if (num == null) {
                        str = str3;
                    } else {
                        str = str3;
                        if (num.intValue() == 3) {
                            str = this.f21287d.mo30871d(str3);
                        }
                    }
                } else {
                    str = null;
                }
            }
            if (str == null) {
                str = "";
            }
        }
        return str;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: r */
    public ListItemX.SubtitleColor mo31322r(String str, int i, int i2) {
        return (i2 & 8) != 0 ? ListItemX.SubtitleColor.RED : mo31328l(str, i);
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: s */
    public List<C5405a> mo31321s() {
        return (List) this.f21284a.getValue();
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: t */
    public String mo31320t(String str, int i, String str2) {
        String obj;
        StringBuilder sb = new StringBuilder((str == null || (obj = v.g0(str).toString()) == null) ? "" : r.s(obj, '\n', ' ', false, 4));
        if (i > 1) {
            String mo13759k = this.f21286c.mo13759k(C2752R.plurals.MmsTextAttachmentsSuffix, i, Integer.valueOf(i));
            boolean z = false;
            if (sb.length() > 0) {
                z = true;
            }
            if (z) {
                sb.append(", ");
            }
            sb.append(mo13759k);
        } else if (i == 1 && str2 != null) {
            if (sb.length() == 0) {
                Entity.C4195a c4195a = Entity.f13305h;
                sb.append(c4195a.m35038e(str2) ? this.f21286c.mo13768b(C2752R.string.MessageGifAttachmentPlaceholder, new Object[0]) : c4195a.m35037f(str2) ? this.f21286c.mo13768b(C2752R.string.MessageImageAttachmentPlaceholder, new Object[0]) : c4195a.m35031l(str2) ? this.f21286c.mo13768b(C2752R.string.MessageVideoAttachmentPlaceholder, new Object[0]) : c4195a.m35032k(str2) ? this.f21286c.mo13768b(C2752R.string.MessageContactAttachmentPlaceholder, new Object[0]) : c4195a.m35040c(str2) ? this.f21286c.mo13768b(C2752R.string.MessageVoiceClipAttachmentPlaceholder, new Object[0]) : c4195a.m35039d(str2) ? this.f21286c.mo13768b(C2752R.string.MessageDocumentAttachmentPlaceholder, new Object[0]) : c4195a.m35035h(str2) ? this.f21286c.mo13768b(C2752R.string.MessageLocationAttachmentPlaceholder, new Object[0]) : this.f21286c.mo13759k(C2752R.plurals.MmsTextAttachmentsSuffix, 1, 1));
            }
        }
        String sb2 = sb.toString();
        l.d(sb2, "fullText.toString()");
        return sb2;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: u */
    public boolean mo31319u(Conversation conversation) {
        return (conversation != null ? m31342H(conversation) : null) == ConversationAction.TOP_BLOCK;
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: v */
    public String mo31318v(Message message) {
        l.e(message, "message");
        List<String> m31341I = m31341I(message);
        ArrayList arrayList = new ArrayList();
        for (Object obj : m31341I) {
            if (!m31340J((String) obj)) {
                arrayList.add(obj);
            }
        }
        String str = null;
        if (arrayList.size() != 1) {
            return null;
        }
        String str2 = (String) i.B(arrayList);
        Entity.C4195a c4195a = Entity.f13305h;
        if (c4195a.m35038e(str2)) {
            str = "��️";
        } else if (c4195a.m35037f(str2)) {
            str = "��";
        } else if (c4195a.m35031l(str2)) {
            str = "��";
        } else if (c4195a.m35032k(str2)) {
            str = "��";
        } else if (c4195a.m35040c(str2)) {
            str = "��";
        } else if (c4195a.m35039d(str2)) {
            str = "��";
        } else if (c4195a.m35035h(str2)) {
            str = "��";
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0079, code lost:
        if (r0.length() == 0) goto L20;
     */
    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String mo31317w(p193e.p194a.p1114o5.p1120d2.C19010a r9, boolean r10) {
        /*
            r8 = this;
            r0 = r9
            java.lang.String r1 = "place"
            s1.z.c.l.e(r0, r1)
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r11 = r0
            r0 = r9
            java.lang.CharSequence r0 = r0.f53130a
            r12 = r0
            r0 = 0
            r13 = r0
            r0 = r10
            if (r0 == 0) goto L5c
            r0 = r11
            r1 = r8
            r2 = r9
            double r2 = r2.f53131b
            r3 = r9
            double r3 = r3.f53132c
            r4 = r9
            java.lang.CharSequence r4 = r4.f53133d
            android.net.Uri r1 = r1.mo31347C(r2, r3, r4)
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r12
            if (r0 == 0) goto L49
            r0 = r12
            int r0 = r0.length()
            if (r0 != 0) goto L43
            goto L49
        L43:
            r0 = 0
            r14 = r0
            goto L4c
        L49:
            r0 = 1
            r14 = r0
        L4c:
            r0 = r14
            if (r0 == 0) goto L54
            goto L5c
        L54:
            r0 = r11
            java.lang.String r1 = " "
            java.lang.StringBuilder r0 = r0.append(r1)
        L5c:
            r0 = r12
            if (r0 == 0) goto L69
            r0 = r12
            int r0 = r0.length()
        L69:
            r0 = r12
            if (r0 == 0) goto L7c
            r0 = r13
            r14 = r0
            r0 = r12
            int r0 = r0.length()
            if (r0 != 0) goto L7f
        L7c:
            r0 = 1
            r14 = r0
        L7f:
            r0 = r14
            if (r0 != 0) goto L8b
            r0 = r11
            r1 = r12
            java.lang.StringBuilder r0 = r0.append(r1)
        L8b:
            r0 = r11
            java.lang.String r0 = r0.toString()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "StringBuilder().apply(builderAction).toString()"
            s1.z.c.l.d(r0, r1)
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p241i1.C6395c.mo31317w(e.a.o5.d2.a, boolean):java.lang.String");
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: x */
    public String mo31316x(boolean z) {
        String mo13768b = this.f21286c.mo13768b(z ? 2131887024 : 2131887025, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…sageStatusNudgeToSendSms)");
        return mo13768b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00bd, code lost:
        return r16;
     */
    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo31315y(java.lang.String r7) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "text"
            s1.z.c.l.e(r0, r1)
            e.a.t.a.y.b r0 = p193e.p194a.p1221t.p1222a.p1228y.C20344b.f57181a
            r8 = r0
            r0 = r7
            java.lang.String r1 = "input"
            s1.z.c.l.e(r0, r1)
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r10
            r11 = r0
        L1b:
            r0 = r10
            r1 = r7
            int r1 = r1.length()
            if (r0 >= r1) goto L94
            java.util.concurrent.FutureTask<e.a.t.a.u.f> r0 = p193e.p194a.p1221t.p1222a.p1224u.C20314i.f57127a
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L89
            r0 = r12
            java.lang.Object r0 = r0.get()
            e.a.t.a.u.f r0 = (p193e.p194a.p1221t.p1222a.p1224u.C20311f) r0
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L89
            r0 = r8
            r1 = r7
            r2 = r10
            r3 = r10
            r4 = r12
            e.a.t.a.u.c r4 = r4.f57124a
            s1.k r0 = r0.m11235b(r1, r2, r3, r4)
            r12 = r0
            r0 = r12
            java.lang.Object r0 = r0.a
            e.a.t.a.u.d r0 = (p193e.p194a.p1221t.p1222a.p1224u.C20309d) r0
            r13 = r0
            r0 = r12
            java.lang.Object r0 = r0.b
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            r14 = r0
            r0 = r11
            r15 = r0
            r0 = r13
            if (r0 == 0) goto L7e
            r0 = r10
            r1 = r11
            if (r0 == r1) goto L7a
            r0 = r9
            r16 = r0
            goto Lbb
        L7a:
            r0 = r14
            r15 = r0
        L7e:
            r0 = r14
            r10 = r0
            r0 = r15
            r11 = r0
            goto L1b
        L89:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Emoji data loader has not been set"
            r1.<init>(r2)
            throw r0
        L94:
            r0 = r9
            r16 = r0
            r0 = r11
            r1 = r7
            int r1 = r1.length()
            if (r0 != r1) goto Lbb
            r0 = r7
            int r0 = r0.length()
            if (r0 <= 0) goto Lad
            r0 = 1
            r15 = r0
            goto Lb0
        Lad:
            r0 = 0
            r15 = r0
        Lb0:
            r0 = r9
            r16 = r0
            r0 = r15
            if (r0 == 0) goto Lbb
            r0 = 1
            r16 = r0
        Lbb:
            r0 = r16
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p241i1.C6395c.mo31315y(java.lang.String):boolean");
    }

    @Override // p193e.p194a.p195a.p241i1.AbstractC6394b
    /* renamed from: z */
    public String mo31314z(Message message) {
        if (message == null) {
            return "";
        }
        List<String> m31341I = m31341I(message);
        ArrayList arrayList = new ArrayList();
        for (Object obj : m31341I) {
            if (!m31340J((String) obj)) {
                arrayList.add(obj);
            }
        }
        return mo31320t(message.m35025a(), arrayList.size(), (String) i.D(arrayList));
    }
}
