package scala;

import scala.StringContext;
import scala.collection.Seq;
import scala.collection.immutable.StringOps$;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/StringContext$.class */
public final class StringContext$ implements Serializable {
    public static final StringContext$ MODULE$ = null;

    static {
        new StringContext$();
    }

    private StringContext$() {
        MODULE$ = this;
    }

    private final String loop$1(int i, int i2, String str, boolean z, int i3, StringBuilder sb) {
        char c;
        int i4;
        while (i2 >= 0) {
            if (i2 > i) {
                sb.append((CharSequence) str, i, i2);
            } else {
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            int i5 = i2 + 1;
            if (i5 >= i3) {
                throw new StringContext.InvalidEscapeException(str, i2);
            }
            StringOps$ stringOps$ = StringOps$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            char apply$extension = stringOps$.apply$extension(str, i5);
            if (apply$extension != '\"') {
                c = '\'';
                i4 = i5;
                if (apply$extension == '\'') {
                    continue;
                } else if (apply$extension == '\\') {
                    c = '\\';
                    i4 = i5;
                } else if (apply$extension == 'b') {
                    c = '\b';
                    i4 = i5;
                } else if (apply$extension == 'f') {
                    c = '\f';
                    i4 = i5;
                } else if (apply$extension == 'n') {
                    c = '\n';
                    i4 = i5;
                } else if (apply$extension == 'r') {
                    c = '\r';
                    i4 = i5;
                } else if (apply$extension == 't') {
                    c = '\t';
                    i4 = i5;
                } else if ('0' > apply$extension || apply$extension > '7') {
                    throw new StringContext.InvalidEscapeException(str, i2);
                } else {
                    if (z) {
                        throw new StringContext.InvalidEscapeException(str, i2);
                    }
                    StringOps$ stringOps$2 = StringOps$.MODULE$;
                    Predef$ predef$2 = Predef$.MODULE$;
                    char apply$extension2 = stringOps$2.apply$extension(str, i5);
                    int i6 = apply$extension2 - '0';
                    int i7 = i5 + 1;
                    int i8 = i6;
                    int i9 = i7;
                    if (i7 < i3) {
                        StringOps$ stringOps$3 = StringOps$.MODULE$;
                        Predef$ predef$3 = Predef$.MODULE$;
                        i8 = i6;
                        i9 = i7;
                        if ('0' <= stringOps$3.apply$extension(str, i7)) {
                            StringOps$ stringOps$4 = StringOps$.MODULE$;
                            Predef$ predef$4 = Predef$.MODULE$;
                            i8 = i6;
                            i9 = i7;
                            if (stringOps$4.apply$extension(str, i7) <= '7') {
                                StringOps$ stringOps$5 = StringOps$.MODULE$;
                                Predef$ predef$5 = Predef$.MODULE$;
                                int apply$extension3 = ((i6 * 8) + stringOps$5.apply$extension(str, i7)) - 48;
                                int i10 = i7 + 1;
                                i8 = apply$extension3;
                                i9 = i10;
                                if (i10 < i3) {
                                    i8 = apply$extension3;
                                    i9 = i10;
                                    if (apply$extension2 <= '3') {
                                        StringOps$ stringOps$6 = StringOps$.MODULE$;
                                        Predef$ predef$6 = Predef$.MODULE$;
                                        i8 = apply$extension3;
                                        i9 = i10;
                                        if ('0' <= stringOps$6.apply$extension(str, i10)) {
                                            StringOps$ stringOps$7 = StringOps$.MODULE$;
                                            Predef$ predef$7 = Predef$.MODULE$;
                                            i8 = apply$extension3;
                                            i9 = i10;
                                            if (stringOps$7.apply$extension(str, i10) <= '7') {
                                                StringOps$ stringOps$8 = StringOps$.MODULE$;
                                                Predef$ predef$8 = Predef$.MODULE$;
                                                i8 = ((apply$extension3 * 8) + stringOps$8.apply$extension(str, i10)) - 48;
                                                i9 = i10 + 1;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    i4 = i9 - 1;
                    c = (char) i8;
                }
            } else {
                i4 = i5;
                c = '\"';
            }
            i = i4 + 1;
            sb.append(c);
            i2 = str.indexOf(92, i);
        }
        if (i < i3) {
            sb.append((CharSequence) str, i, i3);
        } else {
            BoxedUnit boxedUnit2 = BoxedUnit.UNIT;
        }
        return sb.toString();
    }

    private Object readResolve() {
        return MODULE$;
    }

    private final String replace$1(int i, String str, boolean z, int i2) {
        return loop$1(0, i, str, z, i2, new StringBuilder());
    }

    private String treatEscapes0(String str, boolean z) {
        int length = str.length();
        int indexOf = str.indexOf(92);
        String str2 = str;
        if (indexOf != -1) {
            str2 = replace$1(indexOf, str, z, length);
        }
        return str2;
    }

    public StringContext apply(Seq<String> seq) {
        return new StringContext(seq);
    }

    public String processEscapes(String str) {
        return treatEscapes0(str, true);
    }

    public String treatEscapes(String str) {
        return treatEscapes0(str, false);
    }

    public Option<Seq<String>> unapplySeq(StringContext stringContext) {
        return stringContext == null ? None$.MODULE$ : new Some(stringContext.parts());
    }
}
