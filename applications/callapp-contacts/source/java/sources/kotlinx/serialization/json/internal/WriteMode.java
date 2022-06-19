package kotlinx.serialization.json.internal;

import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\f\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0006\b\u0080\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n��j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, m4298d2 = {"Lkotlinx/serialization/json/internal/WriteMode;", "", "begin", "", "end", "(Ljava/lang/String;ICC)V", "beginTc", "", "endTc", "OBJ", "LIST", "MAP", "POLY_OBJ", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/WriteMode.class */
public enum WriteMode {
    OBJ('{', '}'),
    LIST('[', ']'),
    MAP('{', '}'),
    POLY_OBJ('[', ']');
    
    public final char begin;
    public final byte beginTc;
    public final char end;
    public final byte endTc;

    WriteMode(char c, char c2) {
        this.begin = c;
        this.end = c2;
        this.beginTc = JsonReaderKt.charToTokenClass(c);
        this.endTc = JsonReaderKt.charToTokenClass(c2);
    }
}
