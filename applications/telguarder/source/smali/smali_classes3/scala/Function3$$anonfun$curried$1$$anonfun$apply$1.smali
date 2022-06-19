.class public final Lscala/Function3$$anonfun$curried$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "Function3.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Function3$$anonfun$curried$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TT2;",
        "Lscala/Function1<",
        "TT3;TR;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/Function3$$anonfun$curried$1;

.field public final x1$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/Function3$$anonfun$curried$1;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function3<",
            "TT1;TT2;TT3;TR;>.$anonfun$curried$1;)V"
        }
    .end annotation

    .line 26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Function3$$anonfun$curried$1$$anonfun$apply$1;->$outer:Lscala/Function3$$anonfun$curried$1;

    iput-object p2, p0, Lscala/Function3$$anonfun$curried$1$$anonfun$apply$1;->x1$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lscala/Function3$$anonfun$curried$1$$anonfun$apply$1;->apply(Ljava/lang/Object;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;)",
            "Lscala/Function1<",
            "TT3;TR;>;"
        }
    .end annotation

    .line 26
    new-instance v0, Lscala/Function3$$anonfun$curried$1$$anonfun$apply$1$$anonfun$apply$2;

    invoke-direct {v0, p0, p1}, Lscala/Function3$$anonfun$curried$1$$anonfun$apply$1$$anonfun$apply$2;-><init>(Lscala/Function3$$anonfun$curried$1$$anonfun$apply$1;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic scala$Function3$$anonfun$$anonfun$$$outer()Lscala/Function3$$anonfun$curried$1;
    .locals 1

    .line 26
    iget-object v0, p0, Lscala/Function3$$anonfun$curried$1$$anonfun$apply$1;->$outer:Lscala/Function3$$anonfun$curried$1;

    return-object v0
.end method
