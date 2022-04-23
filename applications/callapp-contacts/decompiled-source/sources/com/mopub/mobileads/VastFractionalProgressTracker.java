package com.mopub.mobileads;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.google.gson.annotations.b;
import com.google.gson.f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastTracker;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
import proguard.optimize.gson.a;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0010\u0007\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\u0018�� \u00132\u00020\u00012\b\u0012\u0004\u0012\u00020��0\u0002:\u0002\u0012\u0013B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u0011\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020��H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0006H\u0016R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\r¨\u0006\u0014"}, d2 = {"Lcom/mopub/mobileads/VastFractionalProgressTracker;", "Lcom/mopub/mobileads/VastTracker;", "", "trackingFraction", "", Constants.VAST_TRACKER_CONTENT, "", "messageType", "Lcom/mopub/mobileads/VastTracker$MessageType;", "isRepeatable", "", "(FLjava/lang/String;Lcom/mopub/mobileads/VastTracker$MessageType;Z)V", "getTrackingFraction", "()F", "compareTo", "", "other", "toString", "Builder", "Companion", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastFractionalProgressTracker.class */
public final class VastFractionalProgressTracker extends VastTracker implements Comparable<VastFractionalProgressTracker> {
    public static final Companion Companion = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f34256b = Pattern.compile("((\\d{1,2})|(100))%");
    @b(a = Constants.VAST_TRACKER_TRACKING_FRACTION)

    /* renamed from: a  reason: collision with root package name */
    private float f34257a;

    @Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u000b\u001a\u00020\fJ\t\u0010\r\u001a\u00020\u0003HÂ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÂ\u0003J\u001d\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\u000e\u0010\u0007\u001a\u00020��2\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020��2\u0006\u0010\t\u001a\u00020\nJ\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0015"}, d2 = {"Lcom/mopub/mobileads/VastFractionalProgressTracker$Builder;", "", Constants.VAST_TRACKER_CONTENT, "", "trackingFraction", "", "(Ljava/lang/String;F)V", "isRepeatable", "", "messageType", "Lcom/mopub/mobileads/VastTracker$MessageType;", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/mopub/mobileads/VastFractionalProgressTracker;", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastFractionalProgressTracker$Builder.class */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private VastTracker.MessageType f34258a = VastTracker.MessageType.TRACKING_URL;

        /* renamed from: b  reason: collision with root package name */
        private boolean f34259b;

        /* renamed from: c  reason: collision with root package name */
        private final String f34260c;

        /* renamed from: d  reason: collision with root package name */
        private final float f34261d;

        public Builder(String content, float f) {
            p.c(content, "content");
            this.f34260c = content;
            this.f34261d = f;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, float f, int i, Object obj) {
            if ((i & 1) != 0) {
                str = builder.f34260c;
            }
            if ((i & 2) != 0) {
                f = builder.f34261d;
            }
            return builder.copy(str, f);
        }

        public final VastFractionalProgressTracker build() {
            return new VastFractionalProgressTracker(this.f34261d, this.f34260c, this.f34258a, this.f34259b);
        }

        public final Builder copy(String content, float f) {
            p.c(content, "content");
            return new Builder(content, f);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Builder)) {
                return false;
            }
            Builder builder = (Builder) obj;
            return p.a((Object) this.f34260c, (Object) builder.f34260c) && Float.compare(this.f34261d, builder.f34261d) == 0;
        }

        public final int hashCode() {
            String str = this.f34260c;
            return ((str != null ? str.hashCode() : 0) * 31) + Float.floatToIntBits(this.f34261d);
        }

        public final Builder isRepeatable(boolean z) {
            Builder builder = this;
            builder.f34259b = z;
            return builder;
        }

        public final Builder messageType(VastTracker.MessageType messageType) {
            p.c(messageType, "messageType");
            Builder builder = this;
            builder.f34258a = messageType;
            return builder;
        }

        public final String toString() {
            return "Builder(content=" + this.f34260c + ", trackingFraction=" + this.f34261d + ")";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u001f\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0002\u0010\u000fR\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��¨\u0006\u0010"}, d2 = {"Lcom/mopub/mobileads/VastFractionalProgressTracker$Companion;", "", "()V", "percentagePattern", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "serialVersionUID", "", "isPercentageTracker", "", "progressValue", "", "parsePercentageOffset", "", "videoDuration", "(Ljava/lang/String;I)Ljava/lang/Integer;", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastFractionalProgressTracker$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final /* synthetic */ void fromJson$14(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                _optimizedjsonreader.b(jsonReader);
                jsonReader.skipValue();
            }
            jsonReader.endObject();
        }

        public final boolean isPercentageTracker(String str) {
            String str2 = str;
            return !(str2 == null || str2.length() == 0) && VastFractionalProgressTracker.f34256b.matcher(str2).matches();
        }

        public final Integer parsePercentageOffset(String str, int i) {
            String a2;
            if (str == null || (a2 = kotlin.h.p.a(str, "%", "", false)) == null) {
                return null;
            }
            return Integer.valueOf((int) Math.rint((i * Float.parseFloat(a2)) / 100.0f));
        }

        public final /* synthetic */ void toJson$14(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
            jsonWriter.beginObject();
            jsonWriter.endObject();
        }
    }

    public /* synthetic */ VastFractionalProgressTracker() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VastFractionalProgressTracker(float f, String content, VastTracker.MessageType messageType, boolean z) {
        super(content, messageType, z);
        p.c(content, "content");
        p.c(messageType, "messageType");
        this.f34257a = f;
    }

    public final int compareTo(VastFractionalProgressTracker other) {
        p.c(other, "other");
        return Float.compare(this.f34257a, other.f34257a);
    }

    public final /* synthetic */ void fromJson$15(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            int b2 = _optimizedjsonreader.b(jsonReader);
            while (true) {
                boolean z = jsonReader.peek() != JsonToken.NULL;
                if (b2 != 55) {
                    if (b2 != 80 && b2 != 82) {
                        a(fVar, jsonReader, b2);
                        break;
                    }
                } else if (z) {
                    this.f34257a = ((Float) fVar.a(Float.class).read(jsonReader)).floatValue();
                } else {
                    jsonReader.nextNull();
                }
            }
        }
        jsonReader.endObject();
    }

    public final float getTrackingFraction() {
        return this.f34257a;
    }

    public final /* synthetic */ void toJson$15(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        _optimizedjsonwriter.b(jsonWriter, 55);
        Class cls = Float.TYPE;
        Float valueOf = Float.valueOf(this.f34257a);
        a.a(fVar, cls, valueOf).write(jsonWriter, valueOf);
        a(fVar, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    @Override // com.mopub.mobileads.VastTracker
    public final String toString() {
        return this.f34257a + ": " + getContent();
    }
}
