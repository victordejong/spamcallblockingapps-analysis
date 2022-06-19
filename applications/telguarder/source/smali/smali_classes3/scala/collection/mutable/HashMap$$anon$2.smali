.class public final Lscala/collection/mutable/HashMap$$anon$2;
.super Lscala/collection/MapLike$DefaultValuesIterable;
.source "HashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/HashMap;->values()Lscala/collection/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/MapLike<",
        "TA;TB;",
        "Lscala/collection/mutable/HashMap<",
        "TA;TB;>;>.DefaultValuesIterable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/HashMap;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashMap<",
            "TA;TB;>;)V"
        }
    .end annotation

    .line 107
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/HashMap$$anon$2;->$outer:Lscala/collection/mutable/HashMap;

    invoke-direct {p0, p1}, Lscala/collection/MapLike$DefaultValuesIterable;-><init>(Lscala/collection/MapLike;)V

    return-void
.end method


# virtual methods
.method public foreach(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TC;>;)V"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lscala/collection/mutable/HashMap$$anon$2;->$outer:Lscala/collection/mutable/HashMap;

    new-instance v1, Lscala/collection/mutable/HashMap$$anon$2$$anonfun$foreach$3;

    invoke-direct {v1, p0, p1}, Lscala/collection/mutable/HashMap$$anon$2$$anonfun$foreach$3;-><init>(Lscala/collection/mutable/HashMap$$anon$2;Lscala/Function1;)V

    invoke-virtual {v0, v1}, Lscala/collection/mutable/HashMap;->foreachEntry(Lscala/Function1;)V

    return-void
.end method
