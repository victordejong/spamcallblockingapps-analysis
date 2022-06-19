.class Lcom/liulishuo/filedownloader/message/d$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liulishuo/filedownloader/message/d$a;->c(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/liulishuo/filedownloader/message/MessageSnapshot;

.field final synthetic c:Lcom/liulishuo/filedownloader/message/d$a;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/message/d$a;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/message/d$a$a;->c:Lcom/liulishuo/filedownloader/message/d$a;

    iput-object p2, p0, Lcom/liulishuo/filedownloader/message/d$a$a;->b:Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/d$a$a;->c:Lcom/liulishuo/filedownloader/message/d$a;

    iget-object v0, v0, Lcom/liulishuo/filedownloader/message/d$a;->c:Lcom/liulishuo/filedownloader/message/d;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/message/d;->a(Lcom/liulishuo/filedownloader/message/d;)Lcom/liulishuo/filedownloader/message/b$b;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/message/d$a$a;->b:Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/message/b$b;->r1(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/message/d$a$a;->c:Lcom/liulishuo/filedownloader/message/d$a;

    invoke-static {v0}, Lcom/liulishuo/filedownloader/message/d$a;->a(Lcom/liulishuo/filedownloader/message/d$a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/message/d$a$a;->b:Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    invoke-virtual {v1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
