package scala;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.Reader;
import scala.collection.Seq;
import scala.collection.immutable.StringOps;
import scala.p029io.AnsiColor;
import scala.util.DynamicVariable;
/* loaded from: classes3-dex2jar.jar:scala/Console$.class */
public final class Console$ extends DeprecatedConsole implements AnsiColor {
    public static final Console$ MODULE$ = null;
    private final DynamicVariable<PrintStream> outVar = new DynamicVariable<>(System.out);
    private final DynamicVariable<PrintStream> errVar = new DynamicVariable<>(System.err);
    private final DynamicVariable<BufferedReader> inVar = new DynamicVariable<>(new BufferedReader(new InputStreamReader(System.in)));

    static {
        new Console$();
    }

    private Console$() {
        MODULE$ = this;
        AnsiColor.Cclass.$init$(this);
    }

    private DynamicVariable<PrintStream> errVar() {
        return this.errVar;
    }

    private DynamicVariable<BufferedReader> inVar() {
        return this.inVar;
    }

    private DynamicVariable<PrintStream> outVar() {
        return this.outVar;
    }

    @Override // scala.p029io.AnsiColor
    public final String BLACK() {
        return "\u001b[30m";
    }

    @Override // scala.p029io.AnsiColor
    public final String BLACK_B() {
        return "\u001b[40m";
    }

    @Override // scala.p029io.AnsiColor
    public final String BLINK() {
        return "\u001b[5m";
    }

    @Override // scala.p029io.AnsiColor
    public final String BLUE() {
        return "\u001b[34m";
    }

    @Override // scala.p029io.AnsiColor
    public final String BLUE_B() {
        return "\u001b[44m";
    }

    @Override // scala.p029io.AnsiColor
    public final String BOLD() {
        return "\u001b[1m";
    }

    @Override // scala.p029io.AnsiColor
    public final String CYAN() {
        return "\u001b[36m";
    }

    @Override // scala.p029io.AnsiColor
    public final String CYAN_B() {
        return "\u001b[46m";
    }

    @Override // scala.p029io.AnsiColor
    public final String GREEN() {
        return "\u001b[32m";
    }

    @Override // scala.p029io.AnsiColor
    public final String GREEN_B() {
        return "\u001b[42m";
    }

    @Override // scala.p029io.AnsiColor
    public final String INVISIBLE() {
        return "\u001b[8m";
    }

    @Override // scala.p029io.AnsiColor
    public final String MAGENTA() {
        return "\u001b[35m";
    }

    @Override // scala.p029io.AnsiColor
    public final String MAGENTA_B() {
        return "\u001b[45m";
    }

    @Override // scala.p029io.AnsiColor
    public final String RED() {
        return "\u001b[31m";
    }

    @Override // scala.p029io.AnsiColor
    public final String RED_B() {
        return "\u001b[41m";
    }

    @Override // scala.p029io.AnsiColor
    public final String RESET() {
        return "\u001b[0m";
    }

    @Override // scala.p029io.AnsiColor
    public final String REVERSED() {
        return "\u001b[7m";
    }

    @Override // scala.p029io.AnsiColor
    public final String UNDERLINED() {
        return "\u001b[4m";
    }

    @Override // scala.p029io.AnsiColor
    public final String WHITE() {
        return "\u001b[37m";
    }

    @Override // scala.p029io.AnsiColor
    public final String WHITE_B() {
        return "\u001b[47m";
    }

    @Override // scala.p029io.AnsiColor
    public final String YELLOW() {
        return "\u001b[33m";
    }

    @Override // scala.p029io.AnsiColor
    public final String YELLOW_B() {
        return "\u001b[43m";
    }

    public PrintStream err() {
        return errVar().value();
    }

    public void flush() {
        out().flush();
    }

    /* renamed from: in */
    public BufferedReader m366in() {
        return inVar().value();
    }

    public PrintStream out() {
        return outVar().value();
    }

    public void print(Object obj) {
        out().print(obj == null ? "null" : obj.toString());
    }

    public void printf(String str, Seq<Object> seq) {
        PrintStream out = out();
        Predef$ predef$ = Predef$.MODULE$;
        out.print(new StringOps(str).format(seq));
    }

    public void println() {
        out().println();
    }

    public void println(Object obj) {
        out().println(obj);
    }

    @Override // scala.DeprecatedConsole
    public void setErrDirect(PrintStream printStream) {
        errVar().value_$eq(printStream);
    }

    @Override // scala.DeprecatedConsole
    public void setInDirect(BufferedReader bufferedReader) {
        inVar().value_$eq(bufferedReader);
    }

    @Override // scala.DeprecatedConsole
    public void setOutDirect(PrintStream printStream) {
        outVar().value_$eq(printStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T withErr(OutputStream outputStream, Function0<T> function0) {
        return (T) errVar().withValue(new PrintStream(outputStream), function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T withErr(PrintStream printStream, Function0<T> function0) {
        return (T) errVar().withValue(printStream, function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T withIn(InputStream inputStream, Function0<T> function0) {
        return (T) inVar().withValue(new BufferedReader(new InputStreamReader(inputStream)), function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T withIn(Reader reader, Function0<T> function0) {
        return (T) inVar().withValue(new BufferedReader(reader), function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T withOut(OutputStream outputStream, Function0<T> function0) {
        return (T) outVar().withValue(new PrintStream(outputStream), function0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T withOut(PrintStream printStream, Function0<T> function0) {
        return (T) outVar().withValue(printStream, function0);
    }
}
