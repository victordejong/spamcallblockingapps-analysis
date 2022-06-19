.class public final Lcom/google/android/gms/internal/measurement/u1;
.super Lcom/google/android/gms/internal/measurement/n5;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/r6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/n5<",
        "Lcom/google/android/gms/internal/measurement/v1;",
        "Lcom/google/android/gms/internal/measurement/u1;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/r6;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/v1;->y()Lcom/google/android/gms/internal/measurement/v1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/n5;-><init>(Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/h1;)V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/v1;->y()Lcom/google/android/gms/internal/measurement/v1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/n5;-><init>(Lcom/google/android/gms/internal/measurement/q5;)V

    return-void
.end method


# virtual methods
.method public final r(I)Lcom/google/android/gms/internal/measurement/x1;
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast p1, Lcom/google/android/gms/internal/measurement/v1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/v1;->w(I)Lcom/google/android/gms/internal/measurement/x1;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lcom/google/android/gms/internal/measurement/w1;)Lcom/google/android/gms/internal/measurement/u1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/n5;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/n5;->d:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/n5;->c:Lcom/google/android/gms/internal/measurement/q5;

    check-cast v0, Lcom/google/android/gms/internal/measurement/v1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/n5;->k()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/x1;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/v1;->z(Lcom/google/android/gms/internal/measurement/v1;Lcom/google/android/gms/internal/measurement/x1;)V

    return-object p0
.end method
