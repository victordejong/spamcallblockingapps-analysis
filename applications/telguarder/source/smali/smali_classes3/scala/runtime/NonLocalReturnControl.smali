.class public Lscala/runtime/NonLocalReturnControl;
.super Ljava/lang/Throwable;
.source "NonLocalReturnControl.scala"

# interfaces
.implements Lscala/util/control/ControlThrowable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Throwable;",
        "Lscala/util/control/ControlThrowable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001}2A!\u0001\u0002\u0001\u000f\t)bj\u001c8M_\u000e\u000cGNU3ukJt7i\u001c8ue>d\'BA\u0002\u0005\u0003\u001d\u0011XO\u001c;j[\u0016T\u0011!B\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\tAaeE\u0002\u0001\u0013E\u0001\"A\u0003\u0008\u000f\u0005-aQ\"\u0001\u0003\n\u00055!\u0011a\u00029bG.\u000cw-Z\u0005\u0003\u001fA\u0011\u0011\u0002\u00165s_^\u000c\'\r\\3\u000b\u00055!\u0001C\u0001\n\u0018\u001b\u0005\u0019\"B\u0001\u000b\u0016\u0003\u001d\u0019wN\u001c;s_2T!A\u0006\u0003\u0002\tU$\u0018\u000e\\\u0005\u00031M\u0011\u0001cQ8oiJ|G\u000e\u00165s_^\u000c\'\r\\3\t\u0011i\u0001!Q1A\u0005\u0002m\t1a[3z+\u0005a\u0002CA\u0006\u001e\u0013\tqBA\u0001\u0004B]f\u0014VM\u001a\u0005\tA\u0001\u0011\t\u0011)A\u00059\u0005!1.Z=!\u0011!\u0011\u0003A!b\u0001\n\u0003\u0019\u0013!\u0002<bYV,W#\u0001\u0013\u0011\u0005\u00152C\u0002\u0001\u0003\nO\u0001\u0001\u000b\u0011!AC\u0002!\u0012\u0011\u0001V\t\u0003S1\u0002\"a\u0003\u0016\n\u0005-\"!a\u0002(pi\"Lgn\u001a\t\u0003\u00175J!A\u000c\u0003\u0003\u0007\u0005s\u0017\u0010\u000b\u0002\'aA\u00111\"M\u0005\u0003e\u0011\u00111b\u001d9fG&\u000cG.\u001b>fI\"AA\u0007\u0001B\u0001B\u0003%A%\u0001\u0004wC2,X\r\t\u0005\u0006m\u0001!\taN\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0007aR4\u0008E\u0002:\u0001\u0011j\u0011A\u0001\u0005\u00065U\u0002\r\u0001\u0008\u0005\u0006EU\u0002\r\u0001\n\u0005\u0006{\u0001!)EP\u0001\u0011M&dG.\u00138Ti\u0006\u001c7\u000e\u0016:bG\u0016$\u0012!\u0003"
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lscala/runtime/NonLocalReturnControl;->key:Ljava/lang/Object;

    iput-object p2, p0, Lscala/runtime/NonLocalReturnControl;->value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p0}, Lscala/util/control/NoStackTrace$class;->$init$(Lscala/util/control/NoStackTrace;)V

    return-void
.end method


# virtual methods
.method public final fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    return-object p0
.end method

.method public key()Ljava/lang/Object;
    .locals 1

    .line 14
    iget-object v0, p0, Lscala/runtime/NonLocalReturnControl;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic scala$util$control$NoStackTrace$$super$fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    .line 14
    invoke-super {p0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public specInstance$()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lscala/runtime/NonLocalReturnControl;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public value$mcB$sp()B
    .locals 1

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result v0

    return v0
.end method

.method public value$mcC$sp()C
    .locals 1

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result v0

    return v0
.end method

.method public value$mcD$sp()D
    .locals 2

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public value$mcF$sp()F
    .locals 1

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public value$mcI$sp()I
    .locals 1

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public value$mcJ$sp()J
    .locals 2

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public value$mcS$sp()S
    .locals 1

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result v0

    return v0
.end method

.method public value$mcV$sp()V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    return-void
.end method

.method public value$mcZ$sp()Z
    .locals 1

    .line 14
    invoke-virtual {p0}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
