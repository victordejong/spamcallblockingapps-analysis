.class public final Lscala/collection/immutable/TrieIterator$$anonfun$collisionToArray$2;
.super Lscala/runtime/AbstractFunction1;
.source "TrieIterator.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/TrieIterator;->collisionToArray(Lscala/collection/immutable/Iterable;)[Lscala/collection/immutable/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Lscala/collection/immutable/HashSet<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/immutable/TrieIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/TrieIterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/immutable/TrieIterator$$anonfun$collisionToArray$2;->apply(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/immutable/HashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 47
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/immutable/HashSet$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/HashSet;

    return-object p1
.end method
