package p193e.p194a.p195a.p244k.p245a;

import android.content.Context;
import android.net.Uri;
import com.google.protobuf.ByteString;
import com.razorpay.AnalyticsConstants;
import com.truecaller.api.services.messenger.p138v1.models.MessageContent;
import com.truecaller.messaging.data.types.LinkPreviewEntity;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p195a.p283v0.AbstractC7283a;
import p193e.p194a.p372b0.p430q.AbstractC8571b;
import s1.s;
import s1.z.b.l;
import s1.z.c.c0;
import s1.z.c.m;
import s1.z.c.y;
/* renamed from: e.a.a.k.a.p1 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/p1.class */
public final class C6602p1 implements AbstractC6599o1 {

    /* renamed from: a */
    public final Context f21794a;

    /* renamed from: b */
    public final AbstractC8571b f21795b;

    /* renamed from: c */
    public final AbstractC7283a f21796c;

    /* renamed from: e.a.a.k.a.p1$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/p1$a.class */
    public static final class C6603a extends m implements l<OutputStream, s> {

        /* renamed from: b */
        public final /* synthetic */ ByteString f21797b;

        /* renamed from: c */
        public final /* synthetic */ y f21798c;

        /* renamed from: d */
        public final /* synthetic */ MessageContent.MessageEntity f21799d;

        /* renamed from: e */
        public final /* synthetic */ C6602p1 f21800e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6603a(ByteString byteString, c0 c0Var, y yVar, MessageContent.MessageEntity messageEntity, C6602p1 c6602p1, MessageContent messageContent) {
            super(1);
            this.f21797b = byteString;
            this.f21798c = yVar;
            this.f21799d = messageEntity;
            this.f21800e = c6602p1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:21:0x007b, code lost:
            if (r10 != false) goto L23;
         */
        /* JADX WARN: Finally extract failed */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m30684d(java.lang.Object r6) {
            /*
                r5 = this;
                r0 = r6
                java.io.OutputStream r0 = (java.io.OutputStream) r0
                r7 = r0
                r0 = r7
                java.lang.String r1 = "out"
                s1.z.c.l.e(r0, r1)
                r0 = r5
                com.google.protobuf.ByteString r0 = r0.f21797b
                java.io.InputStream r0 = r0.newInput()
                r6 = r0
                r0 = r6
                java.lang.String r1 = "input"
                s1.z.c.l.d(r0, r1)     // Catch: java.lang.Throwable -> L8e
                r0 = 0
                r8 = r0
                r0 = r6
                r1 = r7
                r2 = 0
                r3 = 2
                long r0 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3960U(r0, r1, r2, r3)     // Catch: java.lang.Throwable -> L8e
                r0 = r5
                s1.z.c.y r0 = r0.f21798c     // Catch: java.lang.Throwable -> L8e
                r7 = r0
                r0 = r5
                com.truecaller.api.services.messenger.v1.models.MessageContent$MessageEntity r0 = r0.f21799d     // Catch: java.lang.Throwable -> L8e
                com.truecaller.api.services.messenger.v1.models.MessageContent$MessageEntity$LinkPreview r0 = r0.getLinkPreview()     // Catch: java.lang.Throwable -> L8e
                boolean r0 = r0.hasPlayable()     // Catch: java.lang.Throwable -> L8e
                if (r0 == 0) goto L38
                goto L7e
            L38:
                r0 = r5
                e.a.a.k.a.p1 r0 = r0.f21800e     // Catch: java.lang.Throwable -> L8e
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0)     // Catch: java.lang.Throwable -> L8e
                r0 = r6
                r0.reset()     // Catch: java.lang.Throwable -> L8e
                android.graphics.BitmapFactory$Options r0 = new android.graphics.BitmapFactory$Options     // Catch: java.lang.Throwable -> L8e
                r9 = r0
                r0 = r9
                r0.<init>()     // Catch: java.lang.Throwable -> L8e
                r0 = r9
                r1 = 1
                r0.inJustDecodeBounds = r1     // Catch: java.lang.Throwable -> L8e
                r0 = r6
                r1 = 0
                r2 = r9
                android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeStream(r0, r1, r2)     // Catch: java.lang.RuntimeException -> L6f java.lang.Throwable -> L8e
                r0 = r9
                int r0 = r0.outWidth     // Catch: java.lang.Throwable -> L8e
                r1 = r9
                int r1 = r1.outHeight     // Catch: java.lang.Throwable -> L8e
                if (r0 != r1) goto L76
                r0 = 1
                r10 = r0
                goto L79
            L6f:
                r9 = move-exception
                r0 = r9
                com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r0)     // Catch: java.lang.Throwable -> L8e
            L76:
                r0 = 0
                r10 = r0
            L79:
                r0 = r10
                if (r0 != 0) goto L80
            L7e:
                r0 = 1
                r8 = r0
            L80:
                r0 = r7
                r1 = r8
                r0.a = r1     // Catch: java.lang.Throwable -> L8e
                r0 = r6
                r1 = 0
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m4016G(r0, r1)
                s1.s r0 = s1.s.a
                return r0
            L8e:
                r7 = move-exception
                r0 = r7
                throw r0     // Catch: java.lang.Throwable -> L91
            L91:
                r9 = move-exception
                r0 = r6
                r1 = r7
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m4016G(r0, r1)
                r0 = r9
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.C6602p1.C6603a.m30684d(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C6602p1(Context context, AbstractC8571b abstractC8571b, AbstractC7283a abstractC7283a) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(abstractC8571b, "attachmentStoreHelper");
        s1.z.c.l.e(abstractC7283a, "linkMetaDataExtractor");
        this.f21794a = context;
        this.f21795b = abstractC8571b;
        this.f21796c = abstractC7283a;
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6599o1
    /* renamed from: a */
    public LinkPreviewEntity mo30686a(MessageContent messageContent) {
        Object obj;
        s1.z.c.l.e(messageContent, "content");
        List<MessageContent.MessageEntity> messageEntitiesList = messageContent.getMessageEntitiesList();
        s1.z.c.l.d(messageEntitiesList, "content.messageEntitiesList");
        Iterator<T> it = messageEntitiesList.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((MessageContent.MessageEntity) obj).hasLinkPreview()) {
                break;
            }
        }
        MessageContent.MessageEntity messageEntity = (MessageContent.MessageEntity) obj;
        LinkPreviewEntity linkPreviewEntity = null;
        if (messageEntity != null) {
            MessageContent.MessageEntity.LinkPreview linkPreview = messageEntity.getLinkPreview();
            s1.z.c.l.d(linkPreview, "it.linkPreview");
            String title = linkPreview.getTitle();
            linkPreviewEntity = null;
            if (!(title == null || title.length() == 0)) {
                MessageContent.MessageEntity.LinkPreview linkPreview2 = messageEntity.getLinkPreview();
                s1.z.c.l.d(linkPreview2, "it.linkPreview");
                String description = linkPreview2.getDescription();
                boolean z = true;
                if (description != null) {
                    z = description.length() == 0;
                }
                if (z) {
                    linkPreviewEntity = null;
                } else {
                    try {
                        String text = messageContent.getText();
                        s1.z.c.l.d(text, "content.text");
                        String substring = text.substring(messageEntity.getOffset(), messageEntity.getLength());
                        s1.z.c.l.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        c0 c0Var = new c0();
                        c0Var.a = null;
                        y yVar = new y();
                        yVar.a = false;
                        MessageContent.MessageEntity.LinkPreview linkPreview3 = messageEntity.getLinkPreview();
                        s1.z.c.l.d(linkPreview3, "it.linkPreview");
                        ByteString image = linkPreview3.getImage();
                        if (image != null) {
                            c0Var.a = (Uri) C18334g0.m15256L0(this.f21795b, image.hashCode(), "application/vnd.truecaller.linkpreview", false, 0, new C6603a(image, c0Var, yVar, messageEntity, this, messageContent), 8, null).a;
                        }
                        String str = messageEntity.getLinkPreview().hasPlayable() ? "application/vnd.truecaller.linkpreview.playable" : yVar.a ? "application/vnd.truecaller.linkpreview.media" : "application/vnd.truecaller.linkpreview";
                        MessageContent.MessageEntity.LinkPreview linkPreview4 = messageEntity.getLinkPreview();
                        s1.z.c.l.d(linkPreview4, "it.linkPreview");
                        String title2 = linkPreview4.getTitle();
                        s1.z.c.l.d(title2, "it.linkPreview.title");
                        MessageContent.MessageEntity.LinkPreview linkPreview5 = messageEntity.getLinkPreview();
                        s1.z.c.l.d(linkPreview5, "it.linkPreview");
                        String description2 = linkPreview5.getDescription();
                        s1.z.c.l.d(description2, "it.linkPreview.description");
                        linkPreviewEntity = new LinkPreviewEntity(0L, str, 0, 0, 0, 0L, (Uri) c0Var.a, title2, description2, substring, 57);
                    } catch (IndexOutOfBoundsException e) {
                        linkPreviewEntity = null;
                    }
                }
            }
        }
        return linkPreviewEntity;
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x025e, code lost:
        if (r0.getWidth() > r11) goto L67;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0419  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0438  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x04cf  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x051d A[LOOP:3: B:135:0x0514->B:137:0x051d, LOOP_END] */
    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6599o1
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.truecaller.api.services.messenger.p138v1.models.input.InputMessageContent.MessageEntity> mo30685b(com.truecaller.messaging.data.types.Message r7) {
        /*
            Method dump skipped, instructions count: 1409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.C6602p1.mo30685b(com.truecaller.messaging.data.types.Message):java.util.List");
    }
}
