.class public final Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$runBuffered$1;
.super Lscala/runtime/AbstractFunction0$mcI$sp;
.source "ProcessBuilderImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->runBuffered(Lscala/sys/process/ProcessLogger;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;

.field public final connectInput$1:Z

.field public final log$1:Lscala/sys/process/ProcessLogger;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;Lscala/sys/process/ProcessLogger;Z)V
    .locals 0

    .line 148
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$runBuffered$1;->$outer:Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;

    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$runBuffered$1;->log$1:Lscala/sys/process/ProcessLogger;

    iput-boolean p3, p0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$runBuffered$1;->connectInput$1:Z

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()I
    .locals 3

    .line 148
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$runBuffered$1;->$outer:Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;

    iget-object v1, p0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$runBuffered$1;->log$1:Lscala/sys/process/ProcessLogger;

    iget-boolean v2, p0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$runBuffered$1;->connectInput$1:Z

    invoke-virtual {v0, v1, v2}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->run(Lscala/sys/process/ProcessLogger;Z)Lscala/sys/process/Process;

    move-result-object v0

    invoke-interface {v0}, Lscala/sys/process/Process;->exitValue()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$runBuffered$1;->apply()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcI$sp()I
    .locals 3

    .line 148
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$runBuffered$1;->$outer:Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;

    iget-object v1, p0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$runBuffered$1;->log$1:Lscala/sys/process/ProcessLogger;

    iget-boolean v2, p0, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder$$anonfun$runBuffered$1;->connectInput$1:Z

    invoke-virtual {v0, v1, v2}, Lscala/sys/process/ProcessBuilderImpl$AbstractBuilder;->run(Lscala/sys/process/ProcessLogger;Z)Lscala/sys/process/Process;

    move-result-object v0

    invoke-interface {v0}, Lscala/sys/process/Process;->exitValue()I

    move-result v0

    return v0
.end method
