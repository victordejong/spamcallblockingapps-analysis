package kotlin.p009io;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetDecoder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {1, 0, 3}, d1 = {"��d\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0019\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÀ\u0002\u0018��B\t\b\u0002¢\u0006\u0004\b0\u0010\u0015J\u000f\u0010\u0002\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\n\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0016\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0019\u001a\u00020\u00018\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u001e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010\"\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010%\u001a\u00020$8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010(\u001a\u00020'8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b(\u0010)R\u0016\u0010*\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u001a\u0010.\u001a\u00060,j\u0002`-8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/¨\u00061"}, d2 = {"Lkotlin/io/LineReader;", "", "compactBytes", "()I", "", "endOfInput", "decode", "(Z)I", "nBytes", "nChars", "decodeEndOfInput", "(II)I", "Ljava/io/InputStream;", "inputStream", "Ljava/nio/charset/Charset;", "charset", "", "readLine", "(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;", "", "resetAll", "()V", "trimStringBuilder", "updateCharset", "(Ljava/nio/charset/Charset;)V", "BUFFER_SIZE", "I", "Ljava/nio/ByteBuffer;", "byteBuf", "Ljava/nio/ByteBuffer;", "", "bytes", "[B", "Ljava/nio/CharBuffer;", "charBuf", "Ljava/nio/CharBuffer;", "", "chars", "[C", "Ljava/nio/charset/CharsetDecoder;", "decoder", "Ljava/nio/charset/CharsetDecoder;", "directEOL", "Z", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "sb", "Ljava/lang/StringBuilder;", "<init>", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: kotlin.io.LineReader */
/* loaded from: classes2-dex2jar.jar:kotlin/io/LineReader.class */
public final class LineReader {

    /* renamed from: a */
    private static CharsetDecoder f20701a;

    /* renamed from: b */
    private static final byte[] f20702b;

    /* renamed from: c */
    private static final char[] f20703c = new char[32];

    static {
        byte[] bArr = new byte[32];
        f20702b = bArr;
        Intrinsics.m1831d(ByteBuffer.wrap(bArr), "ByteBuffer.wrap(bytes)");
        Intrinsics.m1831d(CharBuffer.wrap(f20703c), "CharBuffer.wrap(chars)");
    }

    private LineReader() {
    }

    /* renamed from: a */
    public static final /* synthetic */ CharsetDecoder m1871a(LineReader lineReader) {
        CharsetDecoder charsetDecoder = f20701a;
        if (charsetDecoder != null) {
            return charsetDecoder;
        }
        Intrinsics.m1814u("decoder");
        throw null;
    }
}
