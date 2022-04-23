package com.google.android.exoplayer2.metadata.icy;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.c;
import com.google.android.exoplayer2.metadata.f;
import com.google.android.exoplayer2.util.af;
import com.google.common.base.d;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/icy/a.class */
public final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f21443a = Pattern.compile("(.+?)='(.*?)';", 32);

    /* renamed from: b  reason: collision with root package name */
    private final CharsetDecoder f21444b = d.f31920c.newDecoder();

    /* renamed from: c  reason: collision with root package name */
    private final CharsetDecoder f21445c = d.f31919b.newDecoder();

    /* JADX WARN: Finally extract failed */
    private String a(ByteBuffer byteBuffer) {
        try {
            return this.f21444b.decode(byteBuffer).toString();
        } catch (CharacterCodingException e) {
            try {
                String charBuffer = this.f21445c.decode(byteBuffer).toString();
                this.f21445c.reset();
                byteBuffer.rewind();
                return charBuffer;
            } catch (CharacterCodingException e2) {
                this.f21445c.reset();
                byteBuffer.rewind();
                return null;
            } catch (Throwable th) {
                this.f21445c.reset();
                byteBuffer.rewind();
                throw th;
            }
        } finally {
            this.f21444b.reset();
            byteBuffer.rewind();
        }
    }

    @Override // com.google.android.exoplayer2.metadata.f
    public final Metadata a(c cVar, ByteBuffer byteBuffer) {
        String a2 = a(byteBuffer);
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        String str = null;
        if (a2 == null) {
            return new Metadata(new IcyInfo(bArr, null, null));
        }
        Matcher matcher = f21443a.matcher(a2);
        String str2 = null;
        for (int i = 0; matcher.find(i); i = matcher.end()) {
            String d2 = af.d(matcher.group(1));
            String group = matcher.group(2);
            str = str;
            str2 = str2;
            if (d2 != null) {
                d2.hashCode();
                if (d2.equals("streamurl")) {
                    str2 = group;
                    str = str;
                } else if (!d2.equals("streamtitle")) {
                    str = str;
                    str2 = str2;
                } else {
                    str = group;
                    str2 = str2;
                }
            }
        }
        return new Metadata(new IcyInfo(bArr, str, str2));
    }
}
