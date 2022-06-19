.class public Lcom/allinone/callerid/a/b;
.super Ljava/lang/Object;
.source "JobManager.java"


# static fields
.field private static a:Lcom/allinone/callerid/a/b;


# instance fields
.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/allinone/callerid/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/allinone/callerid/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/a/b;->b:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/a/b;->c:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/a/b;->d:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcom/allinone/callerid/a/b;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/a/b;->b:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic b(Lcom/allinone/callerid/a/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/allinone/callerid/a/b;->d(I)V

    return-void
.end method

.method private d(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/a/b;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/a/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/allinone/callerid/a/b;->b:Landroid/util/SparseArray;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/allinone/callerid/a/b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static e()Lcom/allinone/callerid/a/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/a/b;->a:Lcom/allinone/callerid/a/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/a/b;

    invoke-direct {v0}, Lcom/allinone/callerid/a/b;-><init>()V

    sput-object v0, Lcom/allinone/callerid/a/b;->a:Lcom/allinone/callerid/a/b;

    .line 3
    :cond_0
    sget-object v0, Lcom/allinone/callerid/a/b;->a:Lcom/allinone/callerid/a/b;

    return-object v0
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/a/b;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/a/c;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    iput-object v1, p0, Lcom/allinone/callerid/a/b;->c:Ljava/util/ArrayList;

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/a/b;->d:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 8
    iput-object v1, p0, Lcom/allinone/callerid/a/b;->d:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public f(JI)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/a/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/a/a;

    invoke-direct {v0}, Lcom/allinone/callerid/a/a;-><init>()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/a/a;->f(J)V

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/allinone/callerid/a/a;->g(J)V

    .line 5
    invoke-virtual {v0, p3}, Lcom/allinone/callerid/a/a;->h(I)V

    .line 6
    iget-object v1, p0, Lcom/allinone/callerid/a/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    :cond_0
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "wbb"

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u59cb\u65b9\u6cd5\uff0c\u4ece\u4e3b\u9875\u5f00\u59cb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    new-instance v0, Lcom/allinone/callerid/a/b$a;

    invoke-direct {v0, p0, p3}, Lcom/allinone/callerid/a/b$a;-><init>(Lcom/allinone/callerid/a/b;I)V

    .line 10
    iget-object p3, p0, Lcom/allinone/callerid/a/b;->d:Ljava/util/Timer;

    invoke-virtual {p3, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 11
    iget-object p1, p0, Lcom/allinone/callerid/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/a/b;->b:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/a/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 3
    iget-object v2, p0, Lcom/allinone/callerid/a/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/allinone/callerid/a/a;

    .line 4
    invoke-virtual {v2}, Lcom/allinone/callerid/a/a;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    .line 5
    invoke-virtual {v2}, Lcom/allinone/callerid/a/a;->d()Z

    move-result v3

    if-nez v3, :cond_3

    .line 6
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/allinone/callerid/util/e;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/allinone/callerid/a/a;->a()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2}, Lcom/allinone/callerid/a/a;->b()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-ltz v7, :cond_3

    const/4 v3, 0x1

    .line 8
    invoke-virtual {v2, v3}, Lcom/allinone/callerid/a/a;->e(Z)V

    .line 9
    invoke-virtual {v2}, Lcom/allinone/callerid/a/a;->c()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x2ce

    const-string v6, "wbb"

    if-ne v4, v5, :cond_1

    .line 10
    :try_start_1
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_0

    const-string v3, "\u5f00\u59cb\u8bf7\u6c42\u4e0b\u8f7d\uff0c\u6709\u7f51\u7684\u65f6\u5019,\u5904\u7406718\u4efb\u52a1"

    .line 11
    invoke-static {v6, v3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    new-instance v3, Lcom/allinone/callerid/a/b$b;

    invoke-direct {v3, p0, v2}, Lcom/allinone/callerid/a/b$b;-><init>(Lcom/allinone/callerid/a/b;Lcom/allinone/callerid/a/a;)V

    invoke-static {v3}, Lcom/allinone/callerid/l/a/f;->j(Lcom/allinone/callerid/l/a/d;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v2}, Lcom/allinone/callerid/a/a;->c()I

    move-result v4

    const/16 v5, 0x3ca

    if-ne v4, v5, :cond_3

    .line 14
    sget-boolean v4, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v4, :cond_2

    const-string v4, "\u5f00\u59cb\u8bf7\u6c42\u4e0b\u8f7d\uff0c\u6709\u7f51\u7684\u65f6\u5019,\u5904\u7406970\u4efb\u52a1"

    .line 15
    invoke-static {v6, v4}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v4

    new-instance v5, Lcom/allinone/callerid/a/b$c;

    invoke-direct {v5, p0, v2}, Lcom/allinone/callerid/a/b$c;-><init>(Lcom/allinone/callerid/a/b;Lcom/allinone/callerid/a/a;)V

    invoke-static {v4, v3, v5}, Lcom/allinone/callerid/l/a/f;->h(Landroid/content/Context;ZLcom/allinone/callerid/l/a/d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void
.end method
