.class final Lcom/google/android/gms/internal/measurement/ft;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/android/gms/internal/measurement/fs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/fs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/measurement/gt;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    iput-object p0, p1, Lcom/google/android/gms/internal/measurement/fs;->a:Lcom/google/android/gms/internal/measurement/ft;

    return-void
.end method


# virtual methods
.method public final a(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/fs;->b(IJ)V

    return-void
.end method

.method public final a(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/fs;->d(II)V

    return-void
.end method

.method public final a(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/fs;->d(II)V

    return-void
.end method

.method public final a(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/fs;->a(IJ)V

    return-void
.end method

.method public final a(ILcom/google/android/gms/internal/measurement/fm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/fs;->a(ILcom/google/android/gms/internal/measurement/fm;)V

    return-void
.end method

.method public final a(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ia;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/measurement/ho;

    check-cast v0, Lcom/google/android/gms/internal/measurement/fr;

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/fr;->b(I)V

    .line 3
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/measurement/ey;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/ey;->k()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 4
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/measurement/ia;->b(Ljava/lang/Object;)I

    move-result v1

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/ey;->b(I)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/fr;->b(I)V

    iget-object p1, v0, Lcom/google/android/gms/internal/measurement/fr;->a:Lcom/google/android/gms/internal/measurement/ft;

    .line 5
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/ia;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/ft;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/fs;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/fs;->a(IZ)V

    return-void
.end method

.method public final b(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/fs;->b(II)V

    return-void
.end method

.method public final b(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/fs;->b(IJ)V

    return-void
.end method

.method public final b(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/ia;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/measurement/ho;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/fs;->a(II)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/fs;->a:Lcom/google/android/gms/internal/measurement/ft;

    .line 2
    invoke-interface {p3, p2, v1}, Lcom/google/android/gms/internal/measurement/ia;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/ft;)V

    const/4 p2, 0x4

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/fs;->a(II)V

    return-void
.end method

.method public final c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/fs;->b(II)V

    return-void
.end method

.method public final c(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/fs;->a(IJ)V

    return-void
.end method

.method public final d(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/fs;->d(II)V

    return-void
.end method

.method public final d(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/fs;->b(IJ)V

    return-void
.end method

.method public final e(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/fs;->c(II)V

    return-void
.end method

.method public final e(IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    add-long v1, p2, p2

    const/16 v3, 0x3f

    shr-long/2addr p2, v3

    xor-long/2addr p2, v1

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/fs;->a(IJ)V

    return-void
.end method

.method public final f(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ft;->a:Lcom/google/android/gms/internal/measurement/fs;

    add-int v1, p2, p2

    shr-int/lit8 p2, p2, 0x1f

    xor-int/2addr p2, v1

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/fs;->c(II)V

    return-void
.end method
