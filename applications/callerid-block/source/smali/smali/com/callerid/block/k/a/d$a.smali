.class Lcom/callerid/block/k/a/d$a;
.super Le/e/a/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/k/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/k/a/d;


# direct methods
.method constructor <init>(Lcom/callerid/block/k/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/k/a/d$a;->a:Lcom/callerid/block/k/a/d;

    invoke-direct {p0}, Le/e/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Le/e/a/a;)V
    .locals 1

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0b\u8f7d\u5b8c\u6210\uff1a\u5f00\u59cb\u89e3\u538b\u6570\u636e\uff1a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wbb"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object p1

    iget-object p1, p1, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/callerid/block/k/a/d$a$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/k/a/d$a$a;-><init>(Lcom/callerid/block/k/a/d$a;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected d(Le/e/a/a;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0b\u8f7d\u5931\u8d25\uff1a\u5931\u8d25\u539f\u56e0\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wbb"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Requested Range Not Satisfiable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/callerid/block/util/c0;->a()Lcom/callerid/block/util/c0;

    move-result-object p1

    iget-object p1, p1, Lcom/callerid/block/util/c0;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/callerid/block/k/a/d$a$b;

    invoke-direct {p2, p0}, Lcom/callerid/block/k/a/d$a$b;-><init>(Lcom/callerid/block/k/a/d$a;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/callerid/block/k/a/d$a;->a:Lcom/callerid/block/k/a/d;

    invoke-static {p1}, Lcom/callerid/block/k/a/d;->b(Lcom/callerid/block/k/a/d;)Lcom/callerid/block/k/a/b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/k/a/d$a;->a:Lcom/callerid/block/k/a/d;

    invoke-static {p1}, Lcom/callerid/block/k/a/d;->b(Lcom/callerid/block/k/a/d;)Lcom/callerid/block/k/a/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/callerid/block/k/a/b;->a()V

    :cond_2
    return-void
.end method

.method protected f(Le/e/a/a;II)V
    .locals 0

    return-void
.end method

.method protected g(Le/e/a/a;II)V
    .locals 0

    return-void
.end method

.method protected h(Le/e/a/a;II)V
    .locals 2

    invoke-interface {p1}, Le/e/a/a;->k()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1}, Le/e/a/a;->h()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u8f7d\u8fdb\u5ea6\uff1a "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/   \u8fdb\u5ea6\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float v0, v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "wbb"

    invoke-static {p2, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected k(Le/e/a/a;)V
    .locals 0

    return-void
.end method
