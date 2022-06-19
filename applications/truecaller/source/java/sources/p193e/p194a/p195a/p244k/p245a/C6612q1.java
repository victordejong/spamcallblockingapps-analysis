package p193e.p194a.p195a.p244k.p245a;

import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageLite;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import com.truecaller.api.services.messenger.p138v1.models.MessageContent;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.f0.h;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.q1 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/q1.class */
public final class C6612q1 {

    /* renamed from: a */
    public static final h f21847a = new h("\\s+");

    /* renamed from: b */
    public static final h f21848b = new h("(?:\\p{Alnum}+\\.)+([\\p{Alnum}\\$]+)@[0-9a-f]+");

    /* renamed from: c */
    public static final C6612q1 f21849c = null;

    /* renamed from: a */
    public static final String m30651a(String str) {
        l.e(str, "value");
        return f21847a.e(f21848b.e(str, "$1"), StringConstant.SPACE);
    }

    /* renamed from: b */
    public static final ByteString m30650b(ByteString byteString) {
        String str;
        if (byteString == null) {
            str = "<null>";
        } else {
            StringBuilder m8558w = C22128a.m8558w('<');
            m8558w.append(byteString.size());
            m8558w.append(" bytes>");
            str = m8558w.toString();
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8(str);
        l.d(copyFromUtf8, "ByteString.copyFromUtf8(…else \"<${size()} bytes>\")");
        return copyFromUtf8;
    }

    /* renamed from: c */
    public static final String m30649c(String str) {
        String str2;
        if (str == null) {
            str2 = "<null>";
        } else {
            StringBuilder m8558w = C22128a.m8558w('<');
            m8558w.append(str.length());
            m8558w.append(" chars>");
            str2 = m8558w.toString();
        }
        return str2;
    }

    /* renamed from: d */
    public static final Event m30648d(Event event) {
        Event event2;
        l.e(event, "event");
        Event.PayloadCase payloadCase = event.getPayloadCase();
        if (payloadCase != null) {
            int ordinal = payloadCase.ordinal();
            event2 = event;
            if (ordinal != 14) {
                event2 = event;
                switch (ordinal) {
                    case 0:
                        Event.C3157b builder = event.toBuilder();
                        Event.MessageSent.C3144a builder2 = event.getMessageSent().toBuilder();
                        Event.MessageSent messageSent = event.getMessageSent();
                        l.d(messageSent, "event.messageSent");
                        MessageContent content = messageSent.getContent();
                        l.d(content, "event.messageSent.content");
                        MessageContent.C3200b builder3 = content.toBuilder();
                        String m30649c = m30649c(content.getText());
                        builder3.copyOnWrite();
                        ((GeneratedMessageLite.Builder) builder3).instance.setText(m30649c);
                        MessageContent.AttachmentCase attachmentCase = content.getAttachmentCase();
                        if (attachmentCase != null) {
                            int ordinal2 = attachmentCase.ordinal();
                            if (ordinal2 == 0) {
                                MessageContent.Image.C3188a builder4 = content.getImage().toBuilder();
                                MessageContent.Image image = content.getImage();
                                l.d(image, "content.image");
                                String m30649c2 = m30649c(image.getUri());
                                builder4.copyOnWrite();
                                ((GeneratedMessageLite.Builder) builder4).instance.setUri(m30649c2);
                                MessageContent.Image image2 = content.getImage();
                                l.d(image2, "content.image");
                                ByteString m30650b = m30650b(image2.getThumbnail());
                                builder4.copyOnWrite();
                                ((GeneratedMessageLite.Builder) builder4).instance.setThumbnail(m30650b);
                                builder3.copyOnWrite();
                                ((GeneratedMessageLite.Builder) builder3).instance.setImage(builder4.build());
                            } else if (ordinal2 == 3) {
                                MessageContent.Video.C3198a builder5 = content.getVideo().toBuilder();
                                MessageContent.Video video = content.getVideo();
                                l.d(video, "content.video");
                                String m30649c3 = m30649c(video.getUri());
                                builder5.copyOnWrite();
                                ((GeneratedMessageLite.Builder) builder5).instance.setUri(m30649c3);
                                MessageContent.Video video2 = content.getVideo();
                                l.d(video2, "content.video");
                                ByteString m30650b2 = m30650b(video2.getThumbnail());
                                builder5.copyOnWrite();
                                ((GeneratedMessageLite.Builder) builder5).instance.setThumbnail(m30650b2);
                                builder3.copyOnWrite();
                                ((GeneratedMessageLite.Builder) builder3).instance.setVideo(builder5.build());
                            } else if (ordinal2 == 4) {
                                MessageContent.Audio.C3185a builder6 = content.getAudio().toBuilder();
                                MessageContent.Audio audio = content.getAudio();
                                l.d(audio, "content.audio");
                                String m30649c4 = m30649c(audio.getUri());
                                builder6.copyOnWrite();
                                ((GeneratedMessageLite.Builder) builder6).instance.setUri(m30649c4);
                                builder3.copyOnWrite();
                                ((GeneratedMessageLite.Builder) builder3).instance.setAudio(builder6.build());
                            }
                        }
                        MessageContent build = builder3.build();
                        l.d(build, "masked.build()");
                        builder2.copyOnWrite();
                        ((GeneratedMessageLite.Builder) builder2).instance.setContent(build);
                        builder.copyOnWrite();
                        ((GeneratedMessageLite.Builder) builder).instance.setMessageSent(builder2.build());
                        event2 = (Event) builder.build();
                        break;
                }
            }
            return event2;
        }
        event2 = null;
        return event2;
    }
}
