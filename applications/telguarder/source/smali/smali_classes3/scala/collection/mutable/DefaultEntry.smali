.class public final Lscala/collection/mutable/DefaultEntry;
.super Ljava/lang/Object;
.source "DefaultEntry.scala"

# interfaces
.implements Lscala/collection/mutable/HashEntry;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/HashEntry<",
        "TA;",
        "Lscala/collection/mutable/DefaultEntry<",
        "TA;TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001)3A!\u0001\u0002\u0003\u0013\taA)\u001a4bk2$XI\u001c;ss*\u00111\u0001B\u0001\u0008[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\rQQ\u0003I\n\u0005\u0001-y!\u0005\u0005\u0002\r\u001b5\ta!\u0003\u0002\u000f\r\t1\u0011I\\=SK\u001a\u0004B\u0001E\t\u0014=5\t!!\u0003\u0002\u0013\u0005\tI\u0001*Y:i\u000b:$(/\u001f\t\u0003)Ua\u0001\u0001B\u0003\u0017\u0001\t\u0007qCA\u0001B#\tA2\u0004\u0005\u0002\r3%\u0011!D\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\taA$\u0003\u0002\u001e\r\t\u0019\u0011I\\=\u0011\tA\u00011c\u0008\t\u0003)\u0001\"Q!\t\u0001C\u0002]\u0011\u0011A\u0011\t\u0003\u0019\rJ!\u0001\n\u0004\u0003\u0019M+\'/[1mSj\u000c\'\r\\3\t\u0011\u0019\u0002!Q1A\u0005\u0002\u001d\n1a[3z+\u0005\u0019\u0002\u0002C\u0015\u0001\u0005\u0003\u0005\u000b\u0011B\n\u0002\t-,\u0017\u0010\t\u0005\tW\u0001\u0011\t\u0019!C\u0001Y\u0005)a/\u00197vKV\tq\u0004\u0003\u0005/\u0001\t\u0005\r\u0011\"\u00010\u0003%1\u0018\r\\;f?\u0012*\u0017\u000f\u0006\u00021gA\u0011A\"M\u0005\u0003e\u0019\u0011A!\u00168ji\"9A\'LA\u0001\u0002\u0004y\u0012a\u0001=%c!Aa\u0007\u0001B\u0001B\u0003&q$\u0001\u0004wC2,X\r\t\u0005\u0006q\u0001!\t!O\u0001\u0007y%t\u0017\u000e\u001e \u0015\u0007yQ4\u0008C\u0003\'o\u0001\u00071\u0003C\u0003,o\u0001\u0007q\u0004C\u0003>\u0001\u0011\u0005c(\u0001\u0005u_N#(/\u001b8h)\u0005y\u0004C\u0001!F\u001b\u0005\t%B\u0001\"D\u0003\u0011a\u0017M\\4\u000b\u0003\u0011\u000bAA[1wC&\u0011a)\u0011\u0002\u0007\'R\u0014\u0018N\\4\t\u000b!\u0003A\u0011A%\u0002\u0017\rD\u0017-\u001b8TiJLgnZ\u000b\u0002\u007f\u0001"
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lscala/collection/mutable/DefaultEntry;->key:Ljava/lang/Object;

    iput-object p2, p0, Lscala/collection/mutable/DefaultEntry;->value:Ljava/lang/Object;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/HashEntry$class;->$init$(Lscala/collection/mutable/HashEntry;)V

    return-void
.end method


# virtual methods
.method public chainString()Ljava/lang/String;
    .locals 3

    .line 22
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "(kv: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/DefaultEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/DefaultEntry;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/mutable/DefaultEntry;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/mutable/DefaultEntry;

    invoke-virtual {v2}, Lscala/collection/mutable/DefaultEntry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lscala/collection/mutable/DefaultEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 16
    iget-object v0, p0, Lscala/collection/mutable/DefaultEntry;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public next_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lscala/collection/mutable/DefaultEntry;->next:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lscala/collection/mutable/DefaultEntry;->chainString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lscala/collection/mutable/DefaultEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public value_$eq(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lscala/collection/mutable/DefaultEntry;->value:Ljava/lang/Object;

    return-void
.end method
