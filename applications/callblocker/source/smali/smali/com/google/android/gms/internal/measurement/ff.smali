.class public final Lcom/google/android/gms/internal/measurement/ff;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method static a(Lcom/google/android/gms/internal/measurement/fe;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/fe",
            "<TK;TV;>;TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/fe;->a:Lcom/google/android/gms/internal/measurement/hl;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/dw;->a(Lcom/google/android/gms/internal/measurement/hl;ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/fe;->c:Lcom/google/android/gms/internal/measurement/hl;

    const/4 v2, 0x2

    .line 5
    invoke-static {v1, v2, p2}, Lcom/google/android/gms/internal/measurement/dw;->a(Lcom/google/android/gms/internal/measurement/hl;ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    return v0
.end method

.method static a(Lcom/google/android/gms/internal/measurement/zzes;Lcom/google/android/gms/internal/measurement/fe;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/measurement/zzes;",
            "Lcom/google/android/gms/internal/measurement/fe",
            "<TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/fe;->a:Lcom/google/android/gms/internal/measurement/hl;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/dw;->a(Lcom/google/android/gms/internal/measurement/zzes;Lcom/google/android/gms/internal/measurement/hl;ILjava/lang/Object;)V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/fe;->c:Lcom/google/android/gms/internal/measurement/hl;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p3}, Lcom/google/android/gms/internal/measurement/dw;->a(Lcom/google/android/gms/internal/measurement/zzes;Lcom/google/android/gms/internal/measurement/hl;ILjava/lang/Object;)V

    .line 3
    return-void
.end method
