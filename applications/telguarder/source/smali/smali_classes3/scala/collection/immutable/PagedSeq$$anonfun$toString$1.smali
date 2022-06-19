.class public final Lscala/collection/immutable/PagedSeq$$anonfun$toString$1;
.super Lscala/runtime/AbstractFunction1;
.source "PagedSeq.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/PagedSeq;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TT;",
        "Lscala/collection/mutable/StringBuilder;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final buf$1:Lscala/collection/mutable/StringBuilder;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/PagedSeq;Lscala/collection/mutable/StringBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/PagedSeq<",
            "TT;>;)V"
        }
    .end annotation

    .line 210
    iput-object p2, p0, Lscala/collection/immutable/PagedSeq$$anonfun$toString$1;->buf$1:Lscala/collection/mutable/StringBuilder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 210
    invoke-virtual {p0, p1}, Lscala/collection/immutable/PagedSeq$$anonfun$toString$1;->apply(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lscala/collection/mutable/StringBuilder;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lscala/collection/immutable/PagedSeq$$anonfun$toString$1;->buf$1:Lscala/collection/mutable/StringBuilder;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method
