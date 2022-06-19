package p193e.p194a.p195a.p244k.p245a;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.net.Uri;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageLite;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ContentFormat;
import com.truecaller.api.services.messenger.p138v1.MediaHandles;
import com.truecaller.api.services.messenger.p138v1.models.MessageContent;
import com.truecaller.api.services.messenger.p138v1.models.input.InputMessageContent;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.AudioEntity;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.DocumentEntity;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.GifEntity;
import com.truecaller.messaging.data.types.ImageEntity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.VCardEntity;
import com.truecaller.messaging.data.types.VideoEntity;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import org.apache.avro.generic.GenericRecord;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1114o5.AbstractC19057m;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.C20458b;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p430q.AbstractC8571b;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import s1.f0.r;
import s1.k;
import s1.u.i;
import s1.z.b.l;
import s1.z.c.m;
import u3.d0;
import u3.e0;
import u3.g0;
import u3.k0;
import u3.p0.g.e;
/* renamed from: e.a.a.k.a.k */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/k.class */
public final class C6579k implements AbstractC6563h {

    /* renamed from: a */
    public final ContentResolver f21686a;

    /* renamed from: b */
    public final AbstractC19057m f21687b;

    /* renamed from: c */
    public final e0 f21688c;

    /* renamed from: d */
    public final AbstractC19462a f21689d;

    /* renamed from: e */
    public final AbstractC6625s1 f21690e;

    /* renamed from: f */
    public final C6544e2 f21691f;

    /* renamed from: g */
    public final AbstractC8571b f21692g;

    /* renamed from: e.a.a.k.a.k$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/k$a.class */
    public static final class C6580a extends m implements l<Bitmap, k<? extends Uri, ? extends Long>> {

        /* renamed from: c */
        public final /* synthetic */ long f21694c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6580a(long j) {
            super(1);
            C6579k.this = r5;
            this.f21694c = j;
        }

        /* renamed from: d */
        public Object m30741d(Object obj) {
            Bitmap bitmap = (Bitmap) obj;
            s1.z.c.l.e(bitmap, "image");
            return C18334g0.m15256L0(C6579k.this.f21692g, this.f21694c, ContentFormat.IMAGE_JPEG, false, 0, new C6574j(bitmap), 8, null);
        }
    }

    @Inject
    public C6579k(ContentResolver contentResolver, AbstractC19057m abstractC19057m, @Named("ImClient") e0 e0Var, AbstractC19462a abstractC19462a, AbstractC6625s1 abstractC6625s1, C6544e2 c6544e2, AbstractC8571b abstractC8571b) {
        s1.z.c.l.e(contentResolver, "contentResolver");
        s1.z.c.l.e(abstractC19057m, "bitmapConverter");
        s1.z.c.l.e(e0Var, "httpClient");
        s1.z.c.l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        s1.z.c.l.e(abstractC6625s1, "stubManager");
        s1.z.c.l.e(c6544e2, "uploadMediaErrorParser");
        s1.z.c.l.e(abstractC8571b, "attachmentStoreHelper");
        this.f21686a = contentResolver;
        this.f21687b = abstractC19057m;
        this.f21688c = e0Var;
        this.f21689d = abstractC19462a;
        this.f21690e = abstractC6625s1;
        this.f21691f = c6544e2;
        this.f21692g = abstractC8571b;
    }

    /* renamed from: a */
    public void m30746a(InputMessageContent.C3271b c3271b, BinaryEntity binaryEntity) {
        s1.z.c.l.e(c3271b, "builder");
        s1.z.c.l.e(binaryEntity, "entity");
        GifEntity gifEntity = (GifEntity) binaryEntity;
        String str = gifEntity.f13309A;
        byte[] mo14174d = this.f21687b.mo14174d(binaryEntity.f13173i);
        InputMessageContent.AnimationVariant.C3252a newBuilder = InputMessageContent.AnimationVariant.newBuilder();
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setUri(str);
        int i = gifEntity.f13347v;
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setWidth(i);
        int i2 = gifEntity.f13348w;
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setHeight(i2);
        int i3 = (int) gifEntity.f13175k;
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setSize(i3);
        InputMessageContent.Animation.C3251a newBuilder2 = InputMessageContent.Animation.newBuilder();
        InputMessageContent.AnimationVariant build = newBuilder.build();
        newBuilder2.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder2).instance.setGifTiny(build);
        if (mo14174d != null) {
            s1.z.c.l.d(newBuilder2, "builder");
            ByteString copyFrom = ByteString.copyFrom(mo14174d);
            newBuilder2.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder2).instance.setThumbnail(copyFrom);
        }
        InputMessageContent.Animation build2 = newBuilder2.build();
        s1.z.c.l.d(build2, "builder.build()");
        c3271b.copyOnWrite();
        ((GeneratedMessageLite.Builder) c3271b).instance.setAnimation(build2);
    }

    /* renamed from: b */
    public Entity m30745b(MessageContent messageContent, int i) {
        DocumentEntity documentEntity;
        s1.z.c.l.e(messageContent, "content");
        MessageContent.AttachmentCase attachmentCase = messageContent.getAttachmentCase();
        if (attachmentCase != null) {
            switch (attachmentCase.ordinal()) {
                case 0:
                    MessageContent.Image image = messageContent.getImage();
                    s1.z.c.l.d(image, "content.image");
                    String mimeType = image.getMimeType();
                    if (mimeType == null || mimeType.hashCode() != -879267568 || !mimeType.equals(ContentFormat.IMAGE_GIF)) {
                        long hashCode = image.getThumbnail().hashCode();
                        byte[] byteArray = image.getThumbnail().toByteArray();
                        s1.z.c.l.d(byteArray, "thumbnail.toByteArray()");
                        int width = image.getWidth();
                        int height = image.getHeight();
                        String mimeType2 = image.getMimeType();
                        s1.z.c.l.d(mimeType2, "mimeType");
                        Uri m30743d = m30743d(hashCode, byteArray, width, height, mimeType2);
                        String mimeType3 = image.getMimeType();
                        s1.z.c.l.d(mimeType3, "mimeType");
                        Uri parse = Uri.parse(image.getUri());
                        s1.z.c.l.d(parse, "Uri.parse(uri)");
                        documentEntity = new ImageEntity(-1L, mimeType3, i, parse, image.getWidth(), image.getHeight(), image.getSize(), false, m30743d);
                        break;
                    } else {
                        long hashCode2 = image.getThumbnail().hashCode();
                        byte[] byteArray2 = image.getThumbnail().toByteArray();
                        s1.z.c.l.d(byteArray2, "thumbnail.toByteArray()");
                        int width2 = image.getWidth();
                        int height2 = image.getHeight();
                        String mimeType4 = image.getMimeType();
                        s1.z.c.l.d(mimeType4, "mimeType");
                        Uri m30743d2 = m30743d(hashCode2, byteArray2, width2, height2, mimeType4);
                        String mimeType5 = image.getMimeType();
                        s1.z.c.l.d(mimeType5, "mimeType");
                        String uri = image.getUri();
                        s1.z.c.l.d(uri, "uri");
                        documentEntity = new GifEntity(0L, mimeType5, i, uri, image.getWidth(), image.getHeight(), false, image.getSize(), m30743d2, "", 65);
                        break;
                    }
                case 1:
                    MessageContent.VCard vcard = messageContent.getVcard();
                    s1.z.c.l.d(vcard, "content.vcard");
                    String uri2 = vcard.getUri();
                    s1.z.c.l.d(uri2, "uri");
                    documentEntity = new VCardEntity(-1L, "text/vcard", i, uri2, false, vcard.getSize(), "", 1, Uri.EMPTY);
                    break;
                case 2:
                    MessageContent.Location location = messageContent.getLocation();
                    s1.z.c.l.d(location, "content.location");
                    Entity.C4195a c4195a = Entity.f13305h;
                    Uri uri3 = Uri.EMPTY;
                    s1.z.c.l.d(uri3, "Uri.EMPTY");
                    documentEntity = Entity.C4195a.m35041b(c4195a, 0L, "application/vnd.truecaller.location", i, uri3, 0, 0, 0, 0L, false, null, null, null, null, 0, null, location.getAddress(), location.getLatitude(), location.getLongitude(), 32753);
                    break;
                case 3:
                    MessageContent.Video video = messageContent.getVideo();
                    s1.z.c.l.d(video, "content.video");
                    long hashCode3 = video.getThumbnail().hashCode();
                    byte[] byteArray3 = video.getThumbnail().toByteArray();
                    s1.z.c.l.d(byteArray3, "thumbnail.toByteArray()");
                    int width3 = video.getWidth();
                    int height3 = video.getHeight();
                    String mimeType6 = video.getMimeType();
                    s1.z.c.l.d(mimeType6, "mimeType");
                    Uri m30743d3 = m30743d(hashCode3, byteArray3, width3, height3, mimeType6);
                    String mimeType7 = video.getMimeType();
                    s1.z.c.l.d(mimeType7, "mimeType");
                    Uri parse2 = Uri.parse(video.getUri());
                    s1.z.c.l.d(parse2, "Uri.parse(uri)");
                    documentEntity = new VideoEntity(-1L, mimeType7, i, parse2, false, video.getSize(), video.getWidth(), video.getHeight(), video.getDuration(), m30743d3);
                    break;
                case 4:
                    MessageContent.Audio audio = messageContent.getAudio();
                    s1.z.c.l.d(audio, "content.audio");
                    String mimeType8 = audio.getMimeType();
                    s1.z.c.l.d(mimeType8, "mimeType");
                    Uri parse3 = Uri.parse(audio.getUri());
                    s1.z.c.l.d(parse3, "Uri.parse(uri)");
                    documentEntity = new AudioEntity(-1L, mimeType8, i, parse3, false, audio.getSize(), audio.getDuration());
                    break;
                case 5:
                    MessageContent.Animation animation = messageContent.getAnimation();
                    s1.z.c.l.d(animation, "content.animation");
                    long hashCode4 = animation.getThumbnail().hashCode();
                    byte[] byteArray4 = animation.getThumbnail().toByteArray();
                    s1.z.c.l.d(byteArray4, "thumbnail.toByteArray()");
                    MessageContent.AnimationVariant gifTiny = animation.getGifTiny();
                    s1.z.c.l.d(gifTiny, "gifTiny");
                    int width4 = gifTiny.getWidth();
                    MessageContent.AnimationVariant gifTiny2 = animation.getGifTiny();
                    s1.z.c.l.d(gifTiny2, "gifTiny");
                    Uri m30743d4 = m30743d(hashCode4, byteArray4, width4, gifTiny2.getHeight(), "tenor/gif");
                    MessageContent.AnimationVariant gifTiny3 = animation.getGifTiny();
                    s1.z.c.l.d(gifTiny3, "gifTiny");
                    String uri4 = gifTiny3.getUri();
                    s1.z.c.l.d(uri4, "gifTiny.uri");
                    MessageContent.AnimationVariant gifTiny4 = animation.getGifTiny();
                    s1.z.c.l.d(gifTiny4, "gifTiny");
                    int width5 = gifTiny4.getWidth();
                    MessageContent.AnimationVariant gifTiny5 = animation.getGifTiny();
                    s1.z.c.l.d(gifTiny5, "gifTiny");
                    int height4 = gifTiny5.getHeight();
                    MessageContent.AnimationVariant gifTiny6 = animation.getGifTiny();
                    s1.z.c.l.d(gifTiny6, "gifTiny");
                    long size = gifTiny6.getSize();
                    MessageContent.AnimationVariant gifTiny7 = animation.getGifTiny();
                    s1.z.c.l.d(gifTiny7, "gifTiny");
                    String uri5 = gifTiny7.getUri();
                    s1.z.c.l.d(uri5, "gifTiny.uri");
                    documentEntity = new GifEntity(0L, "tenor/gif", i, uri4, width5, height4, false, size, m30743d4, uri5, 65);
                    break;
                case 6:
                    MessageContent.File file = messageContent.getFile();
                    s1.z.c.l.d(file, "content.file");
                    String mimeType9 = file.getMimeType();
                    s1.z.c.l.d(mimeType9, "mimeType");
                    s1.z.c.l.e(mimeType9, "contentType");
                    String str = mimeType9;
                    if (r.n("text/plain", mimeType9, true)) {
                        str = "text/vnd.plain-file";
                    }
                    Uri parse4 = Uri.parse(file.getUri());
                    s1.z.c.l.d(parse4, "Uri.parse(uri)");
                    long size2 = file.getSize();
                    String fileName = file.getFileName();
                    s1.z.c.l.d(fileName, "fileName");
                    documentEntity = new DocumentEntity(-1L, str, i, parse4, false, size2, fileName);
                    break;
                case 7:
                    documentEntity = null;
                    break;
            }
            return documentEntity;
        }
        StringBuilder m8728C = C22128a.m8728C("Found unsupported attachment ");
        m8728C.append(messageContent.getAttachmentCase());
        m8728C.toString();
        documentEntity = null;
        return documentEntity;
    }

    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* renamed from: c */
    public final void m30744c(Entity entity, String str, long j, String str2) {
        BinaryEntity binaryEntity = (BinaryEntity) entity;
        char c = binaryEntity != null ? binaryEntity.f13175k : (char) 65535;
        float seconds = (c / 1024) / ((float) TimeUnit.MILLISECONDS.toSeconds(j));
        LinkedHashMap m8655X = C22128a.m8655X("ImAttachmentUpload", "type");
        LinkedHashMap m8649Z = C22128a.m8649Z("type", AnalyticsConstants.NAME, str, "value", m8655X, "type", str, UpdateKey.STATUS, AnalyticsConstants.NAME, str2, "value", UpdateKey.STATUS, str2);
        s1.z.c.l.e("sizeAbsolute", AnalyticsConstants.NAME);
        m8649Z.put("sizeAbsolute", Double.valueOf(c));
        String m26032P2 = C10480a.m26032P2(c);
        s1.z.c.l.e("sizeBatch", AnalyticsConstants.NAME);
        s1.z.c.l.e(m26032P2, "value");
        m8655X.put("sizeBatch", m26032P2);
        m8649Z.put("value", Double.valueOf(seconds));
        String m26028Q2 = C10480a.m26028Q2(j);
        s1.z.c.l.e("timeBatch", AnalyticsConstants.NAME);
        s1.z.c.l.e(m26028Q2, "value");
        m8655X.put("timeBatch", m26028Q2);
        C17697p3.C17699b m15852a = C17697p3.m15852a();
        m15852a.m15850b("ImAttachmentUpload");
        m15852a.m15849c(m8649Z);
        m15852a.m15848d(m8655X);
        GenericRecord build = m15852a.build();
        s1.z.c.l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
        this.f21689d.mo13275a(build);
    }

    /* renamed from: d */
    public Uri m30743d(long j, byte[] bArr, int i, int i2, String str) {
        s1.z.c.l.e(bArr, "thumbnail");
        s1.z.c.l.e(str, "type");
        Bitmap mo14175c = this.f21687b.mo14175c(bArr, i, i2);
        if (mo14175c != null) {
            return (Uri) ((k) C12864a2.m22548j0(mo14175c, new C6580a(j))).a;
        }
        AssertionUtil.reportWeirdnessButNeverCrash("Can't unpack thumbnail");
        Uri uri = Uri.EMPTY;
        s1.z.c.l.d(uri, "Uri.EMPTY");
        return uri;
    }

    /* renamed from: e */
    public void m30742e(InputMessageContent.C3271b c3271b, BinaryEntity binaryEntity, Message message) {
        C20458b.C20459a mo20911c;
        Throwable th;
        s1.z.c.l.e(c3271b, "builder");
        s1.z.c.l.e(binaryEntity, "entity");
        s1.z.c.l.e(message, "message");
        if (!(binaryEntity.mo34895l() || binaryEntity.mo34892w() || binaryEntity.mo34893t() || binaryEntity.mo34896e() || binaryEntity.mo34999h() || binaryEntity.f13184t)) {
            return;
        }
        String str = binaryEntity.f13307b;
        s1.z.c.l.e(str, "contentType");
        if (r.n("text/vnd.plain-file", str, true)) {
            str = "text/plain";
        }
        mo20911c = this.f21690e.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
        C20458b.C20459a c20459a = mo20911c;
        if (c20459a == null) {
            return;
        }
        MediaHandles.Request.C3079a newBuilder = MediaHandles.Request.newBuilder();
        long j = binaryEntity.f13175k;
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setContentLength(j);
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setMimeType(str);
        MediaHandles.Request.UploadType uploadType = MediaHandles.Request.UploadType.MEDIA;
        newBuilder.copyOnWrite();
        ((GeneratedMessageLite.Builder) newBuilder).instance.setUploadType(uploadType);
        MediaHandles.Response m11115j = c20459a.m11115j((MediaHandles.Request) newBuilder.build());
        s1.z.c.l.d(m11115j, "stub.getMediaHandles(request)");
        Map<String, String> formFieldsMap = m11115j.getFormFieldsMap();
        s1.z.c.l.d(formFieldsMap, "result.formFieldsMap");
        String uploadUrl = m11115j.getUploadUrl();
        s1.z.c.l.d(uploadUrl, "result.uploadUrl");
        d0.a aVar = new d0.a((String) null, 1);
        aVar.e(d0.h);
        for (Map.Entry<String, String> entry : formFieldsMap.entrySet()) {
            aVar.a(entry.getKey(), entry.getValue());
        }
        List<String> pathSegments = binaryEntity.f13173i.getPathSegments();
        s1.z.c.l.d(pathSegments, "entity.content.pathSegments");
        aVar.b("file", (String) i.Q(pathSegments), new C6527d(this.f21686a, binaryEntity, str));
        d0 d = aVar.d();
        g0.a aVar2 = new g0.a();
        aVar2.i(uploadUrl);
        aVar2.h(Object.class, Long.valueOf(binaryEntity.f13306a));
        aVar2.f(d);
        g0 b = aVar2.b();
        long currentTimeMillis = System.currentTimeMillis();
        e a = this.f21688c.a(b);
        try {
            k0 execute = a.execute();
            try {
                if (!execute.j()) {
                    try {
                        m30744c(binaryEntity, str, System.currentTimeMillis() - currentTimeMillis, "Failed");
                        throw new C6526c2(this.f21691f.m30792a(execute));
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                C25225a.m4016G(execute, null);
                m30744c(binaryEntity, str, System.currentTimeMillis() - currentTimeMillis, "Success");
                if (binaryEntity.mo34895l()) {
                    ImageEntity imageEntity = (ImageEntity) binaryEntity;
                    String downloadUrl = m11115j.getDownloadUrl();
                    s1.z.c.l.d(downloadUrl, "result.downloadUrl");
                    byte[] mo14174d = this.f21687b.mo14174d(binaryEntity.f13173i);
                    InputMessageContent.Image.C3260a newBuilder2 = InputMessageContent.Image.newBuilder();
                    newBuilder2.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder2).instance.setUri(downloadUrl);
                    String str2 = imageEntity.f13307b;
                    newBuilder2.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder2).instance.setMimeType(str2);
                    int i = imageEntity.f13347v;
                    newBuilder2.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder2).instance.setWidth(i);
                    int i2 = imageEntity.f13348w;
                    newBuilder2.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder2).instance.setHeight(i2);
                    int i3 = (int) imageEntity.f13175k;
                    newBuilder2.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder2).instance.setSize(i3);
                    if (mo14174d != null) {
                        s1.z.c.l.d(newBuilder2, "builder");
                        ByteString copyFrom = ByteString.copyFrom(mo14174d);
                        newBuilder2.copyOnWrite();
                        ((GeneratedMessageLite.Builder) newBuilder2).instance.setThumbnail(copyFrom);
                    }
                    InputMessageContent.Image build = newBuilder2.build();
                    s1.z.c.l.d(build, "builder.build()");
                    c3271b.copyOnWrite();
                    ((GeneratedMessageLite.Builder) c3271b).instance.setImage(build);
                } else if (binaryEntity.mo34892w()) {
                    VideoEntity videoEntity = (VideoEntity) binaryEntity;
                    String downloadUrl2 = m11115j.getDownloadUrl();
                    s1.z.c.l.d(downloadUrl2, "result.downloadUrl");
                    Uri mo14171g = this.f21687b.mo14171g(binaryEntity.f13173i, 1280);
                    byte[] bArr = null;
                    if (mo14171g != null) {
                        try {
                            byte[] mo14174d2 = this.f21687b.mo14174d(mo14171g);
                            bArr = mo14174d2;
                            if (!s1.z.c.l.a(mo14171g, Uri.EMPTY)) {
                                C19286f.m13693K(this.f21686a, mo14171g);
                                bArr = mo14174d2;
                            }
                        } catch (Throwable th3) {
                            if (!s1.z.c.l.a(mo14171g, Uri.EMPTY)) {
                                C19286f.m13693K(this.f21686a, mo14171g);
                            }
                            throw th3;
                        }
                    }
                    InputMessageContent.Video.C3269a newBuilder3 = InputMessageContent.Video.newBuilder();
                    newBuilder3.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder3).instance.setUri(downloadUrl2);
                    String str3 = videoEntity.f13307b;
                    newBuilder3.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder3).instance.setMimeType(str3);
                    int i4 = (int) videoEntity.f13175k;
                    newBuilder3.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder3).instance.setSize(i4);
                    int i5 = videoEntity.f13480v;
                    newBuilder3.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder3).instance.setWidth(i5);
                    int i6 = videoEntity.f13481w;
                    newBuilder3.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder3).instance.setHeight(i6);
                    int i7 = videoEntity.f13482x;
                    newBuilder3.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder3).instance.setDuration(i7);
                    if (bArr != null) {
                        s1.z.c.l.d(newBuilder3, "builder");
                        ByteString copyFrom2 = ByteString.copyFrom(bArr);
                        newBuilder3.copyOnWrite();
                        ((GeneratedMessageLite.Builder) newBuilder3).instance.setThumbnail(copyFrom2);
                    }
                    InputMessageContent.Video build2 = newBuilder3.build();
                    s1.z.c.l.d(build2, "builder.build()");
                    c3271b.copyOnWrite();
                    ((GeneratedMessageLite.Builder) c3271b).instance.setVideo(build2);
                } else if (binaryEntity.mo34896e()) {
                    AudioEntity audioEntity = (AudioEntity) binaryEntity;
                    String downloadUrl3 = m11115j.getDownloadUrl();
                    s1.z.c.l.d(downloadUrl3, "result.downloadUrl");
                    InputMessageContent.Audio.C3257a newBuilder4 = InputMessageContent.Audio.newBuilder();
                    newBuilder4.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder4).instance.setUri(downloadUrl3);
                    String str4 = audioEntity.f13307b;
                    newBuilder4.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder4).instance.setMimeType(str4);
                    int i8 = (int) audioEntity.f13175k;
                    newBuilder4.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder4).instance.setSize(i8);
                    int i9 = audioEntity.f13170v;
                    newBuilder4.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder4).instance.setDuration(i9);
                    InputMessageContent.Audio build3 = newBuilder4.build();
                    s1.z.c.l.d(build3, "builder.build()");
                    c3271b.copyOnWrite();
                    ((GeneratedMessageLite.Builder) c3271b).instance.setAudio(build3);
                } else if (binaryEntity.mo34893t()) {
                    String downloadUrl4 = m11115j.getDownloadUrl();
                    s1.z.c.l.d(downloadUrl4, "result.downloadUrl");
                    InputMessageContent.VCard.C3268a newBuilder5 = InputMessageContent.VCard.newBuilder();
                    newBuilder5.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder5).instance.setUri(downloadUrl4);
                    int i10 = (int) binaryEntity.f13175k;
                    newBuilder5.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder5).instance.setSize(i10);
                    InputMessageContent.VCard build4 = newBuilder5.build();
                    s1.z.c.l.d(build4, "InputMessageContent.VCar…t())\n            .build()");
                    c3271b.copyOnWrite();
                    ((GeneratedMessageLite.Builder) c3271b).instance.setVcard(build4);
                } else if (!binaryEntity.f13184t) {
                    StringBuilder m8728C = C22128a.m8728C("Trying to add unsupported entity ");
                    m8728C.append(binaryEntity.f13307b);
                    AssertionUtil.OnlyInDebug.fail(m8728C.toString());
                } else {
                    DocumentEntity documentEntity = (DocumentEntity) binaryEntity;
                    String downloadUrl5 = m11115j.getDownloadUrl();
                    s1.z.c.l.d(downloadUrl5, "result.downloadUrl");
                    String str5 = documentEntity.f13307b;
                    s1.z.c.l.e(str5, "contentType");
                    if (r.n("text/vnd.plain-file", str5, true)) {
                        str5 = "text/plain";
                    }
                    InputMessageContent.File.C3258a newBuilder6 = InputMessageContent.File.newBuilder();
                    newBuilder6.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder6).instance.setUri(downloadUrl5);
                    newBuilder6.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder6).instance.setMimeType(str5);
                    int i11 = (int) documentEntity.f13175k;
                    newBuilder6.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder6).instance.setSize(i11);
                    String str6 = documentEntity.f13263v;
                    newBuilder6.copyOnWrite();
                    ((GeneratedMessageLite.Builder) newBuilder6).instance.setFileName(str6);
                    InputMessageContent.File build5 = newBuilder6.build();
                    s1.z.c.l.d(build5, "InputMessageContent.File…ame)\n            .build()");
                    c3271b.copyOnWrite();
                    ((GeneratedMessageLite.Builder) c3271b).instance.setFile(build5);
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (IOException e) {
            if (!a.m) {
                throw new C6526c2(1);
            }
            throw new CancellationException();
        }
    }
}
