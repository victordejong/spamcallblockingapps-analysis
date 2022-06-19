package scala.runtime;

import java.io.Serializable;
/* loaded from: classes3-dex2jar.jar:scala/runtime/CharRef.class */
public class CharRef implements Serializable {
    private static final long serialVersionUID = 6537214938268005702L;
    public char elem;

    public CharRef(char c) {
        this.elem = c;
    }

    public static CharRef create(char c) {
        return new CharRef(c);
    }

    public static CharRef zero() {
        return new CharRef((char) 0);
    }

    public String toString() {
        return Character.toString(this.elem);
    }
}
