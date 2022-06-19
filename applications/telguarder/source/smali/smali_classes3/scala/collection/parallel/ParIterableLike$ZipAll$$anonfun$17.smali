.class public final Lscala/collection/parallel/ParIterableLike$ZipAll$$anonfun$17;
.super Lscala/runtime/AbstractFunction1;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParIterableLike$ZipAll;->split()Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/IterableSplitter<",
        "TT;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike$ZipAll;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ZipAll<TU;TS;TThat;>;)V"
        }
    .end annotation

    .line 1306
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lscala/collection/parallel/IterableSplitter;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)I"
        }
    .end annotation

    .line 1306
    invoke-interface {p1}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1306
    check-cast p1, Lscala/collection/parallel/IterableSplitter;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$ZipAll$$anonfun$17;->apply(Lscala/collection/parallel/IterableSplitter;)I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
