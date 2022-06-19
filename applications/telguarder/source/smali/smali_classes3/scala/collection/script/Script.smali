.class public Lscala/collection/script/Script;
.super Lscala/collection/mutable/ArrayBuffer;
.source "Message.scala"

# interfaces
.implements Lscala/collection/script/Message;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/ArrayBuffer<",
        "Lscala/collection/script/Message<",
        "TA;>;>;",
        "Lscala/collection/script/Message<",
        "TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001]2A!\u0001\u0002\u0001\u0013\t11k\u0019:jaRT!a\u0001\u0003\u0002\rM\u001c\'/\u001b9u\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\tQqcE\u0002\u0001\u0017E\u00012\u0001D\u0008\u0012\u001b\u0005i!B\u0001\u0008\u0005\u0003\u001diW\u000f^1cY\u0016L!\u0001E\u0007\u0003\u0017\u0005\u0013(/Y=Ck\u001a4WM\u001d\t\u0004%M)R\"\u0001\u0002\n\u0005Q\u0011!aB\'fgN\u000cw-\u001a\t\u0003-]a\u0001\u0001B\u0003\u0019\u0001\t\u0007\u0011DA\u0001B#\tQb\u0004\u0005\u0002\u001c95\ta!\u0003\u0002\u001e\r\t9aj\u001c;iS:<\u0007CA\u000e \u0013\t\u0001cAA\u0002B]fDQA\t\u0001\u0005\u0002\r\na\u0001P5oSRtD#\u0001\u0013\u0011\u0007I\u0001Q\u0003C\u0003\'\u0001\u0011\u0005s%\u0001\u0005u_N#(/\u001b8h)\u0005A\u0003CA\u0015-\u001d\tY\"&\u0003\u0002,\r\u00051\u0001K]3eK\u001aL!!\u000c\u0018\u0003\rM#(/\u001b8h\u0015\tYc\u0001\u000b\u0003\u0001aM*\u0004CA\u000e2\u0013\t\u0011dA\u0001\u0006eKB\u0014XmY1uK\u0012\u000c\u0013\u0001N\u0001\u0019\'\u000e\u0014\u0018\u000e\u001d;j]\u001e\u0004\u0013n\u001d\u0011eKB\u0014XmY1uK\u0012t\u0013%\u0001\u001c\u0002\rIr\u0013\'\r\u00181\u0001"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 79
    invoke-virtual {p0}, Lscala/collection/script/Script;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Script("

    const/4 v3, 0x1

    .line 81
    :goto_0
    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    if-le v3, v1, :cond_0

    .line 83
    new-instance v4, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v4}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    :cond_0
    new-instance v4, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v4}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    const-string v4, "["

    invoke-virtual {v2, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    const-string v4, "] "

    invoke-virtual {v2, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
