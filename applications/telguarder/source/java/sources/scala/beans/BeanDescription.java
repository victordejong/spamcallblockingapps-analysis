package scala.beans;

import scala.annotation.Annotation;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00052A!\u0001\u0002\u0001\u000f\ty!)Z1o\t\u0016\u001c8M]5qi&|gN\u0003\u0002\u0004\t\u0005)!-Z1og*\tQ!A\u0003tG\u0006d\u0017m\u0001\u0001\u0014\u0005\u0001A\u0001CA\u0005\r\u001b\u0005Q!BA\u0006\u0005\u0003)\tgN\\8uCRLwN\\\u0005\u0003\u001b)\u0011!\"\u00118o_R\fG/[8o\u0011!y\u0001A!b\u0001\n\u0003\u0001\u0012a\u00033fg\u000e\u0014\u0018\u000e\u001d;j_:,\u0012!\u0005\t\u0003%Yq!a\u0005\u000b\u000e\u0003\u0011I!!\u0006\u0003\u0002\rA\u0013X\rZ3g\u0013\t9\u0002D\u0001\u0004TiJLgn\u001a\u0006\u0003+\u0011A\u0001B\u0007\u0001\u0003\u0002\u0003\u0006I!E\u0001\rI\u0016\u001c8M]5qi&|g\u000e\t\u0005\u00069\u0001!\t!H\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0005y\u0001\u0003CA\u0010\u0001\u001b\u0005\u0011\u0001\"B\b\u001c\u0001\u0004\t\u0002")
/* loaded from: classes3-dex2jar.jar:scala/beans/BeanDescription.class */
public class BeanDescription extends Annotation {
    private final String description;

    public BeanDescription(String str) {
        this.description = str;
    }

    public String description() {
        return this.description;
    }
}
