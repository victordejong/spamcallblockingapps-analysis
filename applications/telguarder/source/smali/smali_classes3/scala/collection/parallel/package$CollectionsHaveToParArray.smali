.class public Lscala/collection/parallel/package$CollectionsHaveToParArray;
.super Ljava/lang/Object;
.source "package.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionsHaveToParArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final asGto:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TC;",
            "Lscala/collection/GenTraversableOnce<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Lscala/Function1<",
            "TC;",
            "Lscala/collection/GenTraversableOnce<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lscala/collection/parallel/package$CollectionsHaveToParArray;->c:Ljava/lang/Object;

    iput-object p2, p0, Lscala/collection/parallel/package$CollectionsHaveToParArray;->asGto:Lscala/Function1;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toParArray()Lscala/collection/parallel/mutable/ParArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lscala/collection/parallel/package$CollectionsHaveToParArray;->asGto:Lscala/Function1;

    iget-object v1, p0, Lscala/collection/parallel/package$CollectionsHaveToParArray;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/GenTraversableOnce;

    .line 60
    instance-of v1, v0, Lscala/collection/parallel/mutable/ParArray;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/parallel/mutable/ParArray;

    goto :goto_1

    .line 62
    :cond_0
    invoke-interface {v0}, Lscala/collection/GenTraversableOnce;->toIterator()Lscala/collection/Iterator;

    move-result-object v0

    .line 63
    sget-object v1, Lscala/collection/parallel/mutable/package$;->MODULE$:Lscala/collection/parallel/mutable/package$;

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/package$;->ParArrayCombiner()Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner$;->apply()Lscala/collection/parallel/mutable/ResizableParArrayCombiner;

    move-result-object v1

    .line 64
    :goto_0
    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/LazyCombiner;

    goto :goto_0

    .line 65
    :cond_1
    invoke-interface {v1}, Lscala/collection/parallel/mutable/ResizableParArrayCombiner;->result()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/mutable/ParArray;

    :goto_1
    return-object v0
.end method
