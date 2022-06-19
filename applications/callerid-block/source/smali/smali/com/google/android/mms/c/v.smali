.class public Lcom/google/android/mms/c/v;
.super Lcom/google/android/mms/c/g;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/mms/c/g;-><init>()V

    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/f;->d(I)V

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/f;->e(I)V

    const-string v0, "application/vnd.wap.multipart.related"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/v;->w([B)V

    new-instance v0, Lcom/google/android/mms/c/e;

    const-string v1, "insert-address-token"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/c/e;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/f;->c(Lcom/google/android/mms/c/e;)V

    invoke-direct {p0}, Lcom/google/android/mms/c/v;->o()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/v;->C([B)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SendReq"

    const-string v2, "Unexpected InvalidHeaderValueException."

    invoke-static {v1, v2, v0}, Le/d/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lcom/google/android/mms/c/m;Lcom/google/android/mms/c/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/mms/c/g;-><init>(Lcom/google/android/mms/c/m;Lcom/google/android/mms/c/j;)V

    return-void
.end method

.method private o()[B
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x8e

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/c/m;->h(JI)V

    return-void
.end method

.method public B(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x90

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/c/m;->i(II)V

    return-void
.end method

.method public C([B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/c/m;->j([BI)V

    return-void
.end method

.method public p()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->f(I)[B

    move-result-object v0

    return-object v0
.end method

.method public q()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->e(I)I

    move-result v0

    return v0
.end method

.method public r()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->d(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->f(I)[B

    move-result-object v0

    return-object v0
.end method

.method public t()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->d(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->e(I)I

    move-result v0

    return v0
.end method

.method public v()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->f(I)[B

    move-result-object v0

    return-object v0
.end method

.method public w([B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x84

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/c/m;->j([BI)V

    return-void
.end method

.method public x(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x86

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/c/m;->i(II)V

    return-void
.end method

.method public y(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x88

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/c/m;->h(JI)V

    return-void
.end method

.method public z([B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x8a

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/c/m;->j([BI)V

    return-void
.end method
