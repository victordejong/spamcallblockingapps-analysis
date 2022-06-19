.class public final Lscala/collection/parallel/mutable/ParHashMapCombiner$$anon$1;
.super Lscala/collection/parallel/mutable/ParHashMapCombiner;
.source "ParHashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/mutable/ParHashMapCombiner$;->apply()Lscala/collection/parallel/mutable/ParHashMapCombiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/parallel/mutable/ParHashMapCombiner<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 301
    sget-object v0, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    invoke-virtual {v0}, Lscala/collection/mutable/HashTable$;->defaultLoadFactor()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/parallel/mutable/ParHashMapCombiner;-><init>(I)V

    return-void
.end method
