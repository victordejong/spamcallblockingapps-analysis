.class public final Lscala/sys/process/BasicIO$$anonfun$processErrFully$1;
.super Lscala/runtime/AbstractFunction1;
.source "BasicIO.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/BasicIO$;->processErrFully(Lscala/sys/process/ProcessLogger;)Lscala/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/String;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final log$1:Lscala/sys/process/ProcessLogger;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessLogger;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lscala/sys/process/BasicIO$$anonfun$processErrFully$1;->log$1:Lscala/sys/process/ProcessLogger;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 135
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lscala/sys/process/BasicIO$$anonfun$processErrFully$1;->apply(Ljava/lang/String;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/String;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lscala/sys/process/BasicIO$$anonfun$processErrFully$1;->log$1:Lscala/sys/process/ProcessLogger;

    new-instance v1, Lscala/sys/process/BasicIO$$anonfun$processErrFully$1$$anonfun$apply$4;

    invoke-direct {v1, p0, p1}, Lscala/sys/process/BasicIO$$anonfun$processErrFully$1$$anonfun$apply$4;-><init>(Lscala/sys/process/BasicIO$$anonfun$processErrFully$1;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lscala/sys/process/ProcessLogger;->err(Lscala/Function0;)V

    return-void
.end method
