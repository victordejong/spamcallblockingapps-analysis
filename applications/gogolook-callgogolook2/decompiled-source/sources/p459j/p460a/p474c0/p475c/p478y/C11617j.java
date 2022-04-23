package p459j.p460a.p474c0.p475c.p478y;

import android.net.Uri;
import android.text.TextUtils;
import gogolook.callgogolook2.messaging.datamodel.action.ReadDraftDataAction;
import gogolook.callgogolook2.messaging.datamodel.action.WriteDraftMessageAction;
import gogolook.callgogolook2.messaging.datamodel.data.MessageData;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.datamodel.data.PendingAttachmentData;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import p459j.p460a.p474c0.p475c.C11557r;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11587a;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p475c.p477x.C11589c;
import p459j.p460a.p474c0.p488f.C11828f;
import p459j.p460a.p474c0.p488f.C11832i;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p499h.AbstractAsyncTaskC12189n0;
import p459j.p460a.p474c0.p499h.AbstractC12170i;
import p459j.p460a.p474c0.p499h.AbstractC12181l0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: j.a.c0.c.y.j */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/j.class */
public class C11617j extends AbstractC11587a implements ReadDraftDataAction.AbstractC4636c {

    /* renamed from: s */
    public static int f26070s = 1;

    /* renamed from: t */
    public static int f26071t = 2;

    /* renamed from: u */
    public static int f26072u = 4;

    /* renamed from: v */
    public static int f26073v = 8;

    /* renamed from: w */
    public static int f26074w = 255;

    /* renamed from: b */
    public final String f26075b;

    /* renamed from: c */
    public ReadDraftDataAction.C4637d f26076c;

    /* renamed from: e */
    public AbstractC11623f f26078e;

    /* renamed from: f */
    public boolean f26079f;

    /* renamed from: g */
    public boolean f26080g;

    /* renamed from: h */
    public String f26081h;

    /* renamed from: i */
    public String f26082i;

    /* renamed from: j */
    public String f26083j;

    /* renamed from: l */
    public boolean f26085l;

    /* renamed from: q */
    public boolean f26090q;

    /* renamed from: r */
    public AsyncTaskC11619b f26091r;

    /* renamed from: m */
    public final List<MessagePartData> f26086m = new ArrayList();

    /* renamed from: n */
    public final List<MessagePartData> f26087n = Collections.unmodifiableList(this.f26086m);

    /* renamed from: o */
    public final List<PendingAttachmentData> f26088o = new ArrayList();

    /* renamed from: p */
    public final List<PendingAttachmentData> f26089p = Collections.unmodifiableList(this.f26088o);

    /* renamed from: d */
    public final C11621d f26077d = new C11621d();

    /* renamed from: k */
    public C11557r f26084k = new C11557r();

    /* renamed from: j.a.c0.c.y.j$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/j$b.class */
    public class AsyncTaskC11619b extends AbstractAsyncTaskC12189n0<Void, Void, Integer> {

        /* renamed from: e */
        public final boolean f26092e;

        /* renamed from: f */
        public final int f26093f;

        /* renamed from: g */
        public final AbstractC11620c f26094g;

        /* renamed from: h */
        public final String f26095h;

        /* renamed from: i */
        public final List<MessagePartData> f26096i;

        /* renamed from: j */
        public int f26097j = 0;

        public AsyncTaskC11619b(boolean z, int i, AbstractC11620c cVar, C11589c<C11617j> cVar2) {
            this.f26092e = z;
            this.f26093f = i;
            this.f26094g = cVar;
            this.f26095h = cVar2.mo9035a();
            this.f26096i = new ArrayList(C11617j.this.f26086m);
            C11617j.this.f26091r = this;
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Integer mo6854a(Void... voidArr) {
            int i = this.f26097j;
            return i != 0 ? Integer.valueOf(i) : (!this.f26092e || !m8782b()) ? 0 : 3;
        }

        /* renamed from: a */
        public void onPostExecute(Integer num) {
            C11617j.this.f26091r = null;
            if (!C11617j.this.m9045b(this.f26095h) || isCancelled()) {
                if (!C11617j.this.m9045b(this.f26095h)) {
                    C12153d0.m6981e("MessagingApp", "Message can't be sent: draft not bound");
                }
                if (isCancelled()) {
                    C12153d0.m6981e("MessagingApp", "Message can't be sent: draft is cancelled");
                    return;
                }
                return;
            }
            this.f26094g.mo8781a(C11617j.this, num.intValue());
        }

        /* renamed from: b */
        public final boolean m8782b() {
            C12151d.m7002b();
            boolean z = true;
            if (this.f26096i.size() > C11617j.this.m8800k()) {
                return true;
            }
            long j = 0;
            for (MessagePartData messagePartData : this.f26096i) {
                j += messagePartData.m27565s();
            }
            if (j <= C11828f.m8193a(this.f26093f).m8186g()) {
                z = false;
            }
            return z;
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            C11617j.this.f26091r = null;
        }

        @Override // android.os.AsyncTask
        public void onPreExecute() {
            if (C11617j.this.m8786y()) {
                this.f26097j = 1;
                return;
            }
            if (C11617j.this.m8797n()) {
                try {
                    if (TextUtils.isEmpty(AbstractC12181l0.m6895b(this.f26093f).mo6878b(true))) {
                        this.f26097j = 2;
                        return;
                    }
                } catch (IllegalStateException e) {
                    this.f26097j = 5;
                    return;
                }
            }
            if (C11617j.this.m8788w() > 1) {
                this.f26097j = 4;
            }
        }
    }

    /* renamed from: j.a.c0.c.y.j$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/j$c.class */
    public interface AbstractC11620c {
        /* renamed from: a */
        void mo8781a(C11617j jVar, int i);
    }

    /* renamed from: j.a.c0.c.y.j$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/j$d.class */
    public class C11621d extends ArrayList<AbstractC11622e> implements AbstractC11622e {
        public C11621d(C11617j jVar) {
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11622e
        /* renamed from: a */
        public void mo7860a(C11617j jVar) {
            C12151d.m7013a();
            Iterator<AbstractC11622e> it = iterator();
            while (it.hasNext()) {
                it.next().mo7860a(jVar);
            }
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11622e
        /* renamed from: a */
        public void mo7859a(C11617j jVar, int i) {
            C12151d.m7013a();
            Iterator<AbstractC11622e> it = iterator();
            while (it.hasNext()) {
                it.next().mo7859a(jVar, i);
            }
        }

        @Override // p459j.p460a.p474c0.p475c.p478y.C11617j.AbstractC11622e
        /* renamed from: q */
        public void mo7796q() {
            C12151d.m7013a();
            Iterator<AbstractC11622e> it = iterator();
            while (it.hasNext()) {
                it.next().mo7796q();
            }
        }
    }

    /* renamed from: j.a.c0.c.y.j$e */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/j$e.class */
    public interface AbstractC11622e {
        /* renamed from: a */
        void mo7860a(C11617j jVar);

        /* renamed from: a */
        void mo7859a(C11617j jVar, int i);

        /* renamed from: q */
        void mo7796q();
    }

    /* renamed from: j.a.c0.c.y.j$f */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/j$f.class */
    public interface AbstractC11623f {
        /* renamed from: a */
        int mo7384a();
    }

    public C11617j(String str) {
        this.f26075b = str;
    }

    /* renamed from: A */
    public final boolean m8840A() {
        return TextUtils.isEmpty(this.f26081h) && this.f26086m.isEmpty() && TextUtils.isEmpty(this.f26082i);
    }

    /* renamed from: B */
    public boolean m8839B() {
        return this.f26085l;
    }

    /* renamed from: a */
    public MessageData m8828a(AbstractC11590d<C11617j> dVar) {
        C12151d.m6999b(!m8786y());
        this.f26085l = true;
        MessageData a = m8819a(true);
        this.f26085l = false;
        return a;
    }

    /* renamed from: a */
    public MessageData m8819a(boolean z) {
        MessageData messageData;
        if (m8796o()) {
            MessageData a = MessageData.m27617a(this.f26075b, this.f26083j, this.f26081h, this.f26082i);
            Iterator<MessagePartData> it = this.f26086m.iterator();
            while (true) {
                messageData = a;
                if (!it.hasNext()) {
                    break;
                }
                a.m27623a(it.next());
            }
        } else {
            messageData = MessageData.m27618a(this.f26075b, this.f26083j, this.f26081h);
        }
        if (z) {
            m8805f();
            m8817b(f26074w);
        } else {
            this.f26090q = true;
        }
        return messageData;
    }

    /* renamed from: a */
    public void m8838a(int i) {
        m8804g();
        m8817b(i);
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.ReadDraftDataAction.AbstractC4636c
    /* renamed from: a */
    public void mo8836a(ReadDraftDataAction readDraftDataAction, Object obj) {
        C12153d0.m6981e("MessagingApp", "DraftMessageData: draft not loaded. conversationId=" + this.f26075b);
        this.f26090q = false;
        this.f26076c = null;
    }

    @Override // gogolook.callgogolook2.messaging.datamodel.action.ReadDraftDataAction.AbstractC4636c
    /* renamed from: a */
    public void mo8835a(ReadDraftDataAction readDraftDataAction, Object obj, MessageData messageData, C11608e eVar) {
        String str = (String) obj;
        if (m9045b(str)) {
            this.f26083j = messageData.m27638H();
            this.f26080g = eVar.m8955d();
            this.f26079f = eVar.m8956c();
            m8834a(messageData, str);
            C12153d0.m6991a("MessagingApp", "DraftMessageData: draft loaded. conversationId=" + this.f26075b + " selfId=" + this.f26083j);
        } else {
            C12153d0.m6981e("MessagingApp", "DraftMessageData: draft loaded but not bound. conversationId=" + this.f26075b);
        }
        this.f26076c = null;
    }

    /* renamed from: a */
    public void m8834a(MessageData messageData, String str) {
        C12151d.m7000b(str);
        this.f26090q = false;
        if (m8840A() || (TextUtils.equals(this.f26081h, messageData.m27588x()) && TextUtils.equals(this.f26082i, messageData.m27586z()) && this.f26086m.isEmpty())) {
            m8811b(messageData.m27588x(), false);
            m8822a(messageData.m27586z(), false);
            Iterator<MessagePartData> it = messageData.m27643C().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                MessagePartData next = it.next();
                if (next.m27562v() && m8801j() >= m8800k()) {
                    m8803h();
                    break;
                } else if (next instanceof PendingAttachmentData) {
                    PendingAttachmentData pendingAttachmentData = (PendingAttachmentData) next;
                    C12151d.m7012a(0, pendingAttachmentData.m27516F());
                    m8829a(pendingAttachmentData, str);
                } else if (next.m27562v()) {
                    m8833a(next);
                }
            }
            m8817b(f26074w);
            return;
        }
        m8817b(f26073v);
    }

    /* renamed from: a */
    public final void m8832a(MessagePartData messagePartData, PendingAttachmentData pendingAttachmentData) {
        if (messagePartData != null && messagePartData.m27559y()) {
            m8804g();
        }
        if (pendingAttachmentData != null && pendingAttachmentData.m27559y()) {
            m8804g();
        }
        Iterator<MessagePartData> it = this.f26086m.iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().m27559y()) {
                    m8804g();
                    break;
                }
            } else {
                break;
            }
        }
        Iterator<PendingAttachmentData> it2 = this.f26088o.iterator();
        while (true) {
            if (it2.hasNext()) {
                if (it2.next().m27559y()) {
                    m8804g();
                    break;
                }
            } else {
                break;
            }
        }
        if (messagePartData != null) {
            this.f26086m.add(messagePartData);
        } else if (pendingAttachmentData != null) {
            this.f26088o.add(pendingAttachmentData);
        }
    }

    /* renamed from: a */
    public void m8831a(PendingAttachmentData pendingAttachmentData) {
        this.f26077d.mo7796q();
    }

    /* renamed from: a */
    public void m8830a(PendingAttachmentData pendingAttachmentData, AbstractC11590d<C11617j> dVar) {
        if (m8829a(pendingAttachmentData, dVar.mo9035a())) {
            m8803h();
        }
        m8817b(f26070s);
    }

    /* renamed from: a */
    public void m8826a(AbstractC11622e eVar) {
        this.f26077d.add(eVar);
    }

    /* renamed from: a */
    public void m8825a(AbstractC11623f fVar) {
        this.f26078e = fVar;
    }

    /* renamed from: a */
    public final void m8822a(String str, boolean z) {
        this.f26082i = str;
        if (z) {
            m8817b(f26072u);
        }
    }

    /* renamed from: a */
    public void m8821a(Collection<? extends MessagePartData> collection) {
        Iterator<? extends MessagePartData> it = collection.iterator();
        while (true) {
            if (it.hasNext()) {
                if (((MessagePartData) it.next()).m27559y()) {
                    m8804g();
                    break;
                }
            } else {
                break;
            }
        }
        Iterator<MessagePartData> it2 = this.f26086m.iterator();
        while (true) {
            if (it2.hasNext()) {
                if (it2.next().m27559y()) {
                    m8804g();
                    break;
                }
            } else {
                break;
            }
        }
        Iterator<PendingAttachmentData> it3 = this.f26088o.iterator();
        while (true) {
            if (it3.hasNext()) {
                if (it3.next().m27559y()) {
                    m8804g();
                    break;
                }
            } else {
                break;
            }
        }
        boolean z = false;
        for (MessagePartData messagePartData : collection) {
            z |= m8833a(messagePartData);
        }
        if (z) {
            m8803h();
        }
        m8817b(f26070s);
    }

    /* renamed from: a */
    public void m8820a(Set<MessagePartData> set) {
        Iterator<MessagePartData> it = this.f26086m.iterator();
        boolean z = false;
        while (it.hasNext()) {
            MessagePartData next = it.next();
            if (set.contains(next)) {
                it.remove();
                next.m27580a();
                z = true;
            }
        }
        if (z) {
            m8817b(f26070s);
        }
    }

    /* renamed from: a */
    public void m8818a(boolean z, int i, AbstractC11620c cVar, C11589c<C11617j> cVar2) {
        new AsyncTaskC11619b(z, i, cVar, cVar2).m6852b(null);
    }

    /* renamed from: a */
    public boolean m8837a(Uri uri) {
        for (MessagePartData messagePartData : this.f26086m) {
            if (messagePartData.m27567q().equals(uri)) {
                return true;
            }
        }
        for (PendingAttachmentData pendingAttachmentData : this.f26088o) {
            if (pendingAttachmentData.m27567q().equals(uri)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public final boolean m8833a(MessagePartData messagePartData) {
        C12151d.m6999b(messagePartData.m27562v());
        boolean z = m8801j() >= m8800k();
        if (z || m8837a(messagePartData.m27567q())) {
            messagePartData.m27580a();
            return z;
        }
        m8832a(messagePartData, (PendingAttachmentData) null);
        return false;
    }

    /* renamed from: a */
    public final boolean m8829a(PendingAttachmentData pendingAttachmentData, String str) {
        boolean z = m8801j() >= m8800k();
        if (z || m8837a(pendingAttachmentData.m27567q())) {
            pendingAttachmentData.m27580a();
            return z;
        }
        C12151d.m6999b(!this.f26088o.contains(pendingAttachmentData));
        C12151d.m7012a(0, pendingAttachmentData.m27516F());
        m8832a((MessagePartData) null, pendingAttachmentData);
        pendingAttachmentData.m27514a(this, str);
        return false;
    }

    /* renamed from: a */
    public boolean m8827a(AbstractC11590d<C11617j> dVar, MessageData messageData, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("DraftMessageData: ");
        sb.append(messageData == null ? "loading" : "setting");
        sb.append(" for conversationId=");
        sb.append(this.f26075b);
        C12153d0.m6991a("MessagingApp", sb.toString());
        if (z) {
            m8805f();
        }
        boolean z2 = this.f26090q;
        this.f26090q = false;
        if (this.f26076c != null || z2 || !m9045b(dVar.mo9035a())) {
            return false;
        }
        this.f26076c = ReadDraftDataAction.m27673a(this.f26075b, messageData, dVar.mo9035a(), this);
        return true;
    }

    /* renamed from: b */
    public final void m8817b(int i) {
        if (!this.f26090q) {
            AsyncTaskC11619b bVar = this.f26091r;
            if (bVar != null) {
                bVar.cancel(true);
                this.f26091r = null;
            }
            this.f26077d.mo7859a(this, i);
        }
    }

    /* renamed from: b */
    public void m8816b(MessagePartData messagePartData) {
        for (MessagePartData messagePartData2 : this.f26086m) {
            if (messagePartData2.m27567q().equals(messagePartData.m27567q())) {
                this.f26086m.remove(messagePartData2);
                messagePartData2.m27580a();
                m8817b(f26070s);
                return;
            }
        }
    }

    /* renamed from: b */
    public void m8815b(MessagePartData messagePartData, PendingAttachmentData pendingAttachmentData) {
        for (PendingAttachmentData pendingAttachmentData2 : this.f26088o) {
            if (pendingAttachmentData2.m27567q().equals(pendingAttachmentData.m27567q())) {
                this.f26088o.remove(pendingAttachmentData);
                if (pendingAttachmentData.m27559y()) {
                    messagePartData.m27570b(true);
                }
                this.f26086m.add(messagePartData);
                m8817b(f26070s);
                return;
            }
        }
        messagePartData.m27580a();
    }

    /* renamed from: b */
    public void m8814b(PendingAttachmentData pendingAttachmentData) {
        for (PendingAttachmentData pendingAttachmentData2 : this.f26088o) {
            if (pendingAttachmentData2.m27567q().equals(pendingAttachmentData.m27567q())) {
                this.f26088o.remove(pendingAttachmentData);
                pendingAttachmentData.m27580a();
                m8817b(f26070s);
                return;
            }
        }
    }

    /* renamed from: b */
    public void m8813b(AbstractC11590d<C11617j> dVar) {
        m8810c(dVar);
        m8802i();
    }

    /* renamed from: b */
    public final void m8811b(String str, boolean z) {
        this.f26081h = str;
        this.f26084k.m9173a(m8789v(), this.f26081h);
        if (z) {
            m8817b(f26071t);
        }
    }

    /* renamed from: c */
    public final void m8810c(AbstractC11590d<C11617j> dVar) {
        MessageData a = m8819a(false);
        if (m9045b(dVar.mo9035a())) {
            WriteDraftMessageAction.m27649a(this.f26075b, a);
        }
    }

    /* renamed from: c */
    public void m8808c(String str, boolean z) {
        C12153d0.m6991a("MessagingApp", "DraftMessageData: set selfId=" + str + " for conversationId=" + this.f26075b);
        this.f26083j = str;
        if (z) {
            m8817b(f26073v);
        }
    }

    /* renamed from: d */
    public void m8807d(String str) {
        m8822a(str, false);
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11587a
    /* renamed from: e */
    public void mo8718e() {
        ReadDraftDataAction.C4637d dVar = this.f26076c;
        if (dVar != null) {
            dVar.m9091d();
        }
        this.f26076c = null;
        this.f26077d.clear();
    }

    /* renamed from: e */
    public void m8806e(String str) {
        m8811b(str, false);
    }

    /* renamed from: f */
    public final void m8805f() {
        this.f26090q = false;
        this.f26086m.clear();
        m8806e("");
        m8807d("");
    }

    /* renamed from: g */
    public final void m8804g() {
        for (MessagePartData messagePartData : this.f26086m) {
            messagePartData.m27580a();
        }
        this.f26086m.clear();
        this.f26088o.clear();
    }

    /* renamed from: h */
    public final void m8803h() {
        this.f26077d.mo7860a(this);
    }

    /* renamed from: i */
    public final void m8802i() {
        this.f26088o.clear();
    }

    /* renamed from: j */
    public final int m8801j() {
        return this.f26086m.size() + this.f26088o.size();
    }

    /* renamed from: k */
    public final int m8800k() {
        AbstractC12170i.m6941a().mo6919a("bugle_mms_attachment_limit", 10);
        return 10;
    }

    /* renamed from: l */
    public int m8799l() {
        return this.f26084k.m9174a();
    }

    /* renamed from: m */
    public String m8798m() {
        return this.f26075b;
    }

    /* renamed from: n */
    public boolean m8797n() {
        return m8796o() && this.f26080g;
    }

    /* renamed from: o */
    public boolean m8796o() {
        int v = m8789v();
        return C11832i.m8159a(this.f26079f, v) || (this.f26080g && C11834j.m8082d(v)) || this.f26084k.m9172b() || !this.f26086m.isEmpty() || !TextUtils.isEmpty(this.f26082i);
    }

    /* renamed from: p */
    public String m8795p() {
        return this.f26082i;
    }

    /* renamed from: q */
    public String m8794q() {
        return this.f26081h;
    }

    /* renamed from: r */
    public int m8793r() {
        return this.f26084k.m9171c();
    }

    /* renamed from: s */
    public List<MessagePartData> m8792s() {
        return this.f26087n;
    }

    /* renamed from: t */
    public List<PendingAttachmentData> m8791t() {
        return this.f26089p;
    }

    /* renamed from: u */
    public String m8790u() {
        return this.f26083j;
    }

    /* renamed from: v */
    public int m8789v() {
        AbstractC11623f fVar = this.f26078e;
        return fVar == null ? -1 : fVar.mo7384a();
    }

    /* renamed from: w */
    public final int m8788w() {
        int i = 0;
        for (MessagePartData messagePartData : this.f26086m) {
            if (messagePartData.m27584B()) {
                i++;
            }
        }
        for (PendingAttachmentData pendingAttachmentData : this.f26088o) {
            if (pendingAttachmentData.m27584B()) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: x */
    public boolean m8787x() {
        return !this.f26086m.isEmpty();
    }

    /* renamed from: y */
    public boolean m8786y() {
        return !this.f26088o.isEmpty();
    }

    /* renamed from: z */
    public boolean m8785z() {
        AsyncTaskC11619b bVar = this.f26091r;
        return bVar != null && !bVar.isCancelled();
    }
}
