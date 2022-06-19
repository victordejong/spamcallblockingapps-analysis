.class public final Lscala/Console$;
.super Lscala/DeprecatedConsole;
.source "Console.scala"

# interfaces
.implements Lscala/io/AnsiColor;


# static fields
.field public static final MODULE$:Lscala/Console$;


# instance fields
.field private final errVar:Lscala/util/DynamicVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/util/DynamicVariable<",
            "Ljava/io/PrintStream;",
            ">;"
        }
    .end annotation
.end field

.field private final inVar:Lscala/util/DynamicVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/util/DynamicVariable<",
            "Ljava/io/BufferedReader;",
            ">;"
        }
    .end annotation
.end field

.field private final outVar:Lscala/util/DynamicVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/util/DynamicVariable<",
            "Ljava/io/PrintStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Console$;

    invoke-direct {v0}, Lscala/Console$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 22
    invoke-direct {p0}, Lscala/DeprecatedConsole;-><init>()V

    sput-object p0, Lscala/Console$;->MODULE$:Lscala/Console$;

    invoke-static {p0}, Lscala/io/AnsiColor$class;->$init$(Lscala/io/AnsiColor;)V

    .line 23
    new-instance v0, Lscala/util/DynamicVariable;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lscala/util/DynamicVariable;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lscala/Console$;->outVar:Lscala/util/DynamicVariable;

    .line 24
    new-instance v0, Lscala/util/DynamicVariable;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Lscala/util/DynamicVariable;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lscala/Console$;->errVar:Lscala/util/DynamicVariable;

    .line 25
    new-instance v0, Lscala/util/DynamicVariable;

    .line 26
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 25
    invoke-direct {v0, v1}, Lscala/util/DynamicVariable;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lscala/Console$;->inVar:Lscala/util/DynamicVariable;

    return-void
.end method

.method private errVar()Lscala/util/DynamicVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/DynamicVariable<",
            "Ljava/io/PrintStream;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lscala/Console$;->errVar:Lscala/util/DynamicVariable;

    return-object v0
.end method

.method private inVar()Lscala/util/DynamicVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/DynamicVariable<",
            "Ljava/io/BufferedReader;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lscala/Console$;->inVar:Lscala/util/DynamicVariable;

    return-object v0
.end method

.method private outVar()Lscala/util/DynamicVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/DynamicVariable<",
            "Ljava/io/PrintStream;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lscala/Console$;->outVar:Lscala/util/DynamicVariable;

    return-object v0
.end method


# virtual methods
.method public final BLACK()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[30m"

    return-object v0
.end method

.method public final BLACK_B()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[40m"

    return-object v0
.end method

.method public final BLINK()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[5m"

    return-object v0
.end method

.method public final BLUE()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[34m"

    return-object v0
.end method

.method public final BLUE_B()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[44m"

    return-object v0
.end method

.method public final BOLD()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[1m"

    return-object v0
.end method

.method public final CYAN()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[36m"

    return-object v0
.end method

.method public final CYAN_B()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[46m"

    return-object v0
.end method

.method public final GREEN()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[32m"

    return-object v0
.end method

.method public final GREEN_B()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[42m"

    return-object v0
.end method

.method public final INVISIBLE()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[8m"

    return-object v0
.end method

.method public final MAGENTA()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[35m"

    return-object v0
.end method

.method public final MAGENTA_B()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[45m"

    return-object v0
.end method

.method public final RED()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[31m"

    return-object v0
.end method

.method public final RED_B()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[41m"

    return-object v0
.end method

.method public final RESET()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[0m"

    return-object v0
.end method

.method public final REVERSED()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[7m"

    return-object v0
.end method

.method public final UNDERLINED()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[4m"

    return-object v0
.end method

.method public final WHITE()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[37m"

    return-object v0
.end method

.method public final WHITE_B()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[47m"

    return-object v0
.end method

.method public final YELLOW()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[33m"

    return-object v0
.end method

.method public final YELLOW_B()Ljava/lang/String;
    .locals 1

    const-string v0, "\u001b[43m"

    return-object v0
.end method

.method public err()Ljava/io/PrintStream;
    .locals 1

    .line 35
    invoke-direct {p0}, Lscala/Console$;->errVar()Lscala/util/DynamicVariable;

    move-result-object v0

    invoke-virtual {v0}, Lscala/util/DynamicVariable;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintStream;

    return-object v0
.end method

.method public flush()V
    .locals 1

    .line 138
    invoke-virtual {p0}, Lscala/Console$;->out()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public in()Ljava/io/BufferedReader;
    .locals 1

    .line 37
    invoke-direct {p0}, Lscala/Console$;->inVar()Lscala/util/DynamicVariable;

    move-result-object v0

    invoke-virtual {v0}, Lscala/util/DynamicVariable;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/BufferedReader;

    return-object v0
.end method

.method public out()Ljava/io/PrintStream;
    .locals 1

    .line 33
    invoke-direct {p0}, Lscala/Console$;->outVar()Lscala/util/DynamicVariable;

    move-result-object v0

    invoke-virtual {v0}, Lscala/util/DynamicVariable;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/PrintStream;

    return-object v0
.end method

.method public print(Ljava/lang/Object;)V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lscala/Console$;->out()Ljava/io/PrintStream;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public printf(Ljava/lang/String;Lscala/collection/Seq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lscala/Console$;->out()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/StringOps;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {v1, p1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public println()V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lscala/Console$;->out()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .locals 1

    .line 148
    invoke-virtual {p0}, Lscala/Console$;->out()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public setErrDirect(Ljava/io/PrintStream;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lscala/Console$;->errVar()Lscala/util/DynamicVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/util/DynamicVariable;->value_$eq(Ljava/lang/Object;)V

    return-void
.end method

.method public setInDirect(Ljava/io/BufferedReader;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lscala/Console$;->inVar()Lscala/util/DynamicVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/util/DynamicVariable;->value_$eq(Ljava/lang/Object;)V

    return-void
.end method

.method public setOutDirect(Ljava/io/PrintStream;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lscala/Console$;->outVar()Lscala/util/DynamicVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/util/DynamicVariable;->value_$eq(Ljava/lang/Object;)V

    return-void
.end method

.method public withErr(Ljava/io/OutputStream;Lscala/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/OutputStream;",
            "Lscala/Function0<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 92
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0}, Lscala/Console$;->errVar()Lscala/util/DynamicVariable;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lscala/util/DynamicVariable;->withValue(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public withErr(Ljava/io/PrintStream;Lscala/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintStream;",
            "Lscala/Function0<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lscala/Console$;->errVar()Lscala/util/DynamicVariable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lscala/util/DynamicVariable;->withValue(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public withIn(Ljava/io/InputStream;Lscala/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lscala/Function0<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0}, Lscala/Console$;->inVar()Lscala/util/DynamicVariable;

    move-result-object p1

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1, v1, p2}, Lscala/util/DynamicVariable;->withValue(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public withIn(Ljava/io/Reader;Lscala/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Lscala/Function0<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lscala/Console$;->inVar()Lscala/util/DynamicVariable;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1, p2}, Lscala/util/DynamicVariable;->withValue(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public withOut(Ljava/io/OutputStream;Lscala/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/OutputStream;",
            "Lscala/Function0<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0}, Lscala/Console$;->outVar()Lscala/util/DynamicVariable;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lscala/util/DynamicVariable;->withValue(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public withOut(Ljava/io/PrintStream;Lscala/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintStream;",
            "Lscala/Function0<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lscala/Console$;->outVar()Lscala/util/DynamicVariable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lscala/util/DynamicVariable;->withValue(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
