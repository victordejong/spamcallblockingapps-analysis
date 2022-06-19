.class public final Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$lineStream$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "ProcessBuilderImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->lineStream(ZZLscala/Option;)Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final process$2:Lscala/sys/process/Process;

.field public final streamed$1:Lscala/sys/process/BasicIO$Streamed;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;Lscala/sys/process/BasicIO$Streamed;Lscala/sys/process/Process;)V
    .locals 0

    .line 143
    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$lineStream$1;->streamed$1:Lscala/sys/process/BasicIO$Streamed;

    iput-object p3, p0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$lineStream$1;->process$2:Lscala/sys/process/Process;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$lineStream$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 2

    .line 143
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$lineStream$1;->streamed$1:Lscala/sys/process/BasicIO$Streamed;

    invoke-virtual {v0}, Lscala/sys/process/BasicIO$Streamed;->done()Lscala/Function1;

    move-result-object v0

    iget-object v1, p0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$lineStream$1;->process$2:Lscala/sys/process/Process;

    invoke-interface {v1}, Lscala/sys/process/Process;->exitValue()I

    move-result v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply$mcVI$sp(I)V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 2

    .line 143
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$lineStream$1;->streamed$1:Lscala/sys/process/BasicIO$Streamed;

    invoke-virtual {v0}, Lscala/sys/process/BasicIO$Streamed;->done()Lscala/Function1;

    move-result-object v0

    iget-object v1, p0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$lineStream$1;->process$2:Lscala/sys/process/Process;

    invoke-interface {v1}, Lscala/sys/process/Process;->exitValue()I

    move-result v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply$mcVI$sp(I)V

    return-void
.end method
