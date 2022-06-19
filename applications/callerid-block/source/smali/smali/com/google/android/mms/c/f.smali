.class public Lcom/google/android/mms/c/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field a:Lcom/google/android/mms/c/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    new-instance v0, Lcom/google/android/mms/c/m;

    invoke-direct {v0}, Lcom/google/android/mms/c/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/c/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    iput-object p1, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/google/android/mms/c/m;->e(I)I

    move-result v0

    return v0
.end method

.method b()Lcom/google/android/mms/c/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    return-object v0
.end method

.method public c(Lcom/google/android/mms/c/e;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/c/m;->g(Lcom/google/android/mms/c/e;I)V

    return-void
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x8c

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/c/m;->i(II)V

    return-void
.end method

.method public e(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/mms/c/f;->a:Lcom/google/android/mms/c/m;

    const/16 v1, 0x8d

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/c/m;->i(II)V

    return-void
.end method
