.class public final Lscala/collection/TraversableViewLike$$anonfun$inits$1$$anonfun$apply$3;
.super Lscala/runtime/AbstractFunction0;
.source "TraversableViewLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableViewLike$$anonfun$inits$1;->apply(Lscala/collection/Seq;)Lscala/collection/TraversableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/Seq<",
        "TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final as$1:Lscala/collection/Seq;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableViewLike$$anonfun$inits$1;Lscala/collection/Seq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableViewLike<",
            "TA;TColl;TThis;>.$anonfun$inits$1;)V"
        }
    .end annotation

    .line 298
    iput-object p2, p0, Lscala/collection/TraversableViewLike$$anonfun$inits$1$$anonfun$apply$3;->as$1:Lscala/collection/Seq;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 298
    invoke-virtual {p0}, Lscala/collection/TraversableViewLike$$anonfun$inits$1$$anonfun$apply$3;->apply()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "TA;>;"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lscala/collection/TraversableViewLike$$anonfun$inits$1$$anonfun$apply$3;->as$1:Lscala/collection/Seq;

    return-object v0
.end method
