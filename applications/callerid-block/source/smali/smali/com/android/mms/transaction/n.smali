.class public abstract Lcom/android/mms/transaction/n;
.super Lcom/android/mms/transaction/g;
.source ""


# instance fields
.field private final d:I

.field protected e:Landroid/content/Context;

.field protected f:Ljava/lang/String;

.field protected g:Lcom/android/mms/transaction/q;

.field protected h:Lcom/android/mms/transaction/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/transaction/g;-><init>()V

    iput-object p1, p0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    new-instance p1, Lcom/android/mms/transaction/q;

    invoke-direct {p1}, Lcom/android/mms/transaction/q;-><init>()V

    iput-object p1, p0, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    iput p2, p0, Lcom/android/mms/transaction/n;->d:I

    iput-object p3, p0, Lcom/android/mms/transaction/n;->h:Lcom/android/mms/transaction/p;

    return-void
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/klinker/android/send_message/j;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public d()Lcom/android/mms/transaction/p;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/n;->h:Lcom/android/mms/transaction/p;

    return-object v0
.end method

.method protected e(Ljava/lang/String;)[B
    .locals 10

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/n;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v1 .. v9}, Lcom/android/mms/transaction/d;->f(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/n;->h:Lcom/android/mms/transaction/p;

    invoke-virtual {v1}, Lcom/android/mms/transaction/p;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/mms/transaction/n$b;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/transaction/n$b;-><init>(Lcom/android/mms/transaction/n;Ljava/lang/String;)V

    invoke-static {v0, p1, v1, v2}, Lcom/klinker/android/send_message/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/klinker/android/send_message/j$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot establish route: url is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/android/mms/transaction/n;->d:I

    return v0
.end method

.method public g()Lcom/android/mms/transaction/q;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/n;->g:Lcom/android/mms/transaction/q;

    return-object v0
.end method

.method public abstract h()I
.end method

.method public i(Lcom/android/mms/transaction/n;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/n;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/mms/transaction/n;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract j()V
.end method

.method protected k(J[B)[B
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/n;->h:Lcom/android/mms/transaction/p;

    invoke-virtual {v0}, Lcom/android/mms/transaction/p;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/transaction/n;->l(J[BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method protected l(J[BLjava/lang/String;)[B
    .locals 10

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/n;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, p1

    move-object v4, p4

    move-object v5, p3

    invoke-static/range {v1 .. v9}, Lcom/android/mms/transaction/d;->f(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/n;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/n;->h:Lcom/android/mms/transaction/p;

    invoke-virtual {v1}, Lcom/android/mms/transaction/p;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/android/mms/transaction/n$a;

    move-object v2, v8

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/transaction/n$a;-><init>(Lcom/android/mms/transaction/n;JLjava/lang/String;[B)V

    invoke-static {v0, p4, v1, v8}, Lcom/klinker/android/send_message/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/klinker/android/send_message/j$a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot establish route: mmscUrl is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/google/android/mms/MmsException;

    invoke-direct {p1}, Lcom/google/android/mms/MmsException;-><init>()V

    throw p1
.end method

.method protected m([B)[B
    .locals 3

    iget-object v0, p0, Lcom/android/mms/transaction/n;->h:Lcom/android/mms/transaction/p;

    invoke-virtual {v0}, Lcom/android/mms/transaction/p;->a()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/mms/transaction/n;->l(J[BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method protected n([BLjava/lang/String;)[B
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/mms/transaction/n;->l(J[BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/android/mms/transaction/p;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/n;->h:Lcom/android/mms/transaction/p;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/mms/transaction/n;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
