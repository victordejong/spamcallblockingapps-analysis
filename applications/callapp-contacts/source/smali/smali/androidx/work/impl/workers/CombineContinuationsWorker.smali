.class public Landroidx/work/impl/workers/CombineContinuationsWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 2

    .line 41
    invoke-virtual {p0}, Landroidx/work/impl/workers/CombineContinuationsWorker;->getInputData()Landroidx/work/d;

    move-result-object v0

    .line 1348
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1, v0}, Landroidx/work/ListenableWorker$a$c;-><init>(Landroidx/work/d;)V

    return-object v1
.end method
