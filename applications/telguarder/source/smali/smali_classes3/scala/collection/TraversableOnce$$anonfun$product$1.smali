.class public final Lscala/collection/TraversableOnce$$anonfun$product$1;
.super Lscala/runtime/AbstractFunction2;
.source "TraversableOnce.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableOnce;->product(Lscala/math/Numeric;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "TB;TB;TB;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final num$2:Lscala/math/Numeric;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)V"
        }
    .end annotation

    .line 216
    iput-object p2, p0, Lscala/collection/TraversableOnce$$anonfun$product$1;->num$2:Lscala/math/Numeric;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;TB;)TB;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lscala/collection/TraversableOnce$$anonfun$product$1;->num$2:Lscala/math/Numeric;

    invoke-interface {v0, p1, p2}, Lscala/math/Numeric;->times(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
