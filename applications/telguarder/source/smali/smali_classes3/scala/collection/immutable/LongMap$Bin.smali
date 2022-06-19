.class public Lscala/collection/immutable/LongMap$Bin;
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
    name = "Bin"
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
.field private final left:Lscala/collection/immutable/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/LongMap<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mask:J

.field private final prefix:J

.field private final right:Lscala/collection/immutable/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/LongMap<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;)V"
        }
    .end annotation

    .line 73
    iput-wide p1, p0, Lscala/collection/immutable/LongMap$Bin;->prefix:J

    iput-wide p3, p0, Lscala/collection/immutable/LongMap$Bin;->mask:J

    iput-object p5, p0, Lscala/collection/immutable/LongMap$Bin;->left:Lscala/collection/immutable/LongMap;

    iput-object p6, p0, Lscala/collection/immutable/LongMap$Bin;->right:Lscala/collection/immutable/LongMap;

    invoke-direct {p0}, Lscala/collection/immutable/LongMap;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public bin(Lscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/LongMap<",
            "TS;>;",
            "Lscala/collection/immutable/LongMap<",
            "TS;>;)",
            "Lscala/collection/immutable/LongMap<",
            "TS;>;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v0

    if-ne v0, p2, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Lscala/collection/immutable/LongMap$Bin;

    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v2

    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v4

    move-object v1, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lscala/collection/immutable/LongMap$Bin;-><init>(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)V

    :goto_0
    return-object v0
.end method

.method public copy(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)Lscala/collection/immutable/LongMap$Bin;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(JJ",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;)",
            "Lscala/collection/immutable/LongMap$Bin<",
            "TT;>;"
        }
    .end annotation

    .line 73
    new-instance v7, Lscala/collection/immutable/LongMap$Bin;

    move-object v0, v7

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lscala/collection/immutable/LongMap$Bin;-><init>(JJLscala/collection/immutable/LongMap;Lscala/collection/immutable/LongMap;)V

    return-object v7
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

    .line 73
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v0

    return-wide v0
.end method

.method public copy$default$2()J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()J"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v0

    return-wide v0
.end method

.method public copy$default$3()Lscala/collection/immutable/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$4()Lscala/collection/immutable/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object v0

    return-object v0
.end method

.method public left()Lscala/collection/immutable/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lscala/collection/immutable/LongMap$Bin;->left:Lscala/collection/immutable/LongMap;

    return-object v0
.end method

.method public mask()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lscala/collection/immutable/LongMap$Bin;->mask:J

    return-wide v0
.end method

.method public prefix()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lscala/collection/immutable/LongMap$Bin;->prefix:J

    return-wide v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Bin;->right()Lscala/collection/immutable/LongMap;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Bin;->left()Lscala/collection/immutable/LongMap;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Bin;->mask()J

    move-result-wide v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lscala/collection/immutable/LongMap$Bin;->prefix()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1
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

    .line 73
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Bin"

    return-object v0
.end method

.method public right()Lscala/collection/immutable/LongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/LongMap<",
            "TT;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lscala/collection/immutable/LongMap$Bin;->right:Lscala/collection/immutable/LongMap;

    return-object v0
.end method
