.class public final Lscala/collection/generic/BitSetFactory$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction2;
.source "BitSetFactory.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/BitSetFactory;->apply(Lscala/collection/Seq;)Lscala/collection/BitSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "TColl;",
        "Ljava/lang/Object;",
        "TColl;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lscala/collection/generic/BitSetFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/BitSetFactory<",
            "TColl;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lscala/collection/BitSet;

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lscala/collection/generic/BitSetFactory$$anonfun$apply$1;->apply(Lscala/collection/BitSet;I)Lscala/collection/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/BitSet;I)Lscala/collection/BitSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TColl;I)TColl;"
        }
    .end annotation

    .line 33
    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lscala/collection/BitSet;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/BitSet;

    return-object p1
.end method
