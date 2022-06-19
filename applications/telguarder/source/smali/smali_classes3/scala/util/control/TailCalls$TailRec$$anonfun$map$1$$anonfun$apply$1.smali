.class public final Lscala/util/control/TailCalls$TailRec$$anonfun$map$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction0;
.source "TailCalls.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/util/control/TailCalls$TailRec$$anonfun$map$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/util/control/TailCalls$Done<",
        "TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/util/control/TailCalls$TailRec$$anonfun$map$1;

.field private final a$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/util/control/TailCalls$TailRec$$anonfun$map$1;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/control/TailCalls$TailRec<",
            "TA;>.$anonfun$map$1;)V"
        }
    .end annotation

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/util/control/TailCalls$TailRec$$anonfun$map$1$$anonfun$apply$1;->$outer:Lscala/util/control/TailCalls$TailRec$$anonfun$map$1;

    iput-object p2, p0, Lscala/util/control/TailCalls$TailRec$$anonfun$map$1$$anonfun$apply$1;->a$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lscala/util/control/TailCalls$TailRec$$anonfun$map$1$$anonfun$apply$1;->apply()Lscala/util/control/TailCalls$Done;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/util/control/TailCalls$Done;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/control/TailCalls$Done<",
            "TB;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lscala/util/control/TailCalls$Done;

    iget-object v1, p0, Lscala/util/control/TailCalls$TailRec$$anonfun$map$1$$anonfun$apply$1;->$outer:Lscala/util/control/TailCalls$TailRec$$anonfun$map$1;

    iget-object v1, v1, Lscala/util/control/TailCalls$TailRec$$anonfun$map$1;->f$1:Lscala/Function1;

    iget-object v2, p0, Lscala/util/control/TailCalls$TailRec$$anonfun$map$1$$anonfun$apply$1;->a$1:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/util/control/TailCalls$Done;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
