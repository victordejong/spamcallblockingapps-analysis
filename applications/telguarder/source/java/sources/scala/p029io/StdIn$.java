package scala.p029io;

import scala.Tuple2;
import scala.Tuple3;
import scala.collection.Seq;
import scala.collection.immutable.List;
import scala.p029io.StdIn;
/* renamed from: scala.io.StdIn$ */
/* loaded from: classes3-dex2jar.jar:scala/io/StdIn$.class */
public final class StdIn$ implements StdIn {
    public static final StdIn$ MODULE$ = null;

    static {
        new StdIn$();
    }

    private StdIn$() {
        MODULE$ = this;
        StdIn.Cclass.$init$(this);
    }

    @Override // scala.p029io.StdIn
    public boolean readBoolean() {
        return StdIn.Cclass.readBoolean(this);
    }

    @Override // scala.p029io.StdIn
    public byte readByte() {
        return StdIn.Cclass.readByte(this);
    }

    @Override // scala.p029io.StdIn
    public char readChar() {
        return StdIn.Cclass.readChar(this);
    }

    @Override // scala.p029io.StdIn
    public double readDouble() {
        return StdIn.Cclass.readDouble(this);
    }

    @Override // scala.p029io.StdIn
    public float readFloat() {
        return StdIn.Cclass.readFloat(this);
    }

    @Override // scala.p029io.StdIn
    public int readInt() {
        return StdIn.Cclass.readInt(this);
    }

    @Override // scala.p029io.StdIn
    public String readLine() {
        return StdIn.Cclass.readLine(this);
    }

    @Override // scala.p029io.StdIn
    public String readLine(String str, Seq<Object> seq) {
        return StdIn.Cclass.readLine(this, str, seq);
    }

    @Override // scala.p029io.StdIn
    public long readLong() {
        return StdIn.Cclass.readLong(this);
    }

    @Override // scala.p029io.StdIn
    public short readShort() {
        return StdIn.Cclass.readShort(this);
    }

    @Override // scala.p029io.StdIn
    public List<Object> readf(String str) {
        return StdIn.Cclass.readf(this, str);
    }

    @Override // scala.p029io.StdIn
    public Object readf1(String str) {
        return StdIn.Cclass.readf1(this, str);
    }

    @Override // scala.p029io.StdIn
    public Tuple2<Object, Object> readf2(String str) {
        return StdIn.Cclass.readf2(this, str);
    }

    @Override // scala.p029io.StdIn
    public Tuple3<Object, Object, Object> readf3(String str) {
        return StdIn.Cclass.readf3(this, str);
    }
}
