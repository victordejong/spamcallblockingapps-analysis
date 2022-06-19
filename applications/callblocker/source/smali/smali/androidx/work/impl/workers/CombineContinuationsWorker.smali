.class public Landroidx/work/impl/workers/CombineContinuationsWorker;
.super Landroidx/work/Worker;
.source "CombineContinuationsWorker.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 37
    return-void
.end method


# virtual methods
.method public m()Landroidx/work/ListenableWorker$a;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Landroidx/work/impl/workers/CombineContinuationsWorker;->c()Landroidx/work/e;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/ListenableWorker$a;->a(Landroidx/work/e;)Landroidx/work/ListenableWorker$a;

    move-result-object v0

    return-object v0
.end method
