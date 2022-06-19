.class public Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

.field private b:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

.field private c:Le/e/a/x;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Boolean;

.field private h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;
    .locals 11

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->c:Le/e/a/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->b:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->c:Le/e/a/x;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable;-><init>(Lcom/liulishuo/filedownloader/model/FileDownloadModel;Lcom/liulishuo/filedownloader/model/FileDownloadHeader;Le/e/a/x;IIZZILcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public b(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public c(Ljava/lang/Boolean;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public d(Lcom/liulishuo/filedownloader/model/FileDownloadHeader;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->b:Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    return-object p0
.end method

.method public e(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method public f(Ljava/lang/Integer;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public g(Lcom/liulishuo/filedownloader/model/FileDownloadModel;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->a:Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    return-object p0
.end method

.method public h(Le/e/a/x;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->c:Le/e/a/x;

    return-object p0
.end method

.method public i(Ljava/lang/Boolean;)Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/DownloadLaunchRunnable$b;->g:Ljava/lang/Boolean;

    return-object p0
.end method
