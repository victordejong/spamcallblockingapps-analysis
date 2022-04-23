package com.mopub.mobileads;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.google.gson.annotations.b;
import com.google.gson.f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.common.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.a;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0016\u0018�� \u00192\u00020\u0001:\u0003\u0018\u0019\u001aB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0013\u0010\u0010\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0006\u0010\u0015\u001a\u00020\u0016J\b\u0010\u0017\u001a\u00020\u0003H\u0016R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u000bR\u001e\u0010\r\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u0007@BX\u0086\u000e¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/mopub/mobileads/VastTracker;", "Ljava/io/Serializable;", Constants.VAST_TRACKER_CONTENT, "", "messageType", "Lcom/mopub/mobileads/VastTracker$MessageType;", "isRepeatable", "", "(Ljava/lang/String;Lcom/mopub/mobileads/VastTracker$MessageType;Z)V", "getContent", "()Ljava/lang/String;", "()Z", "<set-?>", "isTracked", "getMessageType", "()Lcom/mopub/mobileads/VastTracker$MessageType;", "equals", "other", "", "hashCode", "", "setTracked", "", "toString", "Builder", "Companion", "MessageType", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastTracker.class */
public class VastTracker implements Serializable {
    public static final Companion Companion = new Companion(null);

    /* renamed from: a  reason: collision with root package name */
    private boolean f34283a;
    @b(a = Constants.VAST_TRACKER_CONTENT)

    /* renamed from: b  reason: collision with root package name */
    private String f34284b;
    @b(a = Constants.VAST_TRACKER_MESSAGE_TYPE)

    /* renamed from: c  reason: collision with root package name */
    private MessageType f34285c;
    @b(a = Constants.VAST_TRACKER_REPEATABLE)

    /* renamed from: d  reason: collision with root package name */
    private boolean f34286d;

    @Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\nJ\t\u0010\u000b\u001a\u00020\u0003HÂ\u0003J\u0013\u0010\f\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\u000e\u0010\u0005\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020��2\u0006\u0010\u0007\u001a\u00020\bJ\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0012"}, d2 = {"Lcom/mopub/mobileads/VastTracker$Builder;", "", Constants.VAST_TRACKER_CONTENT, "", "(Ljava/lang/String;)V", "isRepeatable", "", "messageType", "Lcom/mopub/mobileads/VastTracker$MessageType;", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/mopub/mobileads/VastTracker;", "component1", "copy", "equals", "other", "hashCode", "", "toString", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastTracker$Builder.class */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private MessageType f34287a = MessageType.TRACKING_URL;

        /* renamed from: b  reason: collision with root package name */
        private boolean f34288b;

        /* renamed from: c  reason: collision with root package name */
        private final String f34289c;

        public Builder(String content) {
            p.c(content, "content");
            this.f34289c = content;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                str = builder.f34289c;
            }
            return builder.copy(str);
        }

        public final VastTracker build() {
            return new VastTracker(this.f34289c, this.f34287a, this.f34288b);
        }

        public final Builder copy(String content) {
            p.c(content, "content");
            return new Builder(content);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof Builder) && p.a((Object) this.f34289c, (Object) ((Builder) obj).f34289c);
            }
            return true;
        }

        public final int hashCode() {
            String str = this.f34289c;
            if (str != null) {
                return str.hashCode();
            }
            return 0;
        }

        public final Builder isRepeatable(boolean z) {
            Builder builder = this;
            builder.f34288b = z;
            return builder;
        }

        public final Builder messageType(MessageType messageType) {
            p.c(messageType, "messageType");
            Builder builder = this;
            builder.f34287a = messageType;
            return builder;
        }

        public final String toString() {
            return "Builder(content=" + this.f34289c + ")";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lcom/mopub/mobileads/VastTracker$Companion;", "", "()V", "serialVersionUID", "", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastTracker$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final /* synthetic */ void fromJson$26(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                _optimizedjsonreader.b(jsonReader);
                jsonReader.skipValue();
            }
            jsonReader.endObject();
        }

        public final /* synthetic */ void toJson$26(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
            jsonWriter.beginObject();
            jsonWriter.endObject();
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/mopub/mobileads/VastTracker$MessageType;", "", "(Ljava/lang/String;I)V", "TRACKING_URL", "QUARTILE_EVENT", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastTracker$MessageType.class */
    public enum MessageType {
        TRACKING_URL,
        QUARTILE_EVENT
    }

    public /* synthetic */ VastTracker() {
    }

    public VastTracker(String content, MessageType messageType, boolean z) {
        p.c(content, "content");
        p.c(messageType, "messageType");
        this.f34284b = content;
        this.f34285c = messageType;
        this.f34286d = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ void a(f fVar, JsonReader jsonReader, int i) {
        do {
            boolean z = jsonReader.peek() != JsonToken.NULL;
            if (i != 19) {
                if (i != 20) {
                    if (i != 45) {
                        if (i == 79) {
                            if (!z) {
                                this.f34284b = null;
                                jsonReader.nextNull();
                                return;
                            } else if (jsonReader.peek() != JsonToken.BOOLEAN) {
                                this.f34284b = jsonReader.nextString();
                                return;
                            } else {
                                this.f34284b = Boolean.toString(jsonReader.nextBoolean());
                                return;
                            }
                        }
                    } else if (z) {
                        this.f34283a = ((Boolean) fVar.a(Boolean.class).read(jsonReader)).booleanValue();
                        return;
                    } else {
                        jsonReader.nextNull();
                        return;
                    }
                } else if (z) {
                    this.f34285c = (MessageType) fVar.a(MessageType.class).read(jsonReader);
                    return;
                } else {
                    this.f34285c = null;
                    jsonReader.nextNull();
                    return;
                }
            } else if (z) {
                this.f34286d = ((Boolean) fVar.a(Boolean.class).read(jsonReader)).booleanValue();
                return;
            } else {
                jsonReader.nextNull();
                return;
            }
        } while (i == 80);
        jsonReader.skipValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final /* synthetic */ void a(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        _optimizedjsonwriter.b(jsonWriter, 45);
        jsonWriter.value(this.f34283a);
        if (this != this.f34284b) {
            _optimizedjsonwriter.b(jsonWriter, 79);
            jsonWriter.value(this.f34284b);
        }
        if (this != this.f34285c) {
            _optimizedjsonwriter.b(jsonWriter, 20);
            MessageType messageType = this.f34285c;
            a.a(fVar, MessageType.class, messageType).write(jsonWriter, messageType);
        }
        _optimizedjsonwriter.b(jsonWriter, 19);
        jsonWriter.value(this.f34286d);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VastTracker)) {
            return false;
        }
        VastTracker vastTracker = (VastTracker) obj;
        return !(p.a((Object) this.f34284b, (Object) vastTracker.f34284b) ^ true) && this.f34285c == vastTracker.f34285c && this.f34286d == vastTracker.f34286d && this.f34283a == vastTracker.f34283a;
    }

    public /* synthetic */ void fromJson$29(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            a(fVar, jsonReader, _optimizedjsonreader.b(jsonReader));
        }
        jsonReader.endObject();
    }

    public final String getContent() {
        return this.f34284b;
    }

    public final MessageType getMessageType() {
        return this.f34285c;
    }

    public int hashCode() {
        return (((((this.f34284b.hashCode() * 31) + this.f34285c.hashCode()) * 31) + C$r8$backportedMethods$utility$Boolean$1$hashCode.hashCode(this.f34286d)) * 31) + C$r8$backportedMethods$utility$Boolean$1$hashCode.hashCode(this.f34283a);
    }

    public final boolean isRepeatable() {
        return this.f34286d;
    }

    public final boolean isTracked() {
        return this.f34283a;
    }

    public final void setTracked() {
        this.f34283a = true;
    }

    public /* synthetic */ void toJson$29(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        a(fVar, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    public String toString() {
        return "VastTracker(content='" + this.f34284b + "', messageType=" + this.f34285c + ", isRepeatable=" + this.f34286d + ", isTracked=" + this.f34283a + ')';
    }
}
