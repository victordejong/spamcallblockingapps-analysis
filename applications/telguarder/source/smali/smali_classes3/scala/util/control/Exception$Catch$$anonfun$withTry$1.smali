.class public final Lscala/util/control/Exception$Catch$$anonfun$withTry$1;
.super Lscala/runtime/AbstractFunction0;
.source "Exception.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/control/Exception$Catch;->withTry(Lscala/Function0;)Lscala/util/Try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/util/Success<",
        "TU;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final body$3:Lscala/Function0;


# direct methods
.method public constructor <init>(Lscala/util/control/Exception$Catch;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/control/Exception$Catch<",
            "TT;>;)V"
        }
    .end annotation

    .line 130
    iput-object p2, p0, Lscala/util/control/Exception$Catch$$anonfun$withTry$1;->body$3:Lscala/Function0;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lscala/util/control/Exception$Catch$$anonfun$withTry$1;->apply()Lscala/util/Success;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/util/Success;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/Success<",
            "TU;>;"
        }
    .end annotation

    .line 130
    new-instance v0, Lscala/util/Success;

    iget-object v1, p0, Lscala/util/control/Exception$Catch$$anonfun$withTry$1;->body$3:Lscala/Function0;

    invoke-interface {v1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/util/Success;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
