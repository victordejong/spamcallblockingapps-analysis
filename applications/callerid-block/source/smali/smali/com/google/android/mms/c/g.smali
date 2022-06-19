.class public Lcom/google/android/mms/c/g;
.super Lcom/google/android/mms/c/f;
.source ""


# instance fields
.field private b:Lcom/google/android/mms/c/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/mms/c/f;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/mms/c/m;Lcom/google/android/mms/c/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/mms/c/f;-><init>(Lcom/google/android/mms/c/m;)V

    iput-object p2, p0, Lcom/google/android/mms/c/g;->b:Lcom/google/android/mms/c/j;

    return-void
.end method


# virtual methods
.method public f(Lcom/google/android/mms/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/c/m;->a(Lcom/google/android/mms/c/e;I)V

    return-void
.end method

.method public g()Lcom/google/android/mms/c/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/mms/c/g;->b:Lcom/google/android/mms/c/j;

    return-object v0
.end method

.method public h()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->d(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public i()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->e(I)I

    move-result v0

    return v0
.end method

.method public j()Lcom/google/android/mms/c/e;
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->b(I)Lcom/google/android/mms/c/e;

    move-result-object v0

    return-object v0
.end method

.method public k(Lcom/google/android/mms/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/mms/c/g;->b:Lcom/google/android/mms/c/j;

    return-void
.end method

.method public l(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/mms/c/m;->h(JI)V

    return-void
.end method

.method public m(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x8f

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/c/m;->i(II)V

    return-void
.end method

.method public n(Lcom/google/android/mms/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x96

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/c/m;->g(Lcom/google/android/mms/c/e;I)V

    return-void
.end method
