package p193e.p194a.p195a.p244k.p245a;

import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageLite;
import com.razorpay.AnalyticsConstants;
import com.truecaller.api.services.messenger.p138v1.AddParticipants;
import com.truecaller.api.services.messenger.p138v1.CreateGroup;
import com.truecaller.api.services.messenger.p138v1.GetChangelog;
import com.truecaller.api.services.messenger.p138v1.GetContexts;
import com.truecaller.api.services.messenger.p138v1.GetNotificationSettings;
import com.truecaller.api.services.messenger.p138v1.GetParticipants;
import com.truecaller.api.services.messenger.p138v1.GetPermissions;
import com.truecaller.api.services.messenger.p138v1.GetUsers;
import com.truecaller.api.services.messenger.p138v1.MediaHandles;
import com.truecaller.api.services.messenger.p138v1.RegisterUser;
import com.truecaller.api.services.messenger.p138v1.RemoveParticipants;
import com.truecaller.api.services.messenger.p138v1.SendMessage;
import com.truecaller.api.services.messenger.p138v1.SendReaction;
import com.truecaller.api.services.messenger.p138v1.SendReport;
import com.truecaller.api.services.messenger.p138v1.SendUserTyping;
import com.truecaller.api.services.messenger.p138v1.UpdateContextSettings;
import com.truecaller.api.services.messenger.p138v1.UpdateGroupInfo;
import com.truecaller.api.services.messenger.p138v1.UpdateNotificationSettings;
import com.truecaller.api.services.messenger.p138v1.UpdateRoles;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import com.truecaller.api.services.messenger.p138v1.models.input.InputMessageContent;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1075n3.p1076a.C18479b;
import p3.a.c;
import p3.a.d;
import p3.a.f;
import p3.a.g;
import p3.a.o0;
import p3.a.p0;
import p3.a.w;
import p3.a.x;
import s1.f0.v;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.r1 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/r1.class */
public final class C6615r1 implements g {

    /* renamed from: e.a.a.k.a.r1$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/r1$a.class */
    public static final class C6616a extends w.a<ReqT, RespT> {

        /* renamed from: b */
        public final /* synthetic */ String f21853b;

        /* renamed from: e.a.a.k.a.r1$a$a */
        /* loaded from: classes11-dex2jar.jar:e/a/a/k/a/r1$a$a.class */
        public static final class C6617a extends x<RespT> {

            /* renamed from: b */
            public final /* synthetic */ f.a f21855b;

            public C6617a(f.a aVar) {
                C6616a.this = r4;
                this.f21855b = aVar;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* renamed from: c */
            public void m30644c(RespT respt) {
                GeneratedMessageLite generatedMessageLite;
                C6612q1 c6612q1 = C6612q1.f21849c;
                if (respt instanceof Event) {
                    generatedMessageLite = C6612q1.m30648d((Event) respt);
                } else if (respt instanceof MediaHandles.Response) {
                    MediaHandles.Response response = (MediaHandles.Response) respt;
                    MediaHandles.Response.C3080a builder = response.toBuilder();
                    String m30649c = C6612q1.m30649c(response.getUploadUrl());
                    builder.copyOnWrite();
                    ((GeneratedMessageLite.Builder) builder).instance.setUploadUrl(m30649c);
                    String m30649c2 = C6612q1.m30649c(response.getDownloadUrl());
                    builder.copyOnWrite();
                    ((GeneratedMessageLite.Builder) builder).instance.setDownloadUrl(m30649c2);
                    generatedMessageLite = builder.build();
                } else {
                    generatedMessageLite = (!(respt instanceof AddParticipants.Response) && !(respt instanceof CreateGroup.Response) && !(respt instanceof GetChangelog.Response) && !(respt instanceof GetContexts.Response) && !(respt instanceof GetNotificationSettings.Response) && !(respt instanceof GetUsers.Response) && !(respt instanceof GetParticipants.Response) && !(respt instanceof GetPermissions.Response) && !(respt instanceof RegisterUser.Response) && !(respt instanceof RemoveParticipants.Response) && !(respt instanceof SendMessage.Response) && !(respt instanceof SendReaction.Response) && !(respt instanceof SendReport.Response) && !(respt instanceof SendUserTyping.Response) && !(respt instanceof UpdateGroupInfo.Response) && !(respt instanceof UpdateNotificationSettings.Response) && !(respt instanceof UpdateRoles.Response) && !(respt instanceof UpdateContextSettings.Response)) ? null : respt;
                }
                C18479b.m14875a(C22128a.m8622g(C22128a.m8728C("IM <-- "), C6616a.this.f21853b, ' ', generatedMessageLite != null ? C6612q1.m30651a(generatedMessageLite.toString()) : "<masked>"));
                m30643e().c(respt);
            }

            /* renamed from: e */
            public f.a<RespT> m30643e() {
                return this.f21855b;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6616a(String str, d dVar, p0 p0Var, c cVar, f fVar) {
            super(fVar);
            this.f21853b = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: d */
        public void m30646d(ReqT reqt) {
            GeneratedMessageLite generatedMessageLite;
            C6612q1 c6612q1 = C6612q1.f21849c;
            if (reqt instanceof SendMessage.Request) {
                SendMessage.Request request = (SendMessage.Request) reqt;
                SendMessage.Request.C3100a builder = request.toBuilder();
                InputMessageContent content = request.getContent();
                l.d(content, "request.content");
                InputMessageContent.C3271b builder2 = content.toBuilder();
                builder2.m35901f(C6612q1.m30649c(content.getText()));
                InputMessageContent.AttachmentCase attachmentCase = content.getAttachmentCase();
                if (attachmentCase != null) {
                    int ordinal = attachmentCase.ordinal();
                    if (ordinal == 0) {
                        InputMessageContent.Image.C3260a builder3 = content.getImage().toBuilder();
                        InputMessageContent.Image image = content.getImage();
                        l.d(image, "content.image");
                        String m30649c = C6612q1.m30649c(image.getUri());
                        builder3.copyOnWrite();
                        ((GeneratedMessageLite.Builder) builder3).instance.setUri(m30649c);
                        InputMessageContent.Image image2 = content.getImage();
                        l.d(image2, "content.image");
                        ByteString m30650b = C6612q1.m30650b(image2.getThumbnail());
                        builder3.copyOnWrite();
                        ((GeneratedMessageLite.Builder) builder3).instance.setThumbnail(m30650b);
                        builder2.copyOnWrite();
                        ((GeneratedMessageLite.Builder) builder2).instance.setImage(builder3.build());
                    } else if (ordinal == 3) {
                        InputMessageContent.Video.C3269a builder4 = content.getVideo().toBuilder();
                        InputMessageContent.Video video = content.getVideo();
                        l.d(video, "content.video");
                        String m30649c2 = C6612q1.m30649c(video.getUri());
                        builder4.copyOnWrite();
                        ((GeneratedMessageLite.Builder) builder4).instance.setUri(m30649c2);
                        InputMessageContent.Video video2 = content.getVideo();
                        l.d(video2, "content.video");
                        ByteString m30650b2 = C6612q1.m30650b(video2.getThumbnail());
                        builder4.copyOnWrite();
                        ((GeneratedMessageLite.Builder) builder4).instance.setThumbnail(m30650b2);
                        builder2.copyOnWrite();
                        ((GeneratedMessageLite.Builder) builder2).instance.setVideo(builder4.build());
                    } else if (ordinal == 4) {
                        InputMessageContent.Audio.C3257a builder5 = content.getAudio().toBuilder();
                        InputMessageContent.Audio audio = content.getAudio();
                        l.d(audio, "content.audio");
                        String m30649c3 = C6612q1.m30649c(audio.getUri());
                        builder5.copyOnWrite();
                        ((GeneratedMessageLite.Builder) builder5).instance.setUri(m30649c3);
                        builder2.copyOnWrite();
                        ((GeneratedMessageLite.Builder) builder2).instance.setAudio(builder5.build());
                    }
                }
                InputMessageContent build = builder2.build();
                l.d(build, "masked.build()");
                builder.copyOnWrite();
                ((GeneratedMessageLite.Builder) builder).instance.setContent(build);
                generatedMessageLite = builder.build();
            } else {
                generatedMessageLite = (!(reqt instanceof Event.Ack) && !(reqt instanceof AddParticipants.Request) && !(reqt instanceof CreateGroup.Request) && !(reqt instanceof MediaHandles.Request) && !(reqt instanceof GetChangelog.Request) && !(reqt instanceof GetContexts.Request) && !(reqt instanceof GetNotificationSettings.Request) && !(reqt instanceof GetUsers.Request) && !(reqt instanceof GetParticipants.Request) && !(reqt instanceof GetPermissions.Request) && !(reqt instanceof RegisterUser.Request) && !(reqt instanceof RemoveParticipants.Request) && !(reqt instanceof SendReaction.Request) && !(reqt instanceof SendReport.Request) && !(reqt instanceof SendUserTyping.Request) && !(reqt instanceof UpdateGroupInfo.Request) && !(reqt instanceof UpdateNotificationSettings.Request) && !(reqt instanceof UpdateRoles.Request) && !(reqt instanceof UpdateContextSettings.Request)) ? null : reqt;
            }
            C18479b.m14875a(C22128a.m8622g(C22128a.m8728C("IM --> "), this.f21853b, ' ', generatedMessageLite != null ? C6612q1.m30651a(generatedMessageLite.toString()) : "<masked>"));
            f().d(reqt);
        }

        /* renamed from: e */
        public void m30645e(f.a<RespT> aVar, o0 o0Var) {
            f().e(new C6617a(aVar), o0Var);
        }
    }

    /* renamed from: a */
    public <ReqT, RespT> f<ReqT, RespT> m30647a(p0<ReqT, RespT> p0Var, c cVar, d dVar) {
        l.e(p0Var, AnalyticsConstants.METHOD);
        l.e(dVar, "next");
        String str = p0Var.b;
        l.d(str, "method.fullMethodName");
        return new C6616a(v.Z(str, '/', (String) null, 2), dVar, p0Var, cVar, dVar.h(p0Var, cVar));
    }
}
