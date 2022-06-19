.class public final Lscala/util/control/TailCalls$TailRec$$anonfun$map$1;
.super Lscala/runtime/AbstractFunction1;
.source "TailCalls.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/control/TailCalls$TailRec;->map(Lscala/Function1;)Lscala/util/control/TailCalls$TailRec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Lscala/util/control/TailCalls$Call<",
        "TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final f$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/util/control/TailCalls$TailRec;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/control/TailCalls$TailRec<",
            "TA;>;)V"
        }
    .end annotation

    .line 49
    iput-object p2, p0, Lscala/util/control/TailCalls$TailRec$$anonfun$map$1;->f$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lscala/util/control/TailCalls$TailRec$$anonfun$map$1;->apply(Ljava/lang/Object;)Lscala/util/control/TailCalls$Call;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Lscala/util/control/TailCalls$Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/util/control/TailCalls$Call<",
            "TB;>;"
        }
    .end annotation

    .line 49
    new-instance v0, Lscala/util/control/TailCalls$Call;

    new-instance v1, Lscala/util/control/TailCalls$TailRec$$anonfun$map$1$$anonfun$apply$1;

    invoke-direct {v1, p0, p1}, Lscala/util/control/TailCalls$TailRec$$anonfun$map$1$$anonfun$apply$1;-><init>(Lscala/util/control/TailCalls$TailRec$$anonfun$map$1;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lscala/util/control/TailCalls$Call;-><init>(Lscala/Function0;)V

    return-object v0
.end method
