package kotlin.p009io;

import java.nio.charset.CharsetDecoder;
import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference0Impl;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* renamed from: kotlin.io.LineReader$readLine$1 */
/* loaded from: classes2-dex2jar.jar:kotlin/io/LineReader$readLine$1.class */
final /* synthetic */ class LineReader$readLine$1 extends MutablePropertyReference0Impl {
    @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
    @Nullable
    public Object get() {
        return LineReader.m1871a((LineReader) this.receiver);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference0Impl
    public void set(@Nullable Object obj) {
        LineReader lineReader = (LineReader) this.receiver;
        LineReader.f20701a = (CharsetDecoder) obj;
    }
}
