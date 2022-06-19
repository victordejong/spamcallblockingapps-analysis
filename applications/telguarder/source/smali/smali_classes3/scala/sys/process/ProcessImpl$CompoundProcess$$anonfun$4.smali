.class public final Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$4;
.super Lscala/runtime/AbstractFunction0;
.source "ProcessImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessImpl$CompoundProcess;->runInterruptible(Lscala/Function0;Lscala/Function0;)Lscala/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/None$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final destroyImpl$1:Lscala/Function0;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessImpl$CompoundProcess;Lscala/Function0;)V
    .locals 0

    .line 107
    iput-object p2, p0, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$4;->destroyImpl$1:Lscala/Function0;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$4;->apply()Lscala/None$;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/None$;
    .locals 1

    .line 107
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$4;->destroyImpl$1:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply$mcV$sp()V

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    return-object v0
.end method
