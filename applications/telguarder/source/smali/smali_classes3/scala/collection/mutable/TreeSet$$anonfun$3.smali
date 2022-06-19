.class public final Lscala/collection/mutable/TreeSet$$anonfun$3;
.super Lscala/runtime/AbstractFunction2;
.source "TreeSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/TreeSet;->iteratorFrom(Lscala/Option;)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "TA;TA;TA;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/mutable/TreeSet;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/TreeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/TreeSet<",
            "TA;>;)V"
        }
    .end annotation

    .line 110
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/mutable/TreeSet$$anonfun$3;->$outer:Lscala/collection/mutable/TreeSet;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)TA;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lscala/collection/mutable/TreeSet$$anonfun$3;->$outer:Lscala/collection/mutable/TreeSet;

    invoke-virtual {v0}, Lscala/collection/mutable/TreeSet;->ordering()Lscala/math/Ordering;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/math/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
