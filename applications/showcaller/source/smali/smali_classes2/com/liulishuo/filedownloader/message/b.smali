.class public Lcom/liulishuo/filedownloader/message/b;
.super Ljava/lang/Object;
.source "MessageSnapshotFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/message/b$b;,
        Lcom/liulishuo/filedownloader/message/b$a;
    }
.end annotation


# instance fields
.field private volatile a:Lcom/liulishuo/filedownloader/message/d;

.field private volatile b:Lcom/liulishuo/filedownloader/message/b$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/liulishuo/filedownloader/message/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/liulishuo/filedownloader/message/b$a;->a()Lcom/liulishuo/filedownloader/message/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/liulishuo/filedownloader/message/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/b;->b:Lcom/liulishuo/filedownloader/message/b$b;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/b;->b:Lcom/liulishuo/filedownloader/message/b$b;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/message/b$b;->D0(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/b;->a:Lcom/liulishuo/filedownloader/message/d;

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/b;->a:Lcom/liulishuo/filedownloader/message/d;

    invoke-virtual {v0, p1}, Lcom/liulishuo/filedownloader/message/d;->b(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lcom/liulishuo/filedownloader/message/b$b;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/liulishuo/filedownloader/message/b;->b:Lcom/liulishuo/filedownloader/message/b$b;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/liulishuo/filedownloader/message/b;->a:Lcom/liulishuo/filedownloader/message/d;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/liulishuo/filedownloader/message/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lcom/liulishuo/filedownloader/message/d;-><init>(ILcom/liulishuo/filedownloader/message/b$b;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/message/b;->a:Lcom/liulishuo/filedownloader/message/d;

    :goto_0
    return-void
.end method
