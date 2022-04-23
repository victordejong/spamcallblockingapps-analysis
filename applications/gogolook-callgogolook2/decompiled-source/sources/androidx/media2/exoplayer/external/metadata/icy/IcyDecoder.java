package androidx.media2.exoplayer.external.metadata.icy;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.media2.exoplayer.external.metadata.Metadata;
import androidx.media2.exoplayer.external.metadata.MetadataDecoder;
import androidx.media2.exoplayer.external.metadata.MetadataInputBuffer;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.Util;
import java.nio.ByteBuffer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/icy/IcyDecoder.class */
public final class IcyDecoder implements MetadataDecoder {
    public static final Pattern METADATA_ELEMENT = Pattern.compile("(.+?)='(.*?)';", 32);
    public static final String STREAM_KEY_NAME = "streamtitle";
    public static final String STREAM_KEY_URL = "streamurl";
    public static final String TAG = "IcyDecoder";

    @Override // androidx.media2.exoplayer.external.metadata.MetadataDecoder
    @Nullable
    public Metadata decode(MetadataInputBuffer metadataInputBuffer) {
        ByteBuffer byteBuffer = metadataInputBuffer.data;
        return decode(Util.fromUtf8Bytes(byteBuffer.array(), 0, byteBuffer.limit()));
    }

    @Nullable
    @VisibleForTesting
    public Metadata decode(String str) {
        Matcher matcher = METADATA_ELEMENT.matcher(str);
        Metadata metadata = null;
        String str2 = null;
        String str3 = null;
        for (int i = 0; matcher.find(i); i = matcher.end()) {
            String lowerInvariant = Util.toLowerInvariant(matcher.group(1));
            String group = matcher.group(2);
            char c = 65535;
            int hashCode = lowerInvariant.hashCode();
            if (hashCode != -315603473) {
                if (hashCode == 1646559960 && lowerInvariant.equals(STREAM_KEY_NAME)) {
                    c = 0;
                }
            } else if (lowerInvariant.equals(STREAM_KEY_URL)) {
                c = 1;
            }
            if (c == 0) {
                str2 = group;
            } else if (c != 1) {
                String valueOf = String.valueOf(str2);
                Log.m37483w(TAG, valueOf.length() != 0 ? "Unrecognized ICY tag: ".concat(valueOf) : new String("Unrecognized ICY tag: "));
            } else {
                str3 = group;
            }
        }
        if (!(str2 == null && str3 == null)) {
            metadata = new Metadata(new IcyInfo(str2, str3));
        }
        return metadata;
    }
}
