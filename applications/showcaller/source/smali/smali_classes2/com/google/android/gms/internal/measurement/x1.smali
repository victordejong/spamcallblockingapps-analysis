.class public final Lcom/google/android/gms/internal/measurement/x1;
.super Lcom/google/android/gms/internal/measurement/u5;
.source "com.google.android.gms:play-services-measurement@@18.0.3"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/z6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/u5<",
        "Lcom/google/android/gms/internal/measurement/y1;",
        "Lcom/google/android/gms/internal/measurement/x1;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/z6;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/y1;->D()Lcom/google/android/gms/internal/measurement/y1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/u5;-><init>(Lcom/google/android/gms/internal/measurement/x5;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/j1;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/y1;->D()Lcom/google/android/gms/internal/measurement/y1;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/u5;-><init>(Lcom/google/android/gms/internal/measurement/x5;)V

    return-void
.end method


# virtual methods
.method public final t(I)Lcom/google/android/gms/internal/measurement/a2;
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/y1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/y1;->B(I)Lcom/google/android/gms/internal/measurement/a2;

    move-result-object p1

    return-object p1
.end method

.method public final v(Lcom/google/android/gms/internal/measurement/z1;)Lcom/google/android/gms/internal/measurement/x1;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/u5;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/u5;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/u5;->e:Lcom/google/android/gms/internal/measurement/x5;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/y1;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/u5;->n()Lcom/google/android/gms/internal/measurement/x5;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/a2;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/y1;->E(Lcom/google/android/gms/internal/measurement/y1;Lcom/google/android/gms/internal/measurement/a2;)V

    return-object p0
.end method
