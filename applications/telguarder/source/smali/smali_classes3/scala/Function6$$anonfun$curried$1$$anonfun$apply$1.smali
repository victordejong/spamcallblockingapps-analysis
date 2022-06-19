.class public final Lscala/Function6$$anonfun$curried$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction5;
.source "Function6.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Function6$$anonfun$curried$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction5<",
        "TT2;TT3;TT4;TT5;TT6;TR;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/Function6$$anonfun$curried$1;

.field private final x1$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/Function6$$anonfun$curried$1;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function6<",
            "TT1;TT2;TT3;TT4;TT5;TT6;TR;>.$anonfun$curried$1;)V"
        }
    .end annotation

    .line 26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/Function6$$anonfun$curried$1$$anonfun$apply$1;->$outer:Lscala/Function6$$anonfun$curried$1;

    iput-object p2, p0, Lscala/Function6$$anonfun$curried$1$$anonfun$apply$1;->x1$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction5;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT3;TT4;TT5;TT6;)TR;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lscala/Function6$$anonfun$curried$1$$anonfun$apply$1;->$outer:Lscala/Function6$$anonfun$curried$1;

    iget-object v1, v0, Lscala/Function6$$anonfun$curried$1;->$outer:Lscala/Function6;

    iget-object v2, p0, Lscala/Function6$$anonfun$curried$1$$anonfun$apply$1;->x1$1:Ljava/lang/Object;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lscala/Function6;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
