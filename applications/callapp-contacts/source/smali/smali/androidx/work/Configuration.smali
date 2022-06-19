.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Configuration$Provider;,
        Landroidx/work/Configuration$Builder;
    }
.end annotation


# static fields
.field public static final MIN_SCHEDULER_LIMIT:I = 0x14


# instance fields
.field final mDefaultProcessName:Ljava/lang/String;

.field final mExceptionHandler:Landroidx/work/h;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mInputMergerFactory:Landroidx/work/j;

.field private final mIsUsingDefaultTaskExecutor:Z

.field final mLoggingLevel:I

.field final mMaxJobSchedulerId:I

.field final mMaxSchedulerLimit:I

.field final mMinJobSchedulerId:I

.field final mRunnableScheduler:Landroidx/work/r;

.field final mTaskExecutor:Ljava/util/concurrent/Executor;

.field final mWorkerFactory:Landroidx/work/w;


# direct methods
.method constructor <init>(Landroidx/work/Configuration$Builder;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0}, Landroidx/work/Configuration;->createDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 87
    :goto_0
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mTaskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Landroidx/work/Configuration;->mIsUsingDefaultTaskExecutor:Z

    .line 92
    invoke-direct {p0}, Landroidx/work/Configuration;->createDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Landroidx/work/Configuration;->mIsUsingDefaultTaskExecutor:Z

    .line 95
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mTaskExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    .line 98
    :goto_1
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mWorkerFactory:Landroidx/work/w;

    if-nez v0, :cond_2

    .line 99
    invoke-static {}, Landroidx/work/w;->a()Landroidx/work/w;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/w;

    goto :goto_2

    .line 101
    :cond_2
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mWorkerFactory:Landroidx/work/w;

    iput-object v0, p0, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/w;

    .line 104
    :goto_2
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mInputMergerFactory:Landroidx/work/j;

    if-nez v0, :cond_3

    .line 1074
    new-instance v0, Landroidx/work/j$1;

    invoke-direct {v0}, Landroidx/work/j$1;-><init>()V

    .line 105
    iput-object v0, p0, Landroidx/work/Configuration;->mInputMergerFactory:Landroidx/work/j;

    goto :goto_3

    .line 107
    :cond_3
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mInputMergerFactory:Landroidx/work/j;

    iput-object v0, p0, Landroidx/work/Configuration;->mInputMergerFactory:Landroidx/work/j;

    .line 110
    :goto_3
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mRunnableScheduler:Landroidx/work/r;

    if-nez v0, :cond_4

    .line 111
    new-instance v0, Landroidx/work/impl/a;

    invoke-direct {v0}, Landroidx/work/impl/a;-><init>()V

    iput-object v0, p0, Landroidx/work/Configuration;->mRunnableScheduler:Landroidx/work/r;

    goto :goto_4

    .line 113
    :cond_4
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mRunnableScheduler:Landroidx/work/r;

    iput-object v0, p0, Landroidx/work/Configuration;->mRunnableScheduler:Landroidx/work/r;

    .line 116
    :goto_4
    iget v0, p1, Landroidx/work/Configuration$Builder;->mLoggingLevel:I

    iput v0, p0, Landroidx/work/Configuration;->mLoggingLevel:I

    .line 117
    iget v0, p1, Landroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    iput v0, p0, Landroidx/work/Configuration;->mMinJobSchedulerId:I

    .line 118
    iget v0, p1, Landroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    iput v0, p0, Landroidx/work/Configuration;->mMaxJobSchedulerId:I

    .line 119
    iget v0, p1, Landroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    iput v0, p0, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    .line 120
    iget-object v0, p1, Landroidx/work/Configuration$Builder;->mExceptionHandler:Landroidx/work/h;

    iput-object v0, p0, Landroidx/work/Configuration;->mExceptionHandler:Landroidx/work/h;

    .line 121
    iget-object p1, p1, Landroidx/work/Configuration$Builder;->mDefaultProcessName:Ljava/lang/String;

    iput-object p1, p0, Landroidx/work/Configuration;->mDefaultProcessName:Ljava/lang/String;

    return-void
.end method

.method private createDefaultExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 261
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 259
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getDefaultProcessName()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Landroidx/work/Configuration;->mDefaultProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public final getExceptionHandler()Landroidx/work/h;
    .locals 1

    .line 255
    iget-object v0, p0, Landroidx/work/Configuration;->mExceptionHandler:Landroidx/work/h;

    return-object v0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getInputMergerFactory()Landroidx/work/j;
    .locals 1

    .line 159
    iget-object v0, p0, Landroidx/work/Configuration;->mInputMergerFactory:Landroidx/work/j;

    return-object v0
.end method

.method public final getMaxJobSchedulerId()I
    .locals 1

    .line 208
    iget v0, p0, Landroidx/work/Configuration;->mMaxJobSchedulerId:I

    return v0
.end method

.method public final getMaxSchedulerLimit()I
    .locals 2

    .line 231
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 232
    iget v0, p0, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 234
    :cond_0
    iget v0, p0, Landroidx/work/Configuration;->mMaxSchedulerLimit:I

    return v0
.end method

.method public final getMinJobSchedulerId()I
    .locals 1

    .line 194
    iget v0, p0, Landroidx/work/Configuration;->mMinJobSchedulerId:I

    return v0
.end method

.method public final getMinimumLoggingLevel()I
    .locals 1

    .line 180
    iget v0, p0, Landroidx/work/Configuration;->mLoggingLevel:I

    return v0
.end method

.method public final getRunnableScheduler()Landroidx/work/r;
    .locals 1

    .line 168
    iget-object v0, p0, Landroidx/work/Configuration;->mRunnableScheduler:Landroidx/work/r;

    return-object v0
.end method

.method public final getTaskExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getWorkerFactory()Landroidx/work/w;
    .locals 1

    .line 151
    iget-object v0, p0, Landroidx/work/Configuration;->mWorkerFactory:Landroidx/work/w;

    return-object v0
.end method

.method public final isUsingDefaultTaskExecutor()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Landroidx/work/Configuration;->mIsUsingDefaultTaskExecutor:Z

    return v0
.end method
