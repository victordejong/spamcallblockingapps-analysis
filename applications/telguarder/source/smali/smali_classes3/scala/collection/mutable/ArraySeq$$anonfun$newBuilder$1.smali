.class public final Lscala/collection/mutable/ArraySeq$$anonfun$newBuilder$1;
.super Lscala/runtime/AbstractFunction1;
.source "ArraySeq.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ArraySeq$;->newBuilder()Lscala/collection/mutable/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/mutable/ArrayBuffer<",
        "TA;>;",
        "Lscala/collection/mutable/ArraySeq<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 110
    check-cast p1, Lscala/collection/mutable/ArrayBuffer;

    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArraySeq$$anonfun$newBuilder$1;->apply(Lscala/collection/mutable/ArrayBuffer;)Lscala/collection/mutable/ArraySeq;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/mutable/ArrayBuffer;)Lscala/collection/mutable/ArraySeq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ArrayBuffer<",
            "TA;>;)",
            "Lscala/collection/mutable/ArraySeq<",
            "TA;>;"
        }
    .end annotation

    .line 111
    new-instance v0, Lscala/collection/mutable/ArraySeq;

    invoke-virtual {p1}, Lscala/collection/mutable/ArrayBuffer;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/ArraySeq;-><init>(I)V

    .line 112
    invoke-virtual {v0}, Lscala/collection/mutable/ArraySeq;->array()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lscala/collection/mutable/ArrayBuffer;->copyToArray(Ljava/lang/Object;I)V

    return-object v0
.end method
