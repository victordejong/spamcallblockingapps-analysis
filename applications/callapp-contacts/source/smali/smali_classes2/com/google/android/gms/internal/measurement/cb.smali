.class public final Lcom/google/android/gms/internal/measurement/cb;
.super Lcom/google/android/gms/internal/measurement/gi;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/hp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/gi<",
        "Lcom/google/android/gms/internal/measurement/cc;",
        "Lcom/google/android/gms/internal/measurement/cb;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/hp;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cc;->b()Lcom/google/android/gms/internal/measurement/cc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/gi;-><init>(Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/bm;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cc;->b()Lcom/google/android/gms/internal/measurement/cc;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/gi;-><init>(Lcom/google/android/gms/internal/measurement/gl;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/cd;)Lcom/google/android/gms/internal/measurement/cb;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gi;->y()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/gi;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cb;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/cc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/gi;->A()Lcom/google/android/gms/internal/measurement/gl;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/ce;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/cc;->a(Lcom/google/android/gms/internal/measurement/cc;Lcom/google/android/gms/internal/measurement/ce;)V

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/internal/measurement/ce;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/cb;->a:Lcom/google/android/gms/internal/measurement/gl;

    .line 1
    check-cast v0, Lcom/google/android/gms/internal/measurement/cc;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/cc;->zza:Lcom/google/android/gms/internal/measurement/gs;

    const/4 v1, 0x0

    .line 1001
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/gs;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/ce;

    return-object v0
.end method
