.class public Lscala/collection/immutable/LongMap$Tip;
.super Lscala/collection/immutable/LongMap;
.source "LongMap.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/LongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tip"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/LongMap<",
        "TT;>;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final key:J

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    .line 68
    iput-wide p1, p0, Lscala/collection/immutable/LongMap$Tip;->key:J

    iput-object p3, p0, Lscala/collection/immutable/LongMap$Tip;->value:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/collection/immutable/LongMap;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public copy(JLjava/lang/Object;)Lscala/collection/immutable/LongMap$Tip;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(JTT;)",
            "Lscala/collection/immutable/LongMap$Tip<",
            "TT;>;"
        }
    .end annotation

    .line 68
    new-instance v0, Lscala/collection/immutable/LongMap$Tip;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/immutable/LongMap$Tip;-><init>(JLjava/lang/Object;)V

    return-object v0
.end method

.method public copy$default$1()J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()J"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v0

    return-wide v0
.end method

.method public copy$default$2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public key()J
    .locals 2

    .line 68
    iget-wide v0, p0, Lscala/collection/immutable/LongMap$Tip;->key:J

    return-wide v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v0

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 68
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Tip"

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lscala/collection/immutable/LongMap$Tip;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public withValue(Ljava/lang/Object;)Lscala/collection/immutable/LongMap$Tip;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;)",
            "Lscala/collection/immutable/LongMap$Tip<",
            "TS;>;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Tip;->value()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Lscala/collection/immutable/LongMap$Tip;

    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Tip;->key()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Lscala/collection/immutable/LongMap$Tip;-><init>(JLjava/lang/Object;)V

    :goto_0
    return-object v0
.end method
