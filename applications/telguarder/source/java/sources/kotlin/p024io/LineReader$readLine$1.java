package kotlin.p024io;

import java.nio.charset.CharsetDecoder;
import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference0Impl;
@Metadata(m402bv = {1, 0, 3}, m399k = 3, m398mv = {1, 4, 0})
/* renamed from: kotlin.io.LineReader$readLine$1 */
/* loaded from: classes-dex2jar.jar:kotlin/io/LineReader$readLine$1.class */
final /* synthetic */ class LineReader$readLine$1 extends MutablePropertyReference0Impl {
    LineReader$readLine$1(LineReader lineReader) {
        super(lineReader, LineReader.class, "decoder", "getDecoder()Ljava/nio/charset/CharsetDecoder;", 0);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
    public Object get() {
        return LineReader.access$getDecoder$p((LineReader) this.receiver);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
    public void set(Object obj) {
        LineReader lineReader = (LineReader) this.receiver;
        LineReader.decoder = (CharsetDecoder) obj;
    }
}
