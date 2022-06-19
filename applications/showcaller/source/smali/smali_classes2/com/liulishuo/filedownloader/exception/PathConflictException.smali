.class public Lcom/liulishuo/filedownloader/exception/PathConflictException;
.super Ljava/lang/IllegalAccessException;
.source "PathConflictException.java"


# instance fields
.field private final mAnotherSamePathTaskId:I

.field private final mDownloadingConflictPath:Ljava/lang/String;

.field private final mTargetFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "There is an another running task(%d) with the same downloading path(%s), because of they are with the same target-file-path(%s), so if the current task is started, the path of the file is sure to be written by multiple tasks, it is wrong, then you receive this exception to avoid such conflict."

    .line 2
    invoke-static {v1, v0}, Lc/d/a/i0/f;->o(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/liulishuo/filedownloader/exception/PathConflictException;->mAnotherSamePathTaskId:I

    .line 4
    iput-object p2, p0, Lcom/liulishuo/filedownloader/exception/PathConflictException;->mDownloadingConflictPath:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/liulishuo/filedownloader/exception/PathConflictException;->mTargetFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAnotherSamePathTaskId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/liulishuo/filedownloader/exception/PathConflictException;->mAnotherSamePathTaskId:I

    return v0
.end method

.method public getDownloadingConflictPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/exception/PathConflictException;->mDownloadingConflictPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/exception/PathConflictException;->mTargetFilePath:Ljava/lang/String;

    return-object v0
.end method
