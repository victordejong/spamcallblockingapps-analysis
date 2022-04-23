package androidx.media2.exoplayer.external.extractor.b;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.extractor.h;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/b/b.class */
public interface b {
    int a(int i);

    void a(int i, double d2) throws ParserException;

    void a(int i, int i2, h hVar) throws IOException, InterruptedException;

    void a(int i, long j) throws ParserException;

    void a(int i, long j, long j2) throws ParserException;

    void a(int i, String str) throws ParserException;

    boolean b(int i);

    void c(int i) throws ParserException;
}
