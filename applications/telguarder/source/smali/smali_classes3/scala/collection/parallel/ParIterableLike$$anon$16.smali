.class public final Lscala/collection/parallel/ParIterableLike$$anon$16;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/collection/parallel/CombinerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike;->combinerFactory(Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/CombinerFactory<",
        "TS;TThat;>;"
    }
.end annotation


# instance fields
.field private final shared:Lscala/collection/parallel/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/Combiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$$anon$16;->shared:Lscala/collection/parallel/Combiner;

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 585
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$$anon$16;->shared()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public doesShareCombiners()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public shared()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$$anon$16;->shared:Lscala/collection/parallel/Combiner;

    return-object v0
.end method
