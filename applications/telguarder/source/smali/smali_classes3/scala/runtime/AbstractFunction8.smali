.class public abstract Lscala/runtime/AbstractFunction8;
.super Ljava/lang/Object;
.source "AbstractFunction8.scala"

# interfaces
.implements Lscala/Function8;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "T4:",
        "Ljava/lang/Object;",
        "T5:",
        "Ljava/lang/Object;",
        "T6:",
        "Ljava/lang/Object;",
        "T7:",
        "Ljava/lang/Object;",
        "T8:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Function8<",
        "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TR;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001a2Q!\u0001\u0002\u0002\u0002\u001d\u0011\u0011#\u00112tiJ\u000c7\r\u001e$v]\u000e$\u0018n\u001c89\u0015\t\u0019A!A\u0004sk:$\u0018.\\3\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!\u0006\u0006\t%qy\"%\n\u0015,]E\u001a2\u0001A\u0005\u000e!\tQ1\"D\u0001\u0005\u0013\taAA\u0001\u0004B]f\u0014VM\u001a\t\u000c\u00159\u00012DH\u0011%O)j\u0003\'\u0003\u0002\u0010\t\tIa)\u001e8di&|g\u000e\u000f\t\u0003#Ia\u0001\u0001\u0002\u0004\u0014\u0001!\u0015\r\u0001\u0006\u0002\u0003)F\n\"!\u0006\r\u0011\u0005)1\u0012BA\u000c\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"AC\r\n\u0005i!!aA!osB\u0011\u0011\u0003\u0008\u0003\u0007;\u0001A)\u0019\u0001\u000b\u0003\u0005Q\u0013\u0004CA\t \t\u0019\u0001\u0003\u0001#b\u0001)\t\u0011Ak\r\t\u0003#\t\"aa\t\u0001\t\u0006\u0004!\"A\u0001+5!\t\tR\u0005\u0002\u0004\'\u0001!\u0015\r\u0001\u0006\u0002\u0003)V\u0002\"!\u0005\u0015\u0005\r%\u0002\u0001R1\u0001\u0015\u0005\t!f\u0007\u0005\u0002\u0012W\u00111A\u0006\u0001EC\u0002Q\u0011!\u0001V\u001c\u0011\u0005EqCAB\u0018\u0001\u0011\u000b\u0007AC\u0001\u0002UqA\u0011\u0011#\r\u0003\u0007e\u0001!)\u0019\u0001\u000b\u0003\u0003ICQ\u0001\u000e\u0001\u0005\u0002U\na\u0001P5oSRtD#\u0001\u001c\u0011\u0017]\u0002\u0001c\u0007\u0010\"I\u001dRS\u0006M\u0007\u0002\u0005\u0001"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Function8$class;->$init$(Lscala/Function8;)V

    return-void
.end method


# virtual methods
.method public curried()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "TT1;",
            "Lscala/Function1<",
            "TT2;",
            "Lscala/Function1<",
            "TT3;",
            "Lscala/Function1<",
            "TT4;",
            "Lscala/Function1<",
            "TT5;",
            "Lscala/Function1<",
            "TT6;",
            "Lscala/Function1<",
            "TT7;",
            "Lscala/Function1<",
            "TT8;TR;>;>;>;>;>;>;>;>;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lscala/Function8$class;->curried(Lscala/Function8;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 12
    invoke-static {p0}, Lscala/Function8$class;->toString(Lscala/Function8;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tupled()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "Lscala/Tuple8<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;TR;>;"
        }
    .end annotation

    .line 12
    invoke-static {p0}, Lscala/Function8$class;->tupled(Lscala/Function8;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method
