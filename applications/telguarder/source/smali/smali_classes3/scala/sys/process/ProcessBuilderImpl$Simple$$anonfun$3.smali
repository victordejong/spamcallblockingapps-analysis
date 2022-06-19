.class public final Lscala/sys/process/ProcessBuilderImpl$Simple$$anonfun$3;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "ProcessBuilderImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessBuilderImpl$Simple;->run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final io$2:Lscala/sys/process/ProcessIO;

.field public final process$1:Ljava/lang/Process;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilderImpl$Simple;Lscala/sys/process/ProcessIO;Ljava/lang/Process;)V
    .locals 0

    .line 74
    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$Simple$$anonfun$3;->io$2:Lscala/sys/process/ProcessIO;

    iput-object p3, p0, Lscala/sys/process/ProcessBuilderImpl$Simple$$anonfun$3;->process$1:Ljava/lang/Process;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$Simple$$anonfun$3;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 2

    .line 74
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$Simple$$anonfun$3;->io$2:Lscala/sys/process/ProcessIO;

    invoke-virtual {v0}, Lscala/sys/process/ProcessIO;->processOutput()Lscala/Function1;

    move-result-object v0

    iget-object v1, p0, Lscala/sys/process/ProcessBuilderImpl$Simple$$anonfun$3;->process$1:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 2

    .line 74
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$Simple$$anonfun$3;->io$2:Lscala/sys/process/ProcessIO;

    invoke-virtual {v0}, Lscala/sys/process/ProcessIO;->processOutput()Lscala/Function1;

    move-result-object v0

    iget-object v1, p0, Lscala/sys/process/ProcessBuilderImpl$Simple$$anonfun$3;->process$1:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
