package p459j.p460a.p474c0.p491g;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.datamodel.data.PendingAttachmentData;
import gogolook.callgogolook2.messaging.p078ui.AudioAttachmentView;
import gogolook.callgogolook2.messaging.p078ui.MultiAttachmentLayout;
import gogolook.callgogolook2.messaging.p078ui.PersonItemView;
import gogolook.callgogolook2.messaging.p078ui.VideoThumbnailView;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.p478y.AbstractC11631n;
import p459j.p460a.p474c0.p475c.p478y.C11637r;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11667n;
import p459j.p460a.p474c0.p475c.p479z.C11641b0;
import p459j.p460a.p474c0.p475c.p479z.C11664k;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12205r;
import p459j.p460a.p474c0.p499h.C12212s0;
import p459j.p460a.p474c0.p499h.C12216t0;
/* renamed from: j.a.c0.g.a */
/* loaded from: classes2-dex2jar.jar:j/a/c0/g/a.class */
public class C11904a {

    /* renamed from: j.a.c0.g.a$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/a$a.class */
    public static final class View$OnClickListenerC11905a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ MultiAttachmentLayout.AbstractC4692b f26693a;

        /* renamed from: b */
        public final /* synthetic */ MessagePartData f26694b;

        public View$OnClickListenerC11905a(MultiAttachmentLayout.AbstractC4692b bVar, MessagePartData messagePartData) {
            this.f26693a = bVar;
            this.f26694b = messagePartData;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f26693a.mo27113b(this.f26694b, C12212s0.m6792a(view));
        }
    }

    /* renamed from: j.a.c0.g.a$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/a$b.class */
    public static final class View$OnLongClickListenerC11906b implements View.OnLongClickListener {

        /* renamed from: a */
        public final /* synthetic */ MultiAttachmentLayout.AbstractC4692b f26695a;

        /* renamed from: b */
        public final /* synthetic */ MessagePartData f26696b;

        public View$OnLongClickListenerC11906b(MultiAttachmentLayout.AbstractC4692b bVar, MessagePartData messagePartData) {
            this.f26695a = bVar;
            this.f26696b = messagePartData;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            return this.f26695a.mo27122a(this.f26696b, C12212s0.m6792a(view));
        }
    }

    /* renamed from: j.a.c0.g.a$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/g/a$c.class */
    public static final class C11907c implements PersonItemView.AbstractC4697c {

        /* renamed from: a */
        public final /* synthetic */ PersonItemView f26697a;

        public C11907c(PersonItemView personItemView) {
            this.f26697a = personItemView;
        }

        @Override // gogolook.callgogolook2.messaging.p078ui.PersonItemView.AbstractC4697c
        /* renamed from: a */
        public void mo7646a(AbstractC11631n nVar) {
            C12151d.m6999b(nVar instanceof C11637r);
            C11637r rVar = (C11637r) nVar;
            if (rVar.m8732p()) {
                AbstractC12126w.m7095a().mo7065c(this.f26697a.getContext(), rVar.m8733o());
            }
        }

        @Override // gogolook.callgogolook2.messaging.p078ui.PersonItemView.AbstractC4697c
        /* renamed from: b */
        public boolean mo7644b(AbstractC11631n nVar) {
            return false;
        }
    }

    /* renamed from: a */
    public static View m7959a(LayoutInflater layoutInflater, ViewGroup viewGroup, PendingAttachmentData pendingAttachmentData) {
        View inflate = layoutInflater.inflate(R$layout.attachment_pending_item, viewGroup, false);
        ViewGroup.LayoutParams layoutParams = ((ImageView) inflate.findViewById(R$id.pending_item_view)).getLayoutParams();
        int dimensionPixelSize = layoutInflater.getContext().getResources().getDimensionPixelSize(R$dimen.pending_attachment_size);
        layoutParams.width = pendingAttachmentData.getWidth() == -1 ? dimensionPixelSize : pendingAttachmentData.getWidth();
        if (pendingAttachmentData.getHeight() != -1) {
            dimensionPixelSize = pendingAttachmentData.getHeight();
        }
        layoutParams.height = dimensionPixelSize;
        return inflate;
    }

    /* renamed from: a */
    public static View m7958a(LayoutInflater layoutInflater, MessagePartData messagePartData, ViewGroup viewGroup, int i) {
        int i2 = 2131558479;
        if (i != 1) {
            if (i == 2) {
                i2 = R$layout.attachment_multiple_audio;
            } else if (i != 3) {
                C12151d.m7005a("unsupported attachment view type!");
                i2 = 2131558479;
            } else {
                i2 = R$layout.attachment_chooser_audio;
            }
        }
        View inflate = layoutInflater.inflate(i2, viewGroup, false);
        ((AudioAttachmentView) inflate.findViewById(R$id.audio_attachment_view)).m27417a(messagePartData, false, false);
        return inflate;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00a6, code lost:
        if (r10 == Integer.MAX_VALUE) goto L_0x00a9;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.view.View m7957a(android.view.LayoutInflater r5, gogolook.callgogolook2.messaging.datamodel.data.MessagePartData r6, android.view.ViewGroup r7, int r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p491g.C11904a.m7957a(android.view.LayoutInflater, gogolook.callgogolook2.messaging.datamodel.data.MessagePartData, android.view.ViewGroup, int, boolean):android.view.View");
    }

    /* renamed from: a */
    public static View m7956a(LayoutInflater layoutInflater, MessagePartData messagePartData, ViewGroup viewGroup, int i, boolean z, @Nullable MultiAttachmentLayout.AbstractC4692b bVar) {
        View view;
        String c = messagePartData.m27569c();
        if (messagePartData instanceof PendingAttachmentData) {
            view = m7959a(layoutInflater, viewGroup, (PendingAttachmentData) messagePartData);
        } else if (C12205r.m6809d(c)) {
            view = m7957a(layoutInflater, messagePartData, viewGroup, i, z);
        } else if (C12205r.m6811b(c)) {
            view = m7958a(layoutInflater, messagePartData, viewGroup, i);
        } else if (C12205r.m6804i(c)) {
            view = m7953c(layoutInflater, messagePartData, viewGroup, i);
        } else if (C12205r.m6805h(c)) {
            view = m7954b(layoutInflater, messagePartData, viewGroup, i);
        } else {
            C12151d.m7005a("unsupported attachment type: " + c);
            return null;
        }
        TextView textView = (TextView) view.findViewById(R$id.caption);
        if (textView != null) {
            String u = messagePartData.m27563u();
            textView.setVisibility(TextUtils.isEmpty(u) ? 8 : 0);
            textView.setText(u);
        }
        if (!(view == null || bVar == null)) {
            view.setOnClickListener(new View$OnClickListenerC11905a(bVar, messagePartData));
            view.setOnLongClickListener(new View$OnLongClickListenerC11906b(bVar, messagePartData));
        }
        return view;
    }

    /* renamed from: a */
    public static MultiAttachmentLayout m7960a(Context context, MultiAttachmentLayout.AbstractC4692b bVar) {
        MultiAttachmentLayout multiAttachmentLayout = new MultiAttachmentLayout(context, null);
        multiAttachmentLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        multiAttachmentLayout.m27353a(bVar);
        return multiAttachmentLayout;
    }

    /* renamed from: a */
    public static AbstractC11667n m7955a(MessagePartData messagePartData, int i, int i2) {
        Uri q = messagePartData.m27567q();
        if (!C12205r.m6809d(messagePartData.m27569c())) {
            return null;
        }
        String b = C12216t0.m6763b(q);
        if (b != null) {
            return new C11664k(b, i, i2, messagePartData.getWidth(), messagePartData.getHeight(), false, true, false);
        }
        C11641b0.C11642a aVar = new C11641b0.C11642a(q);
        aVar.m8680b(i);
        C11641b0.C11642a aVar2 = aVar;
        aVar2.m8681a(i2);
        C11641b0.C11642a aVar3 = aVar2;
        aVar3.m8678d(messagePartData.getWidth());
        C11641b0.C11642a aVar4 = aVar3;
        aVar4.m8679c(messagePartData.getHeight());
        C11641b0.C11642a aVar5 = aVar4;
        aVar5.m8727b();
        return aVar5.m8726c();
    }

    /* renamed from: b */
    public static View m7954b(LayoutInflater layoutInflater, MessagePartData messagePartData, ViewGroup viewGroup, int i) {
        int i2 = 2131558481;
        if (i != 1) {
            if (i == 2) {
                i2 = R$layout.attachment_multiple_vcard;
            } else if (i != 3) {
                C12151d.m7005a("unsupported attachment view type!");
                i2 = 2131558481;
            } else {
                i2 = R$layout.attachment_chooser_vcard;
            }
        }
        boolean z = false;
        View inflate = layoutInflater.inflate(i2, viewGroup, false);
        PersonItemView personItemView = (PersonItemView) inflate.findViewById(R$id.vcard_attachment_view);
        if (i != 1) {
            z = true;
        }
        personItemView.m27335a(z);
        personItemView.m27332b(AbstractC11528g.m9259k().mo9255a(layoutInflater.getContext(), messagePartData));
        if (i == 1) {
            personItemView.m27337a(new C11907c(personItemView));
        }
        return inflate;
    }

    /* renamed from: c */
    public static View m7953c(LayoutInflater layoutInflater, MessagePartData messagePartData, ViewGroup viewGroup, int i) {
        int i2 = 2131558482;
        if (i != 1) {
            if (i == 2) {
                i2 = R$layout.attachment_multiple_video;
            } else if (i != 3) {
                C12151d.m7005a("unsupported attachment view type!");
                i2 = 2131558482;
            } else {
                i2 = R$layout.attachment_chooser_video;
            }
        }
        VideoThumbnailView videoThumbnailView = (VideoThumbnailView) layoutInflater.inflate(i2, viewGroup, false);
        videoThumbnailView.m27314a(messagePartData, false);
        return videoThumbnailView;
    }
}
