.class public final Lscala/io/AnsiColor$;
.super Ljava/lang/Object;
.source "AnsiColor.scala"

# interfaces
.implements Lscala/io/AnsiColor;


# static fields
.field public static final MODULE$:Lscala/io/AnsiColor$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/io/AnsiColor$;

    invoke-direct {v0}, Lscala/io/AnsiColor$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/io/AnsiColor$;->MODULE$:Lscala/io/AnsiColor$;

    invoke-static {p0}, Lscala/io/AnsiColor$class;->$init$(Lscala/io/AnsiColor;)V

    return-void
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
