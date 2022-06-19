.class public final Lcom/google/android/gms/internal/ads/eht$f$a;
.super Lcom/google/android/gms/internal/ads/dnh$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/eht$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh$b<",
        "Lcom/google/android/gms/internal/ads/eht$f;",
        "Lcom/google/android/gms/internal/ads/eht$f$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$f;->b()Lcom/google/android/gms/internal/ads/eht$f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dnh$b;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ehv;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eht$f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/eht$f$a;
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$f$a;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$f;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/eht$f;->a(Lcom/google/android/gms/internal/ads/eht$f;I)V

    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/internal/ads/eht$f$a;
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$f$a;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$f;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/eht$f;->a(Lcom/google/android/gms/internal/ads/eht$f;Z)V

    return-object p0
.end method

.method public final a()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$f$a;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$f;

    .line 1003
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/eht$f;->zzchm:Z

    return v0
.end method
