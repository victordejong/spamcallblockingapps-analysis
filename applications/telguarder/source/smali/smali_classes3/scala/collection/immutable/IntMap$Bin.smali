.class public Lscala/collection/immutable/IntMap$Bin;
.super Lscala/collection/immutable/IntMap;
.source "IntMap.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/IntMap;
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
        "Lscala/collection/immutable/IntMap<",
        "TT;>;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final left:Lscala/collection/immutable/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/IntMap<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mask:I

.field private final prefix:I

.field private final right:Lscala/collection/immutable/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/IntMap<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;)V"
        }
    .end annotation

    .line 78
    iput p1, p0, Lscala/collection/immutable/IntMap$Bin;->prefix:I

    iput p2, p0, Lscala/collection/immutable/IntMap$Bin;->mask:I

    iput-object p3, p0, Lscala/collection/immutable/IntMap$Bin;->left:Lscala/collection/immutable/IntMap;

    iput-object p4, p0, Lscala/collection/immutable/IntMap$Bin;->right:Lscala/collection/immutable/IntMap;

    invoke-direct {p0}, Lscala/collection/immutable/IntMap;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public bin(Lscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/IntMap<",
            "TS;>;",
            "Lscala/collection/immutable/IntMap<",
            "TS;>;)",
            "Lscala/collection/immutable/IntMap<",
            "TS;>;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    if-ne v0, p2, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 81
    :cond_0
    new-instance v0, Lscala/collection/immutable/IntMap$Bin;

    invoke-virtual {p0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v2

    invoke-direct {v0, v1, v2, p1, p2}, Lscala/collection/immutable/IntMap$Bin;-><init>(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)V

    :goto_0
    return-object v0
.end method

.method public copy(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)Lscala/collection/immutable/IntMap$Bin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;)",
            "Lscala/collection/immutable/IntMap$Bin<",
            "TT;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Lscala/collection/immutable/IntMap$Bin;

    invoke-direct {v0, p1, p2, p3, p4}, Lscala/collection/immutable/IntMap$Bin;-><init>(IILscala/collection/immutable/IntMap;Lscala/collection/immutable/IntMap;)V

    return-object v0
.end method

.method public copy$default$1()I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()I"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result v0

    return v0
.end method

.method public copy$default$2()I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()I"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result v0

    return v0
.end method

.method public copy$default$3()Lscala/collection/immutable/IntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$4()Lscala/collection/immutable/IntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;"
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

    move-result-object v0

    return-object v0
.end method

.method public left()Lscala/collection/immutable/IntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lscala/collection/immutable/IntMap$Bin;->left:Lscala/collection/immutable/IntMap;

    return-object v0
.end method

.method public mask()I
    .locals 1

    .line 78
    iget v0, p0, Lscala/collection/immutable/IntMap$Bin;->mask:I

    return v0
.end method

.method public prefix()I
    .locals 1

    .line 78
    iget v0, p0, Lscala/collection/immutable/IntMap$Bin;->prefix:I

    return v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap$Bin;->right()Lscala/collection/immutable/IntMap;

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
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap$Bin;->left()Lscala/collection/immutable/IntMap;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap$Bin;->mask()I

    move-result p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lscala/collection/immutable/IntMap$Bin;->prefix()I

    move-result p1

    :goto_0
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

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

    .line 78
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

.method public right()Lscala/collection/immutable/IntMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IntMap<",
            "TT;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lscala/collection/immutable/IntMap$Bin;->right:Lscala/collection/immutable/IntMap;

    return-object v0
.end method
