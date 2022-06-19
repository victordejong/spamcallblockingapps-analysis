package scala.p029io;

import scala.p029io.AnsiColor;
/* renamed from: scala.io.AnsiColor$ */
/* loaded from: classes3-dex2jar.jar:scala/io/AnsiColor$.class */
public final class AnsiColor$ implements AnsiColor {
    public static final AnsiColor$ MODULE$ = null;

    static {
        new AnsiColor$();
    }

    private AnsiColor$() {
        MODULE$ = this;
        AnsiColor.Cclass.$init$(this);
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
}
