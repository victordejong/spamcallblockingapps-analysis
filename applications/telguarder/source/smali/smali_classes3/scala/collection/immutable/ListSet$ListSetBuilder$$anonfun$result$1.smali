.class public final Lscala/collection/immutable/ListSet$ListSetBuilder$$anonfun$result$1;
.super Lscala/runtime/AbstractFunction2;
.source "ListSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/ListSet$ListSetBuilder;->result()Lscala/collection/immutable/ListSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "Lscala/collection/immutable/ListSet<",
        "TElem;>;TElem;",
        "Lscala/collection/immutable/ListSet<",
        "TElem;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/immutable/ListSet$ListSetBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListSet$ListSetBuilder<",
            "TElem;>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, Lscala/collection/immutable/ListSet;

    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/ListSet$ListSetBuilder$$anonfun$result$1;->apply(Lscala/collection/immutable/ListSet;Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/immutable/ListSet;Ljava/lang/Object;)Lscala/collection/immutable/ListSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListSet<",
            "TElem;>;TElem;)",
            "Lscala/collection/immutable/ListSet<",
            "TElem;>;"
        }
    .end annotation

    .line 49
    invoke-virtual {p1, p2}, Lscala/collection/immutable/ListSet;->scala$collection$immutable$ListSet$$unchecked_$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    return-object p1
.end method
