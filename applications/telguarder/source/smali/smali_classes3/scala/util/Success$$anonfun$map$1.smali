.class public final Lscala/util/Success$$anonfun$map$1;
.super Lscala/runtime/AbstractFunction0;
.source "Try.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/Success;->map(Lscala/Function1;)Lscala/util/Try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "TU;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/util/Success;

.field private final f$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/util/Success;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Success<",
            "TT;>;)V"
        }
    .end annotation

    .line 237
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/util/Success$$anonfun$map$1;->$outer:Lscala/util/Success;

    iput-object p2, p0, Lscala/util/Success$$anonfun$map$1;->f$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lscala/util/Success$$anonfun$map$1;->f$1:Lscala/Function1;

    iget-object v1, p0, Lscala/util/Success$$anonfun$map$1;->$outer:Lscala/util/Success;

    invoke-virtual {v1}, Lscala/util/Success;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
