.class public Lrn0;
.super Lwn0;
.source ""


# static fields
.field public static volatile i:Lrn0;


# instance fields
.field public g:Landroid/net/Uri;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lwn0;-><init>()V

    return-void
.end method

.method public static C()Lrn0;
    .locals 2

    sget-object v0, Lrn0;->i:Lrn0;

    if-nez v0, :cond_1

    const-class v0, Lrn0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lrn0;->i:Lrn0;

    if-nez v1, :cond_0

    new-instance v1, Lrn0;

    invoke-direct {v1}, Lrn0;-><init>()V

    sput-object v1, Lrn0;->i:Lrn0;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lrn0;->i:Lrn0;

    return-object v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lrn0;->h:Ljava/lang/String;

    return-object v0
.end method

.method public B()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lrn0;->g:Landroid/net/Uri;

    return-object v0
.end method

.method public D(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lrn0;->g:Landroid/net/Uri;

    return-void
.end method

.method public b(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    invoke-super {p0, p1}, Lwn0;->b(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p1

    invoke-virtual {p0}, Lrn0;->B()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/login/LoginClient$Request;->l(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lrn0;->A()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/facebook/login/LoginClient$Request;->k(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method
