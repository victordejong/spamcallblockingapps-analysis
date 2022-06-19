.class final Lcom/google/android/gms/internal/measurement/r7;
.super Lcom/google/android/gms/internal/measurement/p7;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/p7<",
        "Lcom/google/android/gms/internal/measurement/q7;",
        "Lcom/google/android/gms/internal/measurement/q7;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/p7;-><init>()V

    return-void
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;IJ)V
    .locals 0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lcom/google/android/gms/internal/measurement/q7;

    shl-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/q7;->h(ILjava/lang/Object;)V

    return-void
.end method

.method final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q7;->b()Lcom/google/android/gms/internal/measurement/q7;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/measurement/q7;

    check-cast p1, Lcom/google/android/gms/internal/measurement/q5;

    iput-object p2, p1, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/q7;

    return-void
.end method

.method final bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/q5;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/q7;

    return-object p1
.end method

.method final e(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/q5;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/q5;->zzc:Lcom/google/android/gms/internal/measurement/q7;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/q7;->d()V

    return-void
.end method

.method final bridge synthetic f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q7;->a()Lcom/google/android/gms/internal/measurement/q7;

    move-result-object v0

    check-cast p2, Lcom/google/android/gms/internal/measurement/q7;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/measurement/q7;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/q7;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/q7;->c(Lcom/google/android/gms/internal/measurement/q7;Lcom/google/android/gms/internal/measurement/q7;)Lcom/google/android/gms/internal/measurement/q7;

    move-result-object p1

    return-object p1
.end method

.method final bridge synthetic g(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/q7;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/q7;->e()I

    move-result p1

    return p1
.end method

.method final bridge synthetic h(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/q7;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/q7;->f()I

    move-result p1

    return p1
.end method

.method final bridge synthetic i(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/z4;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/measurement/q7;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/q7;->i(Lcom/google/android/gms/internal/measurement/z4;)V

    return-void
.end method
