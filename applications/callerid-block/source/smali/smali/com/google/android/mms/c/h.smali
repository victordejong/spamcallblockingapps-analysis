.class public Lcom/google/android/mms/c/h;
.super Lcom/google/android/mms/c/f;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/mms/c/f;-><init>()V

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/f;->d(I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/c/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/mms/c/f;-><init>(Lcom/google/android/mms/c/m;)V

    return-void
.end method


# virtual methods
.method public f()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x83

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->f(I)[B

    move-result-object v0

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->d(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h()Lcom/google/android/mms/c/e;
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->b(I)Lcom/google/android/mms/c/e;

    move-result-object v0

    return-object v0
.end method

.method public i()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->f(I)[B

    move-result-object v0

    return-object v0
.end method

.method public j([B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x83

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/c/m;->j([BI)V

    return-void
.end method
