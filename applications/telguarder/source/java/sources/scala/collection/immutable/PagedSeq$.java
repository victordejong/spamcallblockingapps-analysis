package scala.collection.immutable;

import java.io.File;
import java.io.FileReader;
import java.io.Reader;
import scala.Predef$;
import scala.collection.Iterator;
import scala.p029io.Source;
import scala.reflect.ClassTag;
import scala.reflect.ClassTag$;
import scala.runtime.BooleanRef;
import scala.runtime.ObjectRef;
import scala.runtime.RichInt$;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/PagedSeq$.class */
public final class PagedSeq$ {
    public static final PagedSeq$ MODULE$ = null;
    private final int UndeterminedEnd;

    static {
        new PagedSeq$();
    }

    private PagedSeq$() {
        MODULE$ = this;
    }

    public final int UndeterminedEnd() {
        return Integer.MAX_VALUE;
    }

    public PagedSeq<Object> fromFile(File file) {
        return fromReader(new FileReader(file));
    }

    public PagedSeq<Object> fromFile(String str) {
        return fromFile(new File(str));
    }

    public <T> PagedSeq<T> fromIterable(Iterable<T> iterable, ClassTag<T> classTag) {
        return fromIterator(iterable.iterator(), classTag);
    }

    public <T> PagedSeq<T> fromIterator(Iterator<T> iterator, ClassTag<T> classTag) {
        return new PagedSeq<>(new PagedSeq$$anonfun$fromIterator$1(iterator), classTag);
    }

    public PagedSeq<Object> fromLines(Iterator<String> iterator) {
        return fromStrings(iterator.map(new PagedSeq$$anonfun$fromLines$1(BooleanRef.create(true))));
    }

    public PagedSeq<Object> fromLines(Iterable<String> iterable) {
        return fromLines(iterable.iterator());
    }

    public PagedSeq<Object> fromReader(Reader reader) {
        return new PagedSeq<>(new PagedSeq$$anonfun$fromReader$1(reader), ClassTag$.MODULE$.Char());
    }

    public PagedSeq<Object> fromSource(Source source) {
        return fromLines(source.getLines());
    }

    public PagedSeq<Object> fromStrings(Iterator<String> iterator) {
        return new PagedSeq<>(new PagedSeq$$anonfun$fromStrings$1(iterator, ObjectRef.create("")), ClassTag$.MODULE$.Char());
    }

    public PagedSeq<Object> fromStrings(Iterable<String> iterable) {
        return fromStrings(iterable.iterator());
    }

    /* JADX WARN: Type inference failed for: r1v14, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v8, types: [T, java.lang.String] */
    public final int scala$collection$immutable$PagedSeq$$more$1(char[] cArr, int i, int i2, Iterator iterator, ObjectRef objectRef) {
        int max$extension;
        while (true) {
            if (((String) objectRef.elem).length() == 0) {
                if (!iterator.hasNext()) {
                    max$extension = -1;
                    break;
                }
                objectRef.elem = (String) iterator.next();
            } else {
                RichInt$ richInt$ = RichInt$.MODULE$;
                Predef$ predef$ = Predef$.MODULE$;
                int min$extension = richInt$.min$extension(((String) objectRef.elem).length(), i2);
                ((String) objectRef.elem).getChars(0, min$extension, cArr, i);
                objectRef.elem = ((String) objectRef.elem).substring(min$extension);
                if (min$extension == i2) {
                    max$extension = min$extension;
                } else {
                    RichInt$ richInt$2 = RichInt$.MODULE$;
                    Predef$ predef$2 = Predef$.MODULE$;
                    max$extension = min$extension + richInt$2.max$extension(scala$collection$immutable$PagedSeq$$more$1(cArr, i + min$extension, i2 - min$extension, iterator, objectRef), 0);
                }
            }
        }
        return max$extension;
    }
}
