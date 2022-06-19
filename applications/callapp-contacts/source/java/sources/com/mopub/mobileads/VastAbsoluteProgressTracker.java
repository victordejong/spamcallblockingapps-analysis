package com.mopub.mobileads;

import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.google.gson.C15965f;
import com.google.gson.annotations.AbstractC15952b;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.mopub.common.Constants;
import com.mopub.mobileads.VastTracker;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p532h.C18425p;
import proguard.optimize.gson._OptimizedJsonReader;
import proguard.optimize.gson._OptimizedJsonWriter;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\t\b\u0016\u0018�� \u00122\u00020\u00012\b\u0012\u0004\u0012\u00020��0\u0002:\u0002\u0011\u0012B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u0011\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020��H\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0006H\u0016R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\r¨\u0006\u0013"}, m4298d2 = {"Lcom/mopub/mobileads/VastAbsoluteProgressTracker;", "Lcom/mopub/mobileads/VastTracker;", "", "trackingMilliseconds", "", Constants.VAST_TRACKER_CONTENT, "", "messageType", "Lcom/mopub/mobileads/VastTracker$MessageType;", "isRepeatable", "", "(ILjava/lang/String;Lcom/mopub/mobileads/VastTracker$MessageType;Z)V", "getTrackingMilliseconds", "()I", "compareTo", "other", "toString", "Builder", "Companion", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastAbsoluteProgressTracker.class */
public class VastAbsoluteProgressTracker extends VastTracker implements Comparable<VastAbsoluteProgressTracker> {
    public static final Companion Companion = new Companion(null);

    /* renamed from: b */
    private static final Pattern f59450b = Pattern.compile("\\d{2}:\\d{2}:\\d{2}(.\\d{3})?");
    @AbstractC15952b(m7988a = Constants.VAST_TRACKER_TRACKING_MS)

    /* renamed from: a */
    private int f59451a;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u000b\u001a\u00020\fJ\t\u0010\r\u001a\u00020\u0003HÂ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÂ\u0003J\u001d\u0010\u000f\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001J\u000e\u0010\u0007\u001a\u00020��2\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020��2\u0006\u0010\t\u001a\u00020\nJ\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, m4298d2 = {"Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Builder;", "", Constants.VAST_TRACKER_CONTENT, "", "trackingMilliseconds", "", "(Ljava/lang/String;I)V", "isRepeatable", "", "messageType", "Lcom/mopub/mobileads/VastTracker$MessageType;", JsonPOJOBuilder.DEFAULT_BUILD_METHOD, "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;", "component1", "component2", "copy", "equals", "other", "hashCode", "toString", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastAbsoluteProgressTracker$Builder.class */
    public static final class Builder {

        /* renamed from: a */
        private VastTracker.MessageType f59452a = VastTracker.MessageType.TRACKING_URL;

        /* renamed from: b */
        private boolean f59453b;

        /* renamed from: c */
        private final String f59454c;

        /* renamed from: d */
        private final int f59455d;

        public Builder(String content, int i) {
            C18524p.m3841c(content, "content");
            this.f59454c = content;
            this.f59455d = i;
        }

        public static /* synthetic */ Builder copy$default(Builder builder, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = builder.f59454c;
            }
            if ((i2 & 2) != 0) {
                i = builder.f59455d;
            }
            return builder.copy(str, i);
        }

        public final VastAbsoluteProgressTracker build() {
            return new VastAbsoluteProgressTracker(this.f59455d, this.f59454c, this.f59452a, this.f59453b);
        }

        public final Builder copy(String content, int i) {
            C18524p.m3841c(content, "content");
            return new Builder(content, i);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof Builder)) {
                    return false;
                }
                Builder builder = (Builder) obj;
                return C18524p.m3850a((Object) this.f59454c, (Object) builder.f59454c) && this.f59455d == builder.f59455d;
            }
            return true;
        }

        public final int hashCode() {
            String str = this.f59454c;
            return ((str != null ? str.hashCode() : 0) * 31) + this.f59455d;
        }

        public final Builder isRepeatable(boolean z) {
            Builder builder = this;
            builder.f59453b = z;
            return builder;
        }

        public final Builder messageType(VastTracker.MessageType messageType) {
            C18524p.m3841c(messageType, "messageType");
            Builder builder = this;
            builder.f59452a = messageType;
            return builder;
        }

        public final String toString() {
            return "Builder(content=" + this.f59454c + ", trackingMilliseconds=" + this.f59455d + ")";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0017\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0002\u0010\u000eR\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��¨\u0006\u000f"}, m4298d2 = {"Lcom/mopub/mobileads/VastAbsoluteProgressTracker$Companion;", "", "()V", "absolutePattern", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "serialVersionUID", "", "isAbsoluteTracker", "", "progressValue", "", "parseAbsoluteOffset", "", "(Ljava/lang/String;)Ljava/lang/Integer;", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/VastAbsoluteProgressTracker$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final /* synthetic */ void fromJson$0(C15965f c15965f, JsonReader jsonReader, _OptimizedJsonReader _optimizedjsonreader) {
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                _optimizedjsonreader.mo123b(jsonReader);
                jsonReader.skipValue();
            }
            jsonReader.endObject();
        }

        public final boolean isAbsoluteTracker(String str) {
            String str2 = str;
            return !(str2 == null || str2.length() == 0) && VastAbsoluteProgressTracker.f59450b.matcher(str2).matches();
        }

        public final Integer parseAbsoluteOffset(String str) {
            if (str != null) {
                List<String> a = C18425p.m3934a((CharSequence) str, new String[]{":"}, false, 0);
                if (a == null) {
                    return null;
                }
                if (!(a.size() == 3)) {
                    a = null;
                }
                if (a == null) {
                    return null;
                }
                return Integer.valueOf((Integer.parseInt(a.get(0)) * 60 * 60 * 1000) + (Integer.parseInt(a.get(1)) * 60 * 1000) + ((int) (Float.parseFloat(a.get(2)) * 1000.0f)));
            }
            return null;
        }

        public final /* synthetic */ void toJson$0(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
            jsonWriter.beginObject();
            jsonWriter.endObject();
        }
    }

    public /* synthetic */ VastAbsoluteProgressTracker() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VastAbsoluteProgressTracker(int i, String content, VastTracker.MessageType messageType, boolean z) {
        super(content, messageType, z);
        C18524p.m3841c(content, "content");
        C18524p.m3841c(messageType, "messageType");
        this.f59451a = i;
    }

    public int compareTo(VastAbsoluteProgressTracker other) {
        C18524p.m3841c(other, "other");
        return C18524p.m3854a(this.f59451a, other.f59451a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0049, code lost:
        if (r10 == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
        r5.f59451a = r7.nextInt();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0057, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0060, code lost:
        throw new com.google.gson.JsonSyntaxException(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0061, code lost:
        r7.nextNull();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void fromJson$31(com.google.gson.C15965f r6, com.google.gson.stream.JsonReader r7, proguard.optimize.gson._OptimizedJsonReader r8) {
        /*
            r5 = this;
            r0 = r7
            r0.beginObject()
        L4:
            r0 = r7
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L68
            r0 = r8
            r1 = r7
            int r0 = r0.mo123b(r1)
            r9 = r0
        L14:
            r0 = r7
            com.google.gson.stream.JsonToken r0 = r0.peek()
            com.google.gson.stream.JsonToken r1 = com.google.gson.stream.JsonToken.NULL
            if (r0 == r1) goto L24
            r0 = 1
            r10 = r0
            goto L27
        L24:
            r0 = 0
            r10 = r0
        L27:
            r0 = r9
            r1 = 80
            if (r0 == r1) goto L14
            r0 = r9
            r1 = 83
            if (r0 == r1) goto L47
            r0 = r9
            r1 = 95
            if (r0 == r1) goto L14
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r9
            r0.m6407a(r1, r2, r3)
            goto L4
        L47:
            r0 = r10
            if (r0 == 0) goto L61
            r0 = r5
            r1 = r7
            int r1 = r1.nextInt()     // Catch: java.lang.NumberFormatException -> L57
            r0.f59451a = r1     // Catch: java.lang.NumberFormatException -> L57
            goto L4
        L57:
            r6 = move-exception
            com.google.gson.JsonSyntaxException r0 = new com.google.gson.JsonSyntaxException
            r1 = r0
            r2 = r6
            r1.<init>(r2)
            throw r0
        L61:
            r0 = r7
            r0.nextNull()
            goto L4
        L68:
            r0 = r7
            r0.endObject()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.mobileads.VastAbsoluteProgressTracker.fromJson$31(com.google.gson.f, com.google.gson.stream.JsonReader, proguard.optimize.gson._OptimizedJsonReader):void");
    }

    public final int getTrackingMilliseconds() {
        return this.f59451a;
    }

    public /* synthetic */ void toJson$31(C15965f c15965f, JsonWriter jsonWriter, _OptimizedJsonWriter _optimizedjsonwriter) {
        jsonWriter.beginObject();
        _optimizedjsonwriter.mo120b(jsonWriter, 83);
        jsonWriter.value(Integer.valueOf(this.f59451a));
        m6406a(c15965f, jsonWriter, _optimizedjsonwriter);
        jsonWriter.endObject();
    }

    @Override // com.mopub.mobileads.VastTracker
    public String toString() {
        return this.f59451a + "ms: " + getContent();
    }
}
