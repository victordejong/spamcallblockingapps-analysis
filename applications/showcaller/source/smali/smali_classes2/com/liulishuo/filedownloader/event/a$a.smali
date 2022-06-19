.class Lcom/liulishuo/filedownloader/event/a$a;
.super Ljava/lang/Object;
.source "DownloadEventPoolImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liulishuo/filedownloader/event/a;->b(Lcom/liulishuo/filedownloader/event/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/liulishuo/filedownloader/event/b;

.field final synthetic e:Lcom/liulishuo/filedownloader/event/a;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/event/a;Lcom/liulishuo/filedownloader/event/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/liulishuo/filedownloader/event/a$a;->e:Lcom/liulishuo/filedownloader/event/a;

    iput-object p2, p0, Lcom/liulishuo/filedownloader/event/a$a;->d:Lcom/liulishuo/filedownloader/event/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/event/a$a;->e:Lcom/liulishuo/filedownloader/event/a;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/event/a$a;->d:Lcom/liulishuo/filedownloader/event/b;

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/event/a;->c(Lcom/liulishuo/filedownloader/event/b;)Z

    return-void
.end method
