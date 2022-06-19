.class public Lcom/android/mms/transaction/j;
.super Lcom/android/mms/transaction/n;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private i:Ljava/lang/Thread;

.field private final j:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/p;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/n;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/p;)V

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/mms/transaction/j;->j:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/mms/transaction/n;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/mms/transaction/l;->b(Landroid/content/Context;)Lcom/android/mms/transaction/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/g;->a(Lcom/android/mms/transaction/h;)V

    return-void
.end method


# virtual methods
.method public h()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public j()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ReadRecTransaction"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/transaction/j;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/c/p;->h(Landroid/content/Context;)Lcom/google/android/mms/c/p;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/transaction/j;->j:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/google/android/mms/c/p;->j(Landroid/net/Uri;)Lcom/google/android/mms/c/f;

    move-result-object v3

    check-cast v3, Lcom/google/android/mms/c/s;

    iget-object v4, p0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/klinker/android/send_message/j;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/mms/c/e;

    invoke-direct {v5, v4}, Lcom/google/android/mms/c/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/google/android/mms/c/f;->c(Lcom/google/android/mms/c/e;)V

    new-instance v4, Lcom/google/android/mms/c/k;

    iget-object v5, p0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Lcom/google/android/mms/c/k;-><init>(Landroid/content/Context;Lcom/google/android/mms/c/f;)V

    invoke-virtual {v4}, Lcom/google/android/mms/c/k;->s()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/n;->m([B)[B

    iget-object v3, p0, Lcom/android/mms/transaction/j;->j:Landroid/net/Uri;

    sget-object v4, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/mms/c/p;->n(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v3, v2}, Lcom/android/mms/transaction/q;->d(I)V

    iget-object v3, p0, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v3, v0}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0}, Lcom/android/mms/transaction/q;->b()I

    move-result v0

    if-eq v0, v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v3}, Lcom/android/mms/transaction/q;->b()I

    move-result v3

    if-eq v3, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v2, v1}, Lcom/android/mms/transaction/q;->d(I)V

    iget-object v1, p0, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    iget-object v2, p0, Lcom/android/mms/transaction/j;->j:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/g;->c()V

    throw v0

    :catch_0
    nop

    iget-object v0, p0, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0}, Lcom/android/mms/transaction/q;->b()I

    move-result v0

    if-eq v0, v2, :cond_1

    goto :goto_0

    :catch_1
    nop

    iget-object v0, p0, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0}, Lcom/android/mms/transaction/q;->b()I

    move-result v0

    if-eq v0, v2, :cond_1

    goto :goto_0

    :catch_2
    nop

    iget-object v0, p0, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0}, Lcom/android/mms/transaction/q;->b()I

    move-result v0

    if-eq v0, v2, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/q;->d(I)V

    iget-object v0, p0, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    iget-object v1, p0, Lcom/android/mms/transaction/j;->j:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/q;->c(Landroid/net/Uri;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/g;->c()V

    return-void
.end method
