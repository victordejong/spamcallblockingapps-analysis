.class public Lcom/callerid/block/h/a/f/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callerid/block/h/a/f/g$c;,
        Lcom/callerid/block/h/a/f/g$a;,
        Lcom/callerid/block/h/a/f/g$b;
    }
.end annotation


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callerid/block/search/CallLogBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic a()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/callerid/block/h/a/f/g;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    sput-object p0, Lcom/callerid/block/h/a/f/g;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/callerid/block/h/a/f/g;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/callerid/block/h/a/f/g;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Ljava/lang/String;)Lcom/callerid/block/util/SortToken;
    .locals 0

    invoke-static {p0}, Lcom/callerid/block/h/a/f/g;->l(Ljava/lang/String;)Lcom/callerid/block/util/SortToken;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/callerid/block/h/a/f/j;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/callerid/block/h/a/f/g$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/h/a/f/g$a;-><init>(Lcom/callerid/block/h/a/f/j;)V

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    new-instance v0, Lcom/callerid/block/h/a/f/g$a;

    invoke-direct {v0, p0}, Lcom/callerid/block/h/a/f/g$a;-><init>(Lcom/callerid/block/h/a/f/j;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static g(Landroid/content/Context;Lcom/callerid/block/h/a/f/h;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/callerid/block/h/a/f/g$b;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/h/a/f/g$b;-><init>(Landroid/content/Context;Lcom/callerid/block/h/a/f/h;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static h(Landroid/content/Context;ZLcom/callerid/block/h/a/f/m;)V
    .locals 2

    sget-object v0, Lcom/callerid/block/h/a/f/g;->a:Ljava/util/ArrayList;

    const-string v1, "tony"

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    sget-boolean p0, Lcom/callerid/block/util/w;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "mAllList"

    invoke-static {v1, p0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lcom/callerid/block/h/a/f/g;->a:Ljava/util/ArrayList;

    invoke-interface {p2, p0}, Lcom/callerid/block/h/a/f/m;->b(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "LoadContactTask"

    invoke-static {v1, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_0
    new-instance p1, Lcom/callerid/block/h/a/f/g$c;

    invoke-direct {p1, p0, p2}, Lcom/callerid/block/h/a/f/g$c;-><init>(Landroid/content/Context;Lcom/callerid/block/h/a/f/m;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "#"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/q;->c()Lcom/callerid/block/util/q;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/callerid/block/util/q;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callerid/block/util/q$a;

    iget-object p0, p0, Lcom/callerid/block/util/q$a;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "[A-Z]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/callerid/block/util/q;->c()Lcom/callerid/block/util/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/callerid/block/util/q;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/callerid/block/util/q$a;

    iget-object p0, p0, Lcom/callerid/block/util/q$a;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[A-Z]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "#"

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Landroid/content/Context;Lcom/callerid/block/h/a/f/m;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/callerid/block/h/a/f/g$c;

    invoke-direct {v0, p0, p1}, Lcom/callerid/block/h/a/f/g$c;-><init>(Landroid/content/Context;Lcom/callerid/block/h/a/f/m;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static l(Ljava/lang/String;)Lcom/callerid/block/util/SortToken;
    .locals 7

    new-instance v0, Lcom/callerid/block/util/SortToken;

    invoke-direct {v0}, Lcom/callerid/block/util/SortToken;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "[\\u4E00-\\u9FA5]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/callerid/block/util/SortToken;->b:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/callerid/block/util/SortToken;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/callerid/block/util/SortToken;->c:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/callerid/block/util/SortToken;->c:Ljava/lang/String;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
