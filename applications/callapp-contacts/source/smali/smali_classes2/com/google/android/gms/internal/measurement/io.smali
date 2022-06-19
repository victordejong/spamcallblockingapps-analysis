.class final Lcom/google/android/gms/internal/measurement/io;
.super Lcom/google/android/gms/internal/measurement/im;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/im<",
        "Lcom/google/android/gms/internal/measurement/in;",
        "Lcom/google/android/gms/internal/measurement/in;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/im;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->b()Lcom/google/android/gms/internal/measurement/in;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/gl;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/gl;->zzc:Lcom/google/android/gms/internal/measurement/in;

    return-object p1
.end method

.method final synthetic a(Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/measurement/in;

    shl-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/in;->a(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/ft;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/measurement/in;

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/in;->a(Lcom/google/android/gms/internal/measurement/ft;)V

    return-void
.end method

.method final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/measurement/in;

    check-cast p1, Lcom/google/android/gms/internal/measurement/gl;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/gl;->zzc:Lcom/google/android/gms/internal/measurement/in;

    return-void
.end method

.method final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/in;->a()Lcom/google/android/gms/internal/measurement/in;

    move-result-object v0

    check-cast p2, Lcom/google/android/gms/internal/measurement/in;

    .line 1
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/in;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/in;

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/in;->a(Lcom/google/android/gms/internal/measurement/in;Lcom/google/android/gms/internal/measurement/in;)Lcom/google/android/gms/internal/measurement/in;

    move-result-object p1

    return-object p1
.end method

.method final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/gl;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/gl;->zzc:Lcom/google/android/gms/internal/measurement/in;

    const/4 v0, 0x0

    .line 1000
    iput-boolean v0, p1, Lcom/google/android/gms/internal/measurement/in;->e:Z

    return-void
.end method

.method final synthetic c(Ljava/lang/Object;)I
    .locals 6

    check-cast p1, Lcom/google/android/gms/internal/measurement/in;

    .line 1
    iget v0, p1, Lcom/google/android/gms/internal/measurement/in;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p1, Lcom/google/android/gms/internal/measurement/in;->a:I

    if-ge v0, v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/in;->b:[I

    .line 1001
    aget v2, v2, v0

    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/in;->c:[Ljava/lang/Object;

    .line 1002
    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/measurement/fm;

    const/16 v4, 0x8

    .line 1003
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v4

    .line 1004
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/fm;->a()I

    move-result v3

    add-int/2addr v4, v4

    const/16 v5, 0x10

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v5

    ushr-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v2

    add-int/2addr v5, v2

    add-int/2addr v4, v5

    const/16 v2, 0x18

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v2

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/fs;->f(I)I

    move-result v5

    add-int/2addr v5, v3

    add-int/2addr v2, v5

    add-int/2addr v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p1, Lcom/google/android/gms/internal/measurement/in;->d:I

    move v0, v1

    :cond_1
    return v0
.end method

.method final synthetic d(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/in;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/in;->c()I

    move-result p1

    return p1
.end method
