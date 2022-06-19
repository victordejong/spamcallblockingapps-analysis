.class public Lcom/google/android/mms/c/i;
.super Lcom/google/android/mms/c/f;
.source ""


# direct methods
.method public constructor <init>(I[BI)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/mms/c/f;-><init>()V

    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/c/f;->d(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/mms/c/f;->e(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/mms/c/i;->g([B)V

    invoke-virtual {p0, p3}, Lcom/google/android/mms/c/i;->f(I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/c/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/mms/c/f;-><init>(Lcom/google/android/mms/c/m;)V

    return-void
.end method


# virtual methods
.method public f(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x95

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/c/m;->i(II)V

    return-void
.end method

.method public g([B)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/c/m;->j([BI)V

    return-void
.end method
