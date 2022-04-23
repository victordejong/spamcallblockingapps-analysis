package com.mopub.mobileads;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.google.gson.annotations.b;
import com.google.gson.f;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastTracker;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0016\u0018�� \u00102\u00020\u0001:\u0002\u000f\u0010B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\r¨\u0006\u0011"}, d2 = {"Lcom/mopub/mobileads/VideoViewabilityTracker;", "Lcom/mopub/mobileads/VastTracker;", "viewablePlaytimeMS", "", VideoViewabilityTrackerXmlManager.PERCENT_VIEWABLE, Constants.VAST_TRACKER_CONTENT, "", "messageType", "Lcom/mopub/mobileads/VastTracker$MessageType;", "isRepeatable", "", "(IILjava/lang/String;Lcom/mopub/mobileads/VastTracker$MessageType;Z)V", "getPercentViewable", "()I", "getViewablePlaytimeMS", "Builder", "Companion", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VideoViewabilityTracker.class */
public class VideoViewabilityTracker extends VastTracker {
    public static final Companion Companion = new Companion(null);
    @b(a = Constants.VAST_TRACKER_PLAYTIME_MS)

    /* renamed from: a  reason: collision with root package name */
    private int f34362a;
    @b(a = Constants.VAST_TRACKER_PERCENT_VIEWABLE)

    /* renamed from: b  reason: collision with root package name */
    private int f34363b;

    @Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\b\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\u0006\u0010\u000f\u001a\u00020\u0010J\t\u0010\u0011\u001a\u00020\u0003HÂ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J'\u0010\u0014\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0015\u001a\u00020\t2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\u000e\u0010\b\u001a\u00020��2\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020��2\u0006\u0010\n\u001a\u00020\u000bJ\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\r¨\u0006\u0019"}, d2 = {"Lcom/mopub/mobileads/VideoViewabilityTracker$Builder;", "", Constants.VAST_TRACKER_CONTENT, "", "viewablePlaytimeMS", "", VideoViewabilityTrackerXmlManager.PERCENT_VIEWABLE, "(Ljava/lang/String;II)V", "isRepeatable", "", "messageType", "Lcom/mopub/mobileads/VastTracker$MessageType;", "getPercentViewable", "()I", "getViewablePlaytimeMS", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/mopub/mobileads/VideoViewabilityTracker;", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "toString", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VideoViewabilityTracker$Builder.class */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        private VastTracker.MessageType f34364a = VastTracker.MessageType.TRACKING_URL;

        /* renamed from: b  reason: collision with root package name */
        private boolean f34365b;

        /* renamed from: c  reason: collision with root package name */
        private final String f34366c;

        /* renamed from: d  reason: collision with root package name */
        private final int f34367d;
        private final int e;

        public Builder(String content, int i, int i2) {
            p.c(content, "content");
            this.f34366c = content;
            this.f34367d = i;
            this.e = i2;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                str = builder.f34366c;
            }
            if ((i3 & 2) != 0) {
                i = builder.f34367d;
            }
            if ((i3 & 4) != 0) {
                i2 = builder.e;
            }
            return builder.copy(str, i, i2);
        }

        public final VideoViewabilityTracker build() {
            return new VideoViewabilityTracker(this.f34367d, this.e, this.f34366c, this.f34364a, this.f34365b);
        }

        public final int component2() {
            return this.f34367d;
        }

        public final int component3() {
            return this.e;
        }

        public final Builder copy(String content, int i, int i2) {
            p.c(content, "content");
            return new Builder(content, i, i2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Builder)) {
                return false;
            }
            Builder builder = (Builder) obj;
            return p.a((Object) this.f34366c, (Object) builder.f34366c) && this.f34367d == builder.f34367d && this.e == builder.e;
        }

        public final int getPercentViewable() {
            return this.e;
        }

        public final int getViewablePlaytimeMS() {
            return this.f34367d;
        }

        public final int hashCode() {
            String str = this.f34366c;
            return ((((str != null ? str.hashCode() : 0) * 31) + this.f34367d) * 31) + this.e;
        }

        public final Builder isRepeatable(boolean z) {
            Builder builder = this;
            builder.f34365b = z;
            return builder;
        }

        public final Builder messageType(VastTracker.MessageType messageType) {
            p.c(messageType, "messageType");
            Builder builder = this;
            builder.f34364a = messageType;
            return builder;
        }

        public final String toString() {
            return "Builder(content=" + this.f34366c + ", viewablePlaytimeMS=" + this.f34367d + ", percentViewable=" + this.e + ")";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, d2 = {"Lcom/mopub/mobileads/VideoViewabilityTracker$Companion;", "", "()V", "serialVersionUID", "", "mopub-sdk-base_release"}, k = 1, mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VideoViewabilityTracker$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final /* synthetic */ void fromJson$7(f fVar, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                _optimizedjsonreader.b(jsonReader);
                jsonReader.skipValue();
            }
            jsonReader.endObject();
        }

        public final /* synthetic */ void toJson$7(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
            jsonWriter.beginObject();
            jsonWriter.endObject();
        }
    }

    public /* synthetic */ VideoViewabilityTracker() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VideoViewabilityTracker(int i, int i2, String content, VastTracker.MessageType messageType, boolean z) {
        super(content, messageType, z);
        p.c(content, "content");
        p.c(messageType, "messageType");
        this.f34362a = i;
        this.f34363b = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0049, code lost:
        if (r10 == false) goto L_0x007b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
        r5.f34362a = r7.nextInt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0057, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
        throw new com.google.gson.JsonSyntaxException(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0063, code lost:
        if (r10 == false) goto L_0x007b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0066, code lost:
        r5.f34363b = r7.nextInt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0071, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x007a, code lost:
        throw new com.google.gson.JsonSyntaxException(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007b, code lost:
        r7.nextNull();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void fromJson$12(com.google.gson.f r6, com.google.gson.stream.JsonReader r7, proguard.optimize.gson._OptimizedJsonReader r8) {
        /*
            r5 = this;
            r0 = r7
            r0.beginObject()
        L_0x0004:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0082
            r0 = r8
            r1 = r7
            int r0 = r0.b(r1)
            r9 = r0
        L_0x0014:
            r0 = r7
            com.google.gson.stream.JsonToken r0 = r0.peek()
            com.google.gson.stream.JsonToken r1 = com.google.gson.stream.JsonToken.NULL
            if (r0 == r1) goto L_0x0024
            r0 = 1
            r10 = r0
            goto L_0x0027
        L_0x0024:
            r0 = 0
            r10 = r0
        L_0x0027:
            r0 = r9
            r1 = 12
            if (r0 == r1) goto L_0x0061
            r0 = r9
            r1 = 67
            if (r0 == r1) goto L_0x0047
            r0 = r9
            r1 = 80
            if (r0 == r1) goto L_0x0014
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r9
            r0.a(r1, r2, r3)
            goto L_0x0004
        L_0x0047:
            r0 = r10
            if (r0 == 0) goto L_0x007b
            r0 = r5
            r1 = r7
            int r1 = r1.nextInt()     // Catch: NumberFormatException -> 0x0057
            r0.f34362a = r1     // Catch: NumberFormatException -> 0x0057
            goto L_0x0004
        L_0x0057:
            r6 = move-exception
            com.google.gson.JsonSyntaxException r0 = new com.google.gson.JsonSyntaxException
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            throw r0
        L_0x0061:
            r0 = r10
            if (r0 == 0) goto L_0x007b
            r0 = r5
            r1 = r7
            int r1 = r1.nextInt()     // Catch: NumberFormatException -> 0x0071
            r0.f34363b = r1     // Catch: NumberFormatException -> 0x0071
            goto L_0x0004
        L_0x0071:
            r6 = move-exception
            com.google.gson.JsonSyntaxException r0 = new com.google.gson.JsonSyntaxException
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            throw r0
        L_0x007b:
            r0 = r7
            r0.nextNull()
            goto L_0x0004
        L_0x0082:
            r0 = r7
            r0.endObject()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VideoViewabilityTracker.fromJson$12(com.google.gson.f, com.google.gson.stream.JsonReader, proguard.optimize.gson._OptimizedJsonReader):void");
    }

    public final int getPercentViewable() {
        return this.f34363b;
    }

    public final int getViewablePlaytimeMS() {
        return this.f34362a;
    }

    public /* synthetic */ void toJson$12(f fVar, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        _optimizedjsonwriter.b(jsonWriter, 67);
        jsonWriter.value(Integer.valueOf(this.f34362a));
        _optimizedjsonwriter.b(jsonWriter, 12);
        jsonWriter.value(Integer.valueOf(this.f34363b));
        a(fVar, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }
}
