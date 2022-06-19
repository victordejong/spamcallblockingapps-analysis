.class public Lscala/util/control/BreakControl;
.super Ljava/lang/Throwable;
.source "Breaks.scala"

# interfaces
.implements Lscala/util/control/ControlThrowable;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001i1A!\u0001\u0002\u0005\u0013\ta!I]3bW\u000e{g\u000e\u001e:pY*\u00111\u0001B\u0001\u0008G>tGO]8m\u0015\t)a!\u0001\u0003vi&d\'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001M\u0019\u0001A\u0003\n\u0011\u0005-yaB\u0001\u0007\u000e\u001b\u00051\u0011B\u0001\u0008\u0007\u0003\u001d\u0001\u0018mY6bO\u0016L!\u0001E\t\u0003\u0013QC\'o\\<bE2,\'B\u0001\u0008\u0007!\t\u0019B#D\u0001\u0003\u0013\t)\"A\u0001\tD_:$(o\u001c7UQJ|w/\u00192mK\")q\u0003\u0001C\u00011\u00051A(\u001b8jiz\"\u0012!\u0007\t\u0003\'\u0001\u0001"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0}, Lscala/util/control/NoStackTrace$class;->$init$(Lscala/util/control/NoStackTrace;)V

    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .line 94
    invoke-static {p0}, Lscala/util/control/NoStackTrace$class;->fillInStackTrace(Lscala/util/control/NoStackTrace;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$util$control$NoStackTrace$$super$fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .line 94
    invoke-super {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method
