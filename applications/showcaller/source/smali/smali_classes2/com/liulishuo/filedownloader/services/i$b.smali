.class public Lcom/liulishuo/filedownloader/services/i$b;
.super Ljava/lang/Object;
.source "ForegroundServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/services/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Notification;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/liulishuo/filedownloader/services/i;
    .locals 2

    .line 1
    new-instance v0, Lcom/liulishuo/filedownloader/services/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/services/i;-><init>(Lcom/liulishuo/filedownloader/services/i$a;)V

    .line 2
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/i$b;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "filedownloader_channel"

    :cond_0
    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/services/i;->i(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/i$b;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "Filedownloader"

    :cond_1
    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/services/i;->j(Ljava/lang/String;)V

    .line 4
    iget v1, p0, Lcom/liulishuo/filedownloader/services/i$b;->a:I

    if-nez v1, :cond_2

    const v1, 0x1080002

    :cond_2
    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/services/i;->k(I)V

    .line 5
    iget-boolean v1, p0, Lcom/liulishuo/filedownloader/services/i$b;->e:Z

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/services/i;->g(Z)V

    .line 6
    iget-object v1, p0, Lcom/liulishuo/filedownloader/services/i$b;->d:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/services/i;->h(Landroid/app/Notification;)V

    return-object v0
.end method

.method public b(Z)Lcom/liulishuo/filedownloader/services/i$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/services/i$b;->e:Z

    return-object p0
.end method
