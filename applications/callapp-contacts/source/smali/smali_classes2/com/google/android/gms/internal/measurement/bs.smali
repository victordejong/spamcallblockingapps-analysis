.class public final Lcom/google/android/gms/internal/measurement/bs;
.super Lcom/google/android/gms/internal/measurement/gi;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/gi<",
        "Lcom/google/android/gms/internal/measurement/bu;",
        "Lcom/google/android/gms/internal/measurement/bs;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/hp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/bu;->d()Lcom/google/android/gms/internal/measurement/bu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/gi;-><init>(Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/bm;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/bu;->d()Lcom/google/android/gms/internal/measurement/bu;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/gi;-><init>(Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/measurement/bs;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bs;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/bu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/bu;->a(Lcom/google/android/gms/internal/measurement/bu;I)V

    return-object p0
.end method

.method public final a(J)Lcom/google/android/gms/internal/measurement/bs;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/bs;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/bu;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/bu;->a(Lcom/google/android/gms/internal/measurement/bu;J)V

    return-object p0
.end method
