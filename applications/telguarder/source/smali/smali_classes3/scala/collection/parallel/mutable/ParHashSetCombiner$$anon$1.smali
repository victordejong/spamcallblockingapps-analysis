.class public final Lscala/collection/parallel/mutable/ParHashSetCombiner$$anon$1;
.super Lscala/collection/parallel/mutable/ParHashSetCombiner;
.source "ParHashSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParHashSetCombiner$;->apply()Lscala/collection/parallel/mutable/ParHashSetCombiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/parallel/mutable/ParHashSetCombiner<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 327
    sget-object v0, Lscala/collection/mutable/FlatHashTable$;->MODULE$:Lscala/collection/mutable/FlatHashTable$;

    invoke-virtual {v0}, Lscala/collection/mutable/FlatHashTable$;->defaultLoadFactor()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/parallel/mutable/ParHashSetCombiner;-><init>(I)V

    return-void
.end method
