.class final Lcom/facebook/internal/ag$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/ag;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Bundle;

.field private d:[Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/facebook/internal/ag;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/facebook/internal/ag$d;->a:Lcom/facebook/internal/ag;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 840
    iput-object p2, p0, Lcom/facebook/internal/ag$d;->b:Ljava/lang/String;

    .line 841
    iput-object p3, p0, Lcom/facebook/internal/ag$d;->c:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic a(Lcom/facebook/internal/ag$d;)[Ljava/lang/Exception;
    .locals 0

    .line 834
    iget-object p0, p0, Lcom/facebook/internal/ag$d;->d:[Ljava/lang/Exception;

    return-object p0
.end method

.method private varargs a()[Ljava/lang/String;
    .locals 10

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 846
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/ag$d;->c:Landroid/os/Bundle;

    const-string v2, "media"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 847
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 848
    array-length v3, v0

    new-array v3, v3, [Ljava/lang/Exception;

    iput-object v3, p0, Lcom/facebook/internal/ag$d;->d:[Ljava/lang/Exception;

    .line 850
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 851
    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 853
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    .line 855
    :try_start_1
    array-length v8, v0

    if-ge v6, v8, :cond_4

    .line 856
    invoke-virtual {p0}, Lcom/facebook/internal/ag$d;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 857
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AsyncTask;

    .line 858
    invoke-virtual {v2, v7}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_1

    :cond_1
    return-object v1

    .line 862
    :cond_2
    aget-object v8, v0, v6

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 864
    invoke-static {v8}, Lcom/facebook/internal/ae;->a(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 865
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v6

    .line 866
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    .line 869
    :cond_3
    new-instance v9, Lcom/facebook/internal/ag$d$1;

    invoke-direct {v9, p0, v2, v6, v3}, Lcom/facebook/internal/ag$d$1;-><init>(Lcom/facebook/internal/ag$d;[Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;)V

    .line 899
    invoke-static {v5, v8, v9}, Lcom/facebook/share/internal/e;->a(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v8

    .line 901
    invoke-virtual {v8}, Lcom/facebook/GraphRequest;->c()Lcom/facebook/h;

    move-result-object v8

    .line 902
    invoke-virtual {v4, v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 904
    :cond_4
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2

    .line 906
    :catch_0
    :try_start_2
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AsyncTask;

    .line 907
    invoke-virtual {v2, v7}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_5
    return-object v1

    :catchall_0
    move-exception v0

    .line 912
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 834
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/internal/ag$d;->a()[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 834
    :cond_0
    :try_start_0
    check-cast p1, [Ljava/lang/String;

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_5

    .line 1917
    :try_start_1
    iget-object v0, p0, Lcom/facebook/internal/ag$d;->a:Lcom/facebook/internal/ag;

    invoke-static {v0}, Lcom/facebook/internal/ag;->c(Lcom/facebook/internal/ag;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1919
    iget-object v0, p0, Lcom/facebook/internal/ag$d;->d:[Ljava/lang/Exception;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 1921
    iget-object p1, p0, Lcom/facebook/internal/ag$d;->a:Lcom/facebook/internal/ag;

    invoke-virtual {p1, v3}, Lcom/facebook/internal/ag;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "Failed to stage photos for web dialog"

    if-nez p1, :cond_3

    .line 1927
    :try_start_2
    iget-object p1, p0, Lcom/facebook/internal/ag$d;->a:Lcom/facebook/internal/ag;

    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/facebook/internal/ag;->a(Ljava/lang/Throwable;)V

    return-void

    .line 1931
    :cond_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 1932
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1933
    iget-object p1, p0, Lcom/facebook/internal/ag$d;->a:Lcom/facebook/internal/ag;

    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/facebook/internal/ag;->a(Ljava/lang/Throwable;)V

    return-void

    .line 1937
    :cond_4
    iget-object v0, p0, Lcom/facebook/internal/ag$d;->c:Landroid/os/Bundle;

    const-string v1, "media"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/ae;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1942
    invoke-static {}, Lcom/facebook/internal/ac;->e()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1943
    invoke-static {}, Lcom/facebook/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/dialog/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/facebook/internal/ag$d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/internal/ag$d;->c:Landroid/os/Bundle;

    .line 1941
    invoke-static {p1, v0, v1}, Lcom/facebook/internal/ae;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    .line 1946
    iget-object v0, p0, Lcom/facebook/internal/ag$d;->a:Lcom/facebook/internal/ag;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/facebook/internal/ag;->a(Lcom/facebook/internal/ag;Ljava/lang/String;)Ljava/lang/String;

    .line 1947
    iget-object p1, p0, Lcom/facebook/internal/ag$d;->a:Lcom/facebook/internal/ag;

    invoke-static {p1}, Lcom/facebook/internal/ag;->f(Lcom/facebook/internal/ag;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 1948
    iget-object v0, p0, Lcom/facebook/internal/ag$d;->a:Lcom/facebook/internal/ag;

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/facebook/internal/ag;->a(Lcom/facebook/internal/ag;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 1949
    :try_start_3
    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    .line 834
    invoke-static {p1, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
