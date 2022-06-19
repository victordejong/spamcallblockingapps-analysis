.class public final Lscala/collection/TraversableOnce$$anonfun$max$1;
.super Lscala/runtime/AbstractFunction2;
.source "TraversableOnce.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableOnce;->max(Lscala/math/Ordering;)Ljava/lang/Object;
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
.field private final cmp$2:Lscala/math/Ordering;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableOnce;Lscala/math/Ordering;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)V"
        }
    .end annotation

    .line 229
    iput-object p2, p0, Lscala/collection/TraversableOnce$$anonfun$max$1;->cmp$2:Lscala/math/Ordering;

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

    .line 229
    iget-object v0, p0, Lscala/collection/TraversableOnce$$anonfun$max$1;->cmp$2:Lscala/math/Ordering;

    invoke-interface {v0, p1, p2}, Lscala/math/Ordering;->gteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method
