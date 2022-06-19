.class public final Lscala/collection/Iterator$ConcatIterator$$anonfun$$plus$plus$1;
.super Lscala/runtime/AbstractFunction0;
.source "Iterator.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator$ConcatIterator;->$plus$plus(Lscala/Function0;)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/Iterator<",
        "TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final that$1:Lscala/Function0;


# direct methods
.method public constructor <init>(Lscala/collection/Iterator$ConcatIterator;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator$ConcatIterator<",
            "TA;>;)V"
        }
    .end annotation

    .line 188
    iput-object p2, p0, Lscala/collection/Iterator$ConcatIterator$$anonfun$$plus$plus$1;->that$1:Lscala/Function0;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 188
    invoke-virtual {p0}, Lscala/collection/Iterator$ConcatIterator$$anonfun$$plus$plus$1;->apply()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lscala/collection/Iterator$ConcatIterator$$anonfun$$plus$plus$1;->that$1:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/GenTraversableOnce;

    invoke-interface {v0}, Lscala/collection/GenTraversableOnce;->toIterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method
