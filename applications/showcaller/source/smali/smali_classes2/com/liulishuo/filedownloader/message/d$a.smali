.class public Lcom/liulishuo/filedownloader/message/d$a;
.super Ljava/lang/Object;
.source "MessageSnapshotThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/message/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;

.field final synthetic c:Lcom/liulishuo/filedownloader/message/d;


# direct methods
.method public constructor <init>(Lcom/liulishuo/filedownloader/message/d;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/liulishuo/filedownloader/message/d$a;->c:Lcom/liulishuo/filedownloader/message/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/filedownloader/message/d$a;->a:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Flow-"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2, p1}, Lc/d/a/i0/b;->a(ILjava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/filedownloader/message/d$a;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic a(Lcom/liulishuo/filedownloader/message/d$a;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/liulishuo/filedownloader/message/d$a;->a:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public b(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/d$a;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/d$a;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/liulishuo/filedownloader/message/d$a$a;

    invoke-direct {v1, p0, p1}, Lcom/liulishuo/filedownloader/message/d$a$a;-><init>(Lcom/liulishuo/filedownloader/message/d$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
