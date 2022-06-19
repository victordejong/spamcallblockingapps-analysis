.class public abstract Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot;
.super Lcom/liulishuo/filedownloader/message/MessageSnapshot;
.source "LargeMessageSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PausedSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$WarnFlowDirectlySnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$RetryMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ErrorMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$CompletedFlowDirectlySnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ProgressMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$ConnectedMessageSnapshot;,
        Lcom/liulishuo/filedownloader/message/LargeMessageSnapshot$PendingMessageSnapshot;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;-><init>(I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->e:Z

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public i()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public j()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method
