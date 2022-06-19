.class public Lcom/google/android/mms/c/t;
.super Lcom/google/android/mms/c/g;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/mms/c/g;-><init>()V

    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/f;->d(I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/c/m;Lcom/google/android/mms/c/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/mms/c/g;-><init>(Lcom/google/android/mms/c/m;Lcom/google/android/mms/c/j;)V

    return-void
.end method


# virtual methods
.method public o()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->f(I)[B

    move-result-object v0

    return-object v0
.end method

.method public p()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->f(I)[B

    move-result-object v0

    return-object v0
.end method

.method public q()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->e(I)I

    move-result v0

    return v0
.end method

.method public r()[B
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->f(I)[B

    move-result-object v0

    return-object v0
.end method
