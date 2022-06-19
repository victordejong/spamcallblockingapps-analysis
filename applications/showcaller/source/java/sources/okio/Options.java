package okio;

import java.util.AbstractList;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:okio/Options.class */
public final class Options extends AbstractList<ByteString> implements RandomAccess {
    final ByteString[] byteStrings;

    private Options(ByteString[] byteStringArr) {
        this.byteStrings = byteStringArr;
    }

    /* renamed from: of */
    public static Options m361of(ByteString... byteStringArr) {
        return new Options((ByteString[]) byteStringArr.clone());
    }

    @Override // java.util.AbstractList, java.util.List
    public ByteString get(int i) {
        return this.byteStrings[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.byteStrings.length;
    }
}
