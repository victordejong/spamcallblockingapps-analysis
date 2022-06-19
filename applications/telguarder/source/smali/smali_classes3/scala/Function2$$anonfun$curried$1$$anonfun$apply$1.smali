.class public final Lscala/Function2$$anonfun$curried$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "Function2.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Function2$$anonfun$curried$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TT2;TR;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/Function2$$anonfun$curried$1;

.field private final x1$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/Function2$$anonfun$curried$1;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function2<",
            "TT1;TT2;TR;>.$anonfun$curried$1;)V"
        }
    .end annotation

    .line 39
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Function2$$anonfun$curried$1$$anonfun$apply$1;->$outer:Lscala/Function2$$anonfun$curried$1;

    iput-object p2, p0, Lscala/Function2$$anonfun$curried$1$$anonfun$apply$1;->x1$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;)TR;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lscala/Function2$$anonfun$curried$1$$anonfun$apply$1;->$outer:Lscala/Function2$$anonfun$curried$1;

    iget-object v0, v0, Lscala/Function2$$anonfun$curried$1;->$outer:Lscala/Function2;

    iget-object v1, p0, Lscala/Function2$$anonfun$curried$1$$anonfun$apply$1;->x1$1:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
