package com.mopub.mobileads;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.google.gson.C15965f;
import com.google.gson.annotations.AbstractC15952b;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.common.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import proguard.optimize.gson.C21025a;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0016\u0018�� \u00192\u00020\u0001:\u0003\u0018\u0019\u001aB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0013\u0010\u0010\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0006\u0010\u0015\u001a\u00020\u0016J\b\u0010\u0017\u001a\u00020\u0003H\u0016R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u000bR\u001e\u0010\r\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, m4298d2 = {"Lcom/mopub/mobileads/VastTracker;", "Ljava/io/Serializable;", Constants.VAST_TRACKER_CONTENT, "", "messageType", "Lcom/mopub/mobileads/VastTracker$MessageType;", "isRepeatable", "", "(Ljava/lang/String;Lcom/mopub/mobileads/VastTracker$MessageType;Z)V", "getContent", "()Ljava/lang/String;", "()Z", "<set-?>", "isTracked", "getMessageType", "()Lcom/mopub/mobileads/VastTracker$MessageType;", "equals", "other", "", "hashCode", "", "setTracked", "", "toString", "Builder", "Companion", "MessageType", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastTracker.class */
public class VastTracker implements Serializable {
    public static final Companion Companion = new Companion(null);

    /* renamed from: a */
    private boolean f59505a;
    @AbstractC15952b(m7988a = Constants.VAST_TRACKER_CONTENT)

    /* renamed from: b */
    private String f59506b;
    @AbstractC15952b(m7988a = Constants.VAST_TRACKER_MESSAGE_TYPE)

    /* renamed from: c */
    private MessageType f59507c;
    @AbstractC15952b(m7988a = Constants.VAST_TRACKER_REPEATABLE)

    /* renamed from: d */
    private boolean f59508d;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\nJ\t\u0010\u000b\u001a\u00020\u0003HÂ\u0003J\u0013\u0010\f\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\u000e\u0010\u0005\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020��2\u0006\u0010\u0007\u001a\u00020\bJ\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0012"}, m4298d2 = {"Lcom/mopub/mobileads/VastTracker$Builder;", "", Constants.VAST_TRACKER_CONTENT, "", "(Ljava/lang/String;)V", "isRepeatable", "", "messageType", "Lcom/mopub/mobileads/VastTracker$MessageType;", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/mopub/mobileads/VastTracker;", "component1", "copy", "equals", "other", "hashCode", "", "toString", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastTracker$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private MessageType f59509a = MessageType.TRACKING_URL;

        /* renamed from: b */
        private boolean f59510b;

        /* renamed from: c */
        private final String f59511c;

        public Builder(String content) {
            C18524p.m3841c(content, "content");
            this.f59511c = content;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = builder.f59511c;
            }
            return builder.copy(str);
        }

        public final VastTracker build() {
            return new VastTracker(this.f59511c, this.f59509a, this.f59510b);
        }

        public final Builder copy(String content) {
            C18524p.m3841c(content, "content");
            return new Builder(content);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Builder) && C18524p.m3850a((Object) this.f59511c, (Object) ((Builder) obj).f59511c);
            }
            return true;
        }

        public final int hashCode() {
            String str = this.f59511c;
            if (str != null) {
                return str.hashCode();
            }
            return 0;
        }

        public final Builder isRepeatable(boolean z) {
            Builder builder = this;
            builder.f59510b = z;
            return builder;
        }

        public final Builder messageType(MessageType messageType) {
            C18524p.m3841c(messageType, "messageType");
            Builder builder = this;
            builder.f59509a = messageType;
            return builder;
        }

        public final String toString() {
            return "Builder(content=" + this.f59511c + ")";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, m4298d2 = {"Lcom/mopub/mobileads/VastTracker$Companion;", "", "()V", "serialVersionUID", "", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastTracker$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final /* synthetic */ void fromJson$26(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                _optimizedjsonreader.mo123b(jsonReader);
                jsonReader.skipValue();
            }
            jsonReader.endObject();
        }

        public final /* synthetic */ void toJson$26(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
            jsonWriter.beginObject();
            jsonWriter.endObject();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, m4298d2 = {"Lcom/mopub/mobileads/VastTracker$MessageType;", "", "(Ljava/lang/String;I)V", "TRACKING_URL", "QUARTILE_EVENT", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastTracker$MessageType.class */
    public enum MessageType {
        TRACKING_URL,
        QUARTILE_EVENT
    }

    public /* synthetic */ VastTracker() {
    }

    public VastTracker(String content, MessageType messageType, boolean z) {
        C18524p.m3841c(content, "content");
        C18524p.m3841c(messageType, "messageType");
        this.f59506b = content;
        this.f59507c = messageType;
        this.f59508d = z;
    }

    /* renamed from: a */
    public final /* synthetic */ void m6407a(C15965f c15965f, JsonReader jsonReader, int i) {
        do {
            boolean z = jsonReader.peek() != JsonToken.NULL;
            if (i == 19) {
                if (z) {
                    this.f59508d = ((Boolean) c15965f.m7971a(Boolean.class).read(jsonReader)).booleanValue();
                    return;
                } else {
                    jsonReader.nextNull();
                    return;
                }
            } else if (i == 20) {
                if (z) {
                    this.f59507c = (MessageType) c15965f.m7971a(MessageType.class).read(jsonReader);
                    return;
                }
                this.f59507c = null;
                jsonReader.nextNull();
                return;
            } else if (i == 45) {
                if (z) {
                    this.f59505a = ((Boolean) c15965f.m7971a(Boolean.class).read(jsonReader)).booleanValue();
                    return;
                } else {
                    jsonReader.nextNull();
                    return;
                }
            } else if (i == 79) {
                if (!z) {
                    this.f59506b = null;
                    jsonReader.nextNull();
                    return;
                } else if (jsonReader.peek() != JsonToken.BOOLEAN) {
                    this.f59506b = jsonReader.nextString();
                    return;
                } else {
                    this.f59506b = Boolean.toString(jsonReader.nextBoolean());
                    return;
                }
            }
        } while (i == 80);
        jsonReader.skipValue();
    }

    /* renamed from: a */
    public final /* synthetic */ void m6406a(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        _optimizedjsonwriter.mo120b(jsonWriter, 45);
        jsonWriter.value(this.f59505a);
        if (this != this.f59506b) {
            _optimizedjsonwriter.mo120b(jsonWriter, 79);
            jsonWriter.value(this.f59506b);
        }
        if (this != this.f59507c) {
            _optimizedjsonwriter.mo120b(jsonWriter, 20);
            MessageType messageType = this.f59507c;
            C21025a.m117a(c15965f, MessageType.class, messageType).write(jsonWriter, messageType);
        }
        _optimizedjsonwriter.mo120b(jsonWriter, 19);
        jsonWriter.value(this.f59508d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VastTracker)) {
            return false;
        }
        VastTracker vastTracker = (VastTracker) obj;
        return !(C18524p.m3850a((Object) this.f59506b, (Object) vastTracker.f59506b) ^ true) && this.f59507c == vastTracker.f59507c && this.f59508d == vastTracker.f59508d && this.f59505a == vastTracker.f59505a;
    }

    public /* synthetic */ void fromJson$29(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            m6407a(c15965f, jsonReader, _optimizedjsonreader.mo123b(jsonReader));
        }
        jsonReader.endObject();
    }

    public final String getContent() {
        return this.f59506b;
    }

    public final MessageType getMessageType() {
        return this.f59507c;
    }

    public int hashCode() {
        return (((((this.f59506b.hashCode() * 31) + this.f59507c.hashCode()) * 31) + C$r8$backportedMethods$utility$Boolean$1$hashCode.hashCode(this.f59508d)) * 31) + C$r8$backportedMethods$utility$Boolean$1$hashCode.hashCode(this.f59505a);
    }

    public final boolean isRepeatable() {
        return this.f59508d;
    }

    public final boolean isTracked() {
        return this.f59505a;
    }

    public final void setTracked() {
        this.f59505a = true;
    }

    public /* synthetic */ void toJson$29(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        m6406a(c15965f, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    public String toString() {
        return "VastTracker(content='" + this.f59506b + "', messageType=" + this.f59507c + ", isRepeatable=" + this.f59508d + ", isTracked=" + this.f59505a + ')';
    }
}
