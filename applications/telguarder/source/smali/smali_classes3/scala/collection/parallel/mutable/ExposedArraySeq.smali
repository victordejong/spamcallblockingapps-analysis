.class public Lscala/collection/parallel/mutable/ExposedArraySeq;
.super Lscala/collection/mutable/ArraySeq;
.source "package.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/ArraySeq<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001!3Q!\u0001\u0002\u0001\u0005)\u0011q\"\u0012=q_N,G-\u0011:sCf\u001cV-\u001d\u0006\u0003\u0007\u0011\tq!\\;uC\ndWM\u0003\u0002\u0006\r\u0005A\u0001/\u0019:bY2,GN\u0003\u0002\u0008\u0011\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003%\tQa]2bY\u0006,\"aC\n\u0014\u0005\u0001a\u0001cA\u0007\u0010#5\taB\u0003\u0002\u0004\r%\u0011\u0001C\u0004\u0002\t\u0003J\u0014\u0018-_*fcB\u0011!c\u0005\u0007\u0001\t\u0015!\u0002A1\u0001\u0017\u0005\u0005!6\u0001A\t\u0003/m\u0001\"\u0001G\r\u000e\u0003!I!A\u0007\u0005\u0003\u000f9{G\u000f[5oOB\u0011\u0001\u0004H\u0005\u0003;!\u00111!\u00118z\u0011!y\u0002A!A!\u0002\u0013\u0001\u0013aA1seB\u0019\u0001$I\u0012\n\u0005\tB!!B!se\u0006L\u0008C\u0001\r%\u0013\t)\u0003B\u0001\u0004B]f\u0014VM\u001a\u0005\nO\u0001\u0011\t\u0011)A\u0005Q-\n!a\u001d>\u0011\u0005aI\u0013B\u0001\u0016\t\u0005\rIe\u000e^\u0005\u0003Y=\ta\u0001\\3oORD\u0007\"\u0002\u0018\u0001\t\u0003y\u0013A\u0002\u001fj]&$h\u0008F\u00021eM\u00022!\r\u0001\u0012\u001b\u0005\u0011\u0001\"B\u0010.\u0001\u0004\u0001\u0003\"B\u0014.\u0001\u0004A\u0003bB\u001b\u0001\u0005\u0004%\tEN\u0001\u0006CJ\u0014\u0018-_\u000b\u0002A!1\u0001\u0008\u0001Q\u0001\n\u0001\na!\u0019:sCf\u0004\u0003b\u0002\u0017\u0001\u0005\u0004%\tEO\u000b\u0002Q!1A\u0008\u0001Q\u0001\n!\nq\u0001\\3oORD\u0007\u0005C\u0003?\u0001\u0011\u0005s(\u0001\u0007tiJLgn\u001a)sK\u001aL\u00070F\u0001A!\t\te)D\u0001C\u0015\t\u0019E)\u0001\u0003mC:<\'\"A#\u0002\t)\u000cg/Y\u0005\u0003\u000f\n\u0013aa\u0015;sS:<\u0007"
.end annotation


# instance fields
.field private final array:[Ljava/lang/Object;

.field private final length:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p2}, Lscala/collection/mutable/ArraySeq;-><init>(I)V

    .line 73
    iput-object p1, p0, Lscala/collection/parallel/mutable/ExposedArraySeq;->array:[Ljava/lang/Object;

    .line 74
    invoke-super {p0}, Lscala/collection/mutable/ArraySeq;->length()I

    move-result p1

    iput p1, p0, Lscala/collection/parallel/mutable/ExposedArraySeq;->length:I

    return-void
.end method


# virtual methods
.method public array()[Ljava/lang/Object;
    .locals 1

    .line 73
    iget-object v0, p0, Lscala/collection/parallel/mutable/ExposedArraySeq;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 74
    iget v0, p0, Lscala/collection/parallel/mutable/ExposedArraySeq;->length:I

    return v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "ArraySeq"

    return-object v0
.end method
