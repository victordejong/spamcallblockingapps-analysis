.class public abstract Lcom/esotericsoftware/kryo/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private acceptsNull:Z

.field private immutable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/h;->acceptsNull:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/h;->acceptsNull:Z

    .line 42
    iput-boolean p2, p0, Lcom/esotericsoftware/kryo/h;->immutable:Z

    return-void
.end method


# virtual methods
.method public copy(Lcom/esotericsoftware/kryo/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "TT;)TT;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/h;->isImmutable()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    .line 96
    :cond_0
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Serializer does not support copy: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAcceptsNull()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/h;->acceptsNull:Z

    return v0
.end method

.method public isImmutable()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/esotericsoftware/kryo/h;->immutable:Z

    return v0
.end method

.method public abstract read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Lcom/esotericsoftware/kryo/a/a;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation
.end method

.method public setAcceptsNull(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/h;->acceptsNull:Z

    return-void
.end method

.method public setImmutable(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/h;->immutable:Z

    return-void
.end method

.method public abstract write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Lcom/esotericsoftware/kryo/a/c;",
            "TT;)V"
        }
    .end annotation
.end method
