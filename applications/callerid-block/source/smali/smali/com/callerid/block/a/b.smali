.class public Lcom/callerid/block/a/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static d:Lcom/callerid/block/a/b;


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/callerid/block/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/a/b;->a:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/a/b;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/callerid/block/a/b;->c:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcom/callerid/block/a/b;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/callerid/block/a/b;->a:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic b(Lcom/callerid/block/a/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callerid/block/a/b;->d(I)V

    return-void
.end method

.method private d(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/a/b;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/callerid/block/a/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/a/b;->a:Landroid/util/SparseArray;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/callerid/block/a/b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static e()Lcom/callerid/block/a/b;
    .locals 1

    sget-object v0, Lcom/callerid/block/a/b;->d:Lcom/callerid/block/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/callerid/block/a/b;

    invoke-direct {v0}, Lcom/callerid/block/a/b;-><init>()V

    sput-object v0, Lcom/callerid/block/a/b;->d:Lcom/callerid/block/a/b;

    :cond_0
    sget-object v0, Lcom/callerid/block/a/b;->d:Lcom/callerid/block/a/b;

    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/a/b;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/callerid/block/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/a/c;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/callerid/block/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v1, p0, Lcom/callerid/block/a/b;->b:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/callerid/block/a/b;->c:Ljava/util/Timer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/callerid/block/a/b;->c:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public f(JI)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/a/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/callerid/block/a/a;

    invoke-direct {v0}, Lcom/callerid/block/a/a;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/callerid/block/a/a;->f(J)V

    invoke-virtual {v0, p1, p2}, Lcom/callerid/block/a/a;->g(J)V

    invoke-virtual {v0, p3}, Lcom/callerid/block/a/a;->h(I)V

    iget-object v1, p0, Lcom/callerid/block/a/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    sget-boolean v0, Lcom/callerid/block/util/w;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "wbb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u65b9\u6cd5\uff0c\u4ece\u4e3b\u9875\u5f00\u59cb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/callerid/block/a/b$a;

    invoke-direct {v0, p0, p3}, Lcom/callerid/block/a/b$a;-><init>(Lcom/callerid/block/a/b;I)V

    iget-object p3, p0, Lcom/callerid/block/a/b;->c:Ljava/util/Timer;

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object p1, p0, Lcom/callerid/block/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/a/b;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/callerid/block/a/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/callerid/block/a/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/a/a;

    invoke-virtual {v2}, Lcom/callerid/block/a/a;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Lcom/callerid/block/a/a;->d()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/callerid/block/a/a;->a()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2}, Lcom/callerid/block/a/a;->b()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/callerid/block/a/a;->e(Z)V

    invoke-virtual {v2}, Lcom/callerid/block/a/a;->c()I

    move-result v3

    const/16 v4, 0x2ce

    if-ne v3, v4, :cond_1

    sget-boolean v3, Lcom/callerid/block/util/w;->a:Z

    if-eqz v3, :cond_0

    const-string v3, "wbb"

    const-string v4, "\u5f00\u59cb\u8bf7\u6c42\u4e0b\u8f7d\uff0c\u6709\u7f51\u7684\u65f6\u5019,\u5904\u7406718\u4efb\u52a1"

    invoke-static {v3, v4}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v3, Lcom/callerid/block/a/b$d;

    invoke-direct {v3, p0, v2}, Lcom/callerid/block/a/b$d;-><init>(Lcom/callerid/block/a/b;Lcom/callerid/block/a/a;)V

    invoke-static {v3}, Lcom/callerid/block/k/a/e;->j(Lcom/callerid/block/k/a/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public h()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/callerid/block/a/b;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/callerid/block/a/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/callerid/block/a/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callerid/block/a/a;

    invoke-virtual {v2}, Lcom/callerid/block/a/a;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lcom/callerid/block/a/a;->d()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/callerid/block/util/d;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/callerid/block/a/a;->a()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2}, Lcom/callerid/block/a/a;->b()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-ltz v7, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/callerid/block/a/a;->e(Z)V

    invoke-virtual {v2}, Lcom/callerid/block/a/a;->c()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x2ce

    const-string v6, "wbb"

    if-ne v4, v5, :cond_1

    :try_start_1
    sget-boolean v3, Lcom/callerid/block/util/w;->a:Z

    if-eqz v3, :cond_0

    const-string v3, "\u5f00\u59cb\u8bf7\u6c42\u4e0b\u8f7d\uff0c\u6709\u7f51\u7684\u65f6\u5019,\u5904\u7406718\u4efb\u52a1"

    invoke-static {v6, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v3, Lcom/callerid/block/a/b$b;

    invoke-direct {v3, p0, v2}, Lcom/callerid/block/a/b$b;-><init>(Lcom/callerid/block/a/b;Lcom/callerid/block/a/a;)V

    invoke-static {v3}, Lcom/callerid/block/k/a/e;->j(Lcom/callerid/block/k/a/b;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/callerid/block/a/a;->c()I

    move-result v4

    const/16 v5, 0x3ca

    if-ne v4, v5, :cond_3

    sget-boolean v4, Lcom/callerid/block/util/w;->a:Z

    if-eqz v4, :cond_2

    const-string v4, "\u5f00\u59cb\u8bf7\u6c42\u4e0b\u8f7d\uff0c\u6709\u7f51\u7684\u65f6\u5019,\u5904\u7406970\u4efb\u52a1"

    invoke-static {v6, v4}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v4

    new-instance v5, Lcom/callerid/block/a/b$c;

    invoke-direct {v5, p0, v2}, Lcom/callerid/block/a/b$c;-><init>(Lcom/callerid/block/a/b;Lcom/callerid/block/a/a;)V

    invoke-static {v4, v3, v5}, Lcom/callerid/block/k/a/e;->h(Landroid/content/Context;ZLcom/callerid/block/k/a/b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method
