.class Lcom/facebook/internal/z$d;
.super Landroid/os/AsyncTask;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/z;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Bundle;

.field private d:[Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/facebook/internal/z;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lcom/facebook/internal/z$d;->a:Lcom/facebook/internal/z;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 809
    iput-object p2, p0, Lcom/facebook/internal/z$d;->b:Ljava/lang/String;

    .line 810
    iput-object p3, p0, Lcom/facebook/internal/z$d;->c:Landroid/os/Bundle;

    .line 811
    return-void
.end method

.method static synthetic a(Lcom/facebook/internal/z$d;)[Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/facebook/internal/z$d;->d:[Ljava/lang/Exception;

    return-object v0
.end method


# virtual methods
.method protected a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 888
    iget-object v0, p0, Lcom/facebook/internal/z$d;->a:Lcom/facebook/internal/z;

    invoke-static {v0}, Lcom/facebook/internal/z;->c(Lcom/facebook/internal/z;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 890
    iget-object v1, p0, Lcom/facebook/internal/z$d;->d:[Ljava/lang/Exception;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 891
    if-eqz v3, :cond_0

    .line 892
    iget-object v0, p0, Lcom/facebook/internal/z$d;->a:Lcom/facebook/internal/z;

    invoke-virtual {v0, v3}, Lcom/facebook/internal/z;->a(Ljava/lang/Throwable;)V

    .line 921
    :goto_1
    return-void

    .line 890
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 897
    :cond_1
    if-nez p1, :cond_2

    .line 898
    iget-object v0, p0, Lcom/facebook/internal/z$d;->a:Lcom/facebook/internal/z;

    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Failed to stage photos for web dialog"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/z;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 902
    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 903
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 904
    iget-object v0, p0, Lcom/facebook/internal/z$d;->a:Lcom/facebook/internal/z;

    new-instance v1, Lcom/facebook/FacebookException;

    const-string/jumbo v2, "Failed to stage photos for web dialog"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/facebook/internal/z;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 908
    :cond_3
    iget-object v1, p0, Lcom/facebook/internal/z$d;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "media"

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2, v3}, Lcom/facebook/internal/x;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 914
    invoke-static {}, Lcom/facebook/internal/v;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 915
    invoke-static {}, Lcom/facebook/j;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "dialog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/internal/z$d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/internal/z$d;->c:Landroid/os/Bundle;

    .line 913
    invoke-static {v0, v1, v2}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 918
    iget-object v1, p0, Lcom/facebook/internal/z$d;->a:Lcom/facebook/internal/z;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/internal/z;->a(Lcom/facebook/internal/z;Ljava/lang/String;)Ljava/lang/String;

    .line 919
    iget-object v0, p0, Lcom/facebook/internal/z$d;->a:Lcom/facebook/internal/z;

    invoke-static {v0}, Lcom/facebook/internal/z;->f(Lcom/facebook/internal/z;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 920
    iget-object v1, p0, Lcom/facebook/internal/z$d;->a:Lcom/facebook/internal/z;

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/internal/z;->a(Lcom/facebook/internal/z;I)V

    goto/16 :goto_1
.end method

.method protected varargs a([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 815
    iget-object v0, p0, Lcom/facebook/internal/z$d;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "media"

    .line 816
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 817
    array-length v0, v3

    new-array v0, v0, [Ljava/lang/String;

    .line 818
    array-length v2, v3

    new-array v2, v2, [Ljava/lang/Exception;

    iput-object v2, p0, Lcom/facebook/internal/z$d;->d:[Ljava/lang/Exception;

    .line 820
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    array-length v2, v3

    invoke-direct {v4, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 821
    new-instance v5, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 824
    invoke-static {}, Lcom/facebook/a;->a()Lcom/facebook/a;

    move-result-object v6

    .line 826
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    array-length v7, v3

    if-ge v2, v7, :cond_3

    .line 827
    invoke-virtual {p0}, Lcom/facebook/internal/z$d;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 828
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    .line 829
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 876
    :catch_0
    move-exception v0

    .line 877
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    .line 878
    invoke-virtual {v0, v9}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_2

    :cond_0
    move-object v0, v1

    .line 883
    :goto_3
    return-object v0

    .line 833
    :cond_1
    :try_start_1
    aget-object v7, v3, v2

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 835
    invoke-static {v7}, Lcom/facebook/internal/x;->a(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 836
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 837
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 826
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 840
    :cond_2
    new-instance v8, Lcom/facebook/internal/z$d$1;

    invoke-direct {v8, p0, v0, v2, v4}, Lcom/facebook/internal/z$d$1;-><init>(Lcom/facebook/internal/z$d;[Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;)V

    .line 869
    invoke-static {v6, v7, v8}, Lcom/facebook/c/a/c;->a(Lcom/facebook/a;Landroid/net/Uri;Lcom/facebook/k$b;)Lcom/facebook/k;

    move-result-object v7

    .line 872
    invoke-virtual {v7}, Lcom/facebook/k;->j()Lcom/facebook/l;

    move-result-object v7

    .line 873
    invoke-virtual {v5, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 875
    :cond_3
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_4
    move-object v0, v1

    .line 880
    goto :goto_3
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 803
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/internal/z$d;->a([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 803
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/internal/z$d;->a([Ljava/lang/String;)V

    return-void
.end method
