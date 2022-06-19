package scala.p029io;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.URI;
import java.net.URL;
import scala.Function0;
import scala.Predef$;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.mutable.StringBuilder;
import scala.runtime.BoxedUnit;
/* renamed from: scala.io.Source$ */
/* loaded from: classes3-dex2jar.jar:scala/io/Source$.class */
public final class Source$ {
    public static final Source$ MODULE$ = null;
    private final int DefaultBufSize = 2048;

    static {
        new Source$();
    }

    private Source$() {
        MODULE$ = this;
    }

    public int DefaultBufSize() {
        return this.DefaultBufSize;
    }

    public BufferedSource createBufferedSource(InputStream inputStream, int i, Function0<Source> function0, Function0<BoxedUnit> function02, Codec codec) {
        Source$$anonfun$2 source$$anonfun$2 = function0;
        if (function0 == null) {
            source$$anonfun$2 = new Source$$anonfun$2(inputStream, i, function0, function02, codec);
        }
        return (BufferedSource) new BufferedSource(inputStream, i, codec).withReset(source$$anonfun$2).withClose(function02);
    }

    public int createBufferedSource$default$2() {
        return DefaultBufSize();
    }

    public Function0<Source> createBufferedSource$default$3() {
        return null;
    }

    public Function0<BoxedUnit> createBufferedSource$default$4() {
        return null;
    }

    public Source fromBytes(byte[] bArr, String str) {
        return fromBytes(bArr, Codec$.MODULE$.apply(str));
    }

    public Source fromBytes(byte[] bArr, Codec codec) {
        return fromString(new String(bArr, codec.name()));
    }

    public Source fromChar(char c) {
        return fromIterable(Predef$.MODULE$.wrapCharArray(new char[]{c}));
    }

    public Source fromChars(char[] cArr) {
        return fromIterable(Predef$.MODULE$.wrapCharArray(cArr));
    }

    public BufferedSource fromFile(File file, int i, Codec codec) {
        FileInputStream fileInputStream = new FileInputStream(file);
        return (BufferedSource) createBufferedSource(fileInputStream, i, new Source$$anonfun$fromFile$2(file, i, codec), new Source$$anonfun$fromFile$1(fileInputStream), codec).withDescription(new StringBuilder().append((Object) "file:").append((Object) file.getAbsolutePath()).toString());
    }

    public BufferedSource fromFile(File file, String str) {
        return fromFile(file, Codec$.MODULE$.apply(str));
    }

    public BufferedSource fromFile(File file, String str, int i) {
        return fromFile(file, i, Codec$.MODULE$.apply(str));
    }

    public BufferedSource fromFile(File file, Codec codec) {
        return fromFile(file, DefaultBufSize(), codec);
    }

    public BufferedSource fromFile(String str, String str2) {
        return fromFile(str, Codec$.MODULE$.apply(str2));
    }

    public BufferedSource fromFile(String str, Codec codec) {
        return fromFile(new File(str), codec);
    }

    public BufferedSource fromFile(URI uri, String str) {
        return fromFile(uri, Codec$.MODULE$.apply(str));
    }

    public BufferedSource fromFile(URI uri, Codec codec) {
        return fromFile(new File(uri), codec);
    }

    public BufferedSource fromInputStream(InputStream inputStream, String str) {
        return fromInputStream(inputStream, Codec$.MODULE$.apply(str));
    }

    public BufferedSource fromInputStream(InputStream inputStream, Codec codec) {
        return createBufferedSource(inputStream, createBufferedSource$default$2(), new Source$$anonfun$3(inputStream, codec), new Source$$anonfun$1(inputStream), codec);
    }

    public Source fromIterable(Iterable<Object> iterable) {
        return new Source(iterable) { // from class: scala.io.Source$$anon$1
            private final Iterator<Object> iter;

            {
                this.iter = iterable.iterator();
            }

            @Override // scala.p029io.Source
            public Iterator<Object> iter() {
                return this.iter;
            }
        }.withReset(new Source$$anonfun$fromIterable$1(iterable));
    }

    public Source fromRawBytes(byte[] bArr) {
        return fromString(new String(bArr, Codec$.MODULE$.ISO8859().name()));
    }

    public Source fromString(String str) {
        return fromIterable(Predef$.MODULE$.wrapString(str));
    }

    public BufferedSource fromURI(URI uri, Codec codec) {
        return fromFile(new File(uri), codec);
    }

    public BufferedSource fromURL(String str, String str2) {
        return fromURL(str, Codec$.MODULE$.apply(str2));
    }

    public BufferedSource fromURL(String str, Codec codec) {
        return fromURL(new URL(str), codec);
    }

    public BufferedSource fromURL(URL url, String str) {
        return fromURL(url, Codec$.MODULE$.apply(str));
    }

    public BufferedSource fromURL(URL url, Codec codec) {
        return fromInputStream(url.openStream(), codec);
    }

    public BufferedSource stdin() {
        return fromInputStream(System.in, Codec$.MODULE$.fallbackSystemCodec());
    }
}
