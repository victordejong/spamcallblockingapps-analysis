.class public final Lscala/sys/process/ProcessIO;
.super Ljava/lang/Object;
.source "ProcessIO.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001Y3A!\u0001\u0002\u0003\u0013\tI\u0001K]8dKN\u001c\u0018j\u0014\u0006\u0003\u0007\u0011\tq\u0001\u001d:pG\u0016\u001c8O\u0003\u0002\u0006\r\u0005\u00191/_:\u000b\u0003\u001d\tQa]2bY\u0006\u001c\u0001a\u0005\u0002\u0001\u0015A\u00111\u0002D\u0007\u0002\r%\u0011QB\u0002\u0002\u0007\u0003:L(+\u001a4\t\u0011=\u0001!Q1A\u0005\u0002A\t!b\u001e:ji\u0016Le\u000e];u+\u0005\t\u0002\u0003B\u0006\u0013)qI!a\u0005\u0004\u0003\u0013\u0019+hn\u0019;j_:\u000c\u0004CA\u000b\u001a\u001d\t1r#D\u0001\u0003\u0013\tA\"!A\u0008qe>\u001cWm]:J]R,\'O\\1m\u0013\tQ2D\u0001\u0007PkR\u0004X\u000f^*ue\u0016\u000cWN\u0003\u0002\u0019\u0005A\u00111\"H\u0005\u0003=\u0019\u0011A!\u00168ji\"A\u0001\u0005\u0001B\u0001B\u0003%\u0011#A\u0006xe&$X-\u00138qkR\u0004\u0003\u0002\u0003\u0012\u0001\u0005\u000b\u0007I\u0011A\u0012\u0002\u001bA\u0014xnY3tg>+H\u000f];u+\u0005!\u0003\u0003B\u0006\u0013Kq\u0001\"!\u0006\u0014\n\u0005\u001dZ\"aC%oaV$8\u000b\u001e:fC6D\u0001\"\u000b\u0001\u0003\u0002\u0003\u0006I\u0001J\u0001\u000faJ|7-Z:t\u001fV$\u0008/\u001e;!\u0011!Y\u0003A!b\u0001\n\u0003\u0019\u0013\u0001\u00049s_\u000e,7o]#se>\u0014\u0008\u0002C\u0017\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u0013\u0002\u001bA\u0014xnY3tg\u0016\u0013(o\u001c:!\u0011!y\u0003A!b\u0001\n\u0003\u0001\u0014\u0001\u00053bK6|g.\u001b>f)\"\u0014X-\u00193t+\u0005\t\u0004CA\u00063\u0013\t\u0019dAA\u0004C_>dW-\u00198\t\u0011U\u0002!\u0011!Q\u0001\nE\n\u0011\u0003Z1f[>t\u0017N_3UQJ,\u0017\rZ:!\u0011\u00159\u0004\u0001\"\u00019\u0003\u0019a\u0014N\\5u}Q)\u0011HO\u001e={A\u0011a\u0003\u0001\u0005\u0006\u001fY\u0002\r!\u0005\u0005\u0006EY\u0002\r\u0001\n\u0005\u0006WY\u0002\r\u0001\n\u0005\u0006_Y\u0002\r!\r\u0005\u0006o\u0001!\ta\u0010\u000b\u0005s\u0001\u0013E\tC\u0003B}\u0001\u0007\u0011#\u0001\u0002j]\")1I\u0010a\u0001I\u0005\u0019q.\u001e;\t\u000b\u0015s\u0004\u0019\u0001\u0013\u0002\u0007\u0015\u0014(\u000fC\u0003H\u0001\u0011\u0005\u0001*A\u0005xSRD\u0017J\u001c9viR\u0011\u0011(\u0013\u0005\u0006\u0015\u001a\u0003\r!E\u0001\u0006oJLG/\u001a\u0005\u0006\u0019\u0002!\t!T\u0001\u000bo&$\u0008nT;uaV$HCA\u001dO\u0011\u0015\u00191\n1\u0001%\u0011\u0015\u0001\u0006\u0001\"\u0001R\u0003%9\u0018\u000e\u001e5FeJ|\'\u000f\u0006\u0002:%\")1a\u0014a\u0001I!)A\u000b\u0001C\u0001+\u0006QA-Y3n_:L\'0\u001a3\u0015\u0003e\u0002"
.end annotation


# instance fields
.field private final daemonizeThreads:Z

.field private final processError:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final processOutput:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final writeInput:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "Ljava/io/OutputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/Function1;Lscala/Function1;Lscala/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/io/OutputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, v0}, Lscala/sys/process/ProcessIO;-><init>(Lscala/Function1;Lscala/Function1;Lscala/Function1;Z)V

    return-void
.end method

.method public constructor <init>(Lscala/Function1;Lscala/Function1;Lscala/Function1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/io/OutputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;Z)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lscala/sys/process/ProcessIO;->writeInput:Lscala/Function1;

    .line 51
    iput-object p2, p0, Lscala/sys/process/ProcessIO;->processOutput:Lscala/Function1;

    .line 52
    iput-object p3, p0, Lscala/sys/process/ProcessIO;->processError:Lscala/Function1;

    .line 53
    iput-boolean p4, p0, Lscala/sys/process/ProcessIO;->daemonizeThreads:Z

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public daemonizeThreads()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lscala/sys/process/ProcessIO;->daemonizeThreads:Z

    return v0
.end method

.method public daemonized()Lscala/sys/process/ProcessIO;
    .locals 5

    .line 67
    new-instance v0, Lscala/sys/process/ProcessIO;

    invoke-virtual {p0}, Lscala/sys/process/ProcessIO;->writeInput()Lscala/Function1;

    move-result-object v1

    invoke-virtual {p0}, Lscala/sys/process/ProcessIO;->processOutput()Lscala/Function1;

    move-result-object v2

    invoke-virtual {p0}, Lscala/sys/process/ProcessIO;->processError()Lscala/Function1;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lscala/sys/process/ProcessIO;-><init>(Lscala/Function1;Lscala/Function1;Lscala/Function1;Z)V

    return-object v0
.end method

.method public processError()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lscala/sys/process/ProcessIO;->processError:Lscala/Function1;

    return-object v0
.end method

.method public processOutput()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lscala/sys/process/ProcessIO;->processOutput:Lscala/Function1;

    return-object v0
.end method

.method public withError(Lscala/Function1;)Lscala/sys/process/ProcessIO;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/sys/process/ProcessIO;"
        }
    .end annotation

    .line 64
    new-instance v0, Lscala/sys/process/ProcessIO;

    invoke-virtual {p0}, Lscala/sys/process/ProcessIO;->writeInput()Lscala/Function1;

    move-result-object v1

    invoke-virtual {p0}, Lscala/sys/process/ProcessIO;->processOutput()Lscala/Function1;

    move-result-object v2

    invoke-virtual {p0}, Lscala/sys/process/ProcessIO;->daemonizeThreads()Z

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Lscala/sys/process/ProcessIO;-><init>(Lscala/Function1;Lscala/Function1;Lscala/Function1;Z)V

    return-object v0
.end method

.method public withInput(Lscala/Function1;)Lscala/sys/process/ProcessIO;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/io/OutputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/sys/process/ProcessIO;"
        }
    .end annotation

    .line 58
    new-instance v0, Lscala/sys/process/ProcessIO;

    invoke-virtual {p0}, Lscala/sys/process/ProcessIO;->processOutput()Lscala/Function1;

    move-result-object v1

    invoke-virtual {p0}, Lscala/sys/process/ProcessIO;->processError()Lscala/Function1;

    move-result-object v2

    invoke-virtual {p0}, Lscala/sys/process/ProcessIO;->daemonizeThreads()Z

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lscala/sys/process/ProcessIO;-><init>(Lscala/Function1;Lscala/Function1;Lscala/Function1;Z)V

    return-object v0
.end method

.method public withOutput(Lscala/Function1;)Lscala/sys/process/ProcessIO;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Ljava/io/InputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/sys/process/ProcessIO;"
        }
    .end annotation

    .line 61
    new-instance v0, Lscala/sys/process/ProcessIO;

    invoke-virtual {p0}, Lscala/sys/process/ProcessIO;->writeInput()Lscala/Function1;

    move-result-object v1

    invoke-virtual {p0}, Lscala/sys/process/ProcessIO;->processError()Lscala/Function1;

    move-result-object v2

    invoke-virtual {p0}, Lscala/sys/process/ProcessIO;->daemonizeThreads()Z

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lscala/sys/process/ProcessIO;-><init>(Lscala/Function1;Lscala/Function1;Lscala/Function1;Z)V

    return-object v0
.end method

.method public writeInput()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Ljava/io/OutputStream;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lscala/sys/process/ProcessIO;->writeInput:Lscala/Function1;

    return-object v0
.end method
