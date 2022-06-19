.class public final Lcom/google/android/gms/internal/ads/eht$r$a;
.super Lcom/google/android/gms/internal/ads/dnh$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/eht$r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh$b<",
        "Lcom/google/android/gms/internal/ads/eht$r;",
        "Lcom/google/android/gms/internal/ads/eht$r$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$r;->e()Lcom/google/android/gms/internal/ads/eht$r;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dnh$b;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ehv;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eht$r$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/eht$r$b;)Lcom/google/android/gms/internal/ads/eht$r$a;
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$r$a;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$r;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/eht$r;->a(Lcom/google/android/gms/internal/ads/eht$r;Lcom/google/android/gms/internal/ads/eht$r$b;)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/eht$r$c;)Lcom/google/android/gms/internal/ads/eht$r$a;
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dnh$b;->c()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dnh$b;->b:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$r$a;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$r;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/eht$r;->a(Lcom/google/android/gms/internal/ads/eht$r;Lcom/google/android/gms/internal/ads/eht$r$c;)V

    return-object p0
.end method
