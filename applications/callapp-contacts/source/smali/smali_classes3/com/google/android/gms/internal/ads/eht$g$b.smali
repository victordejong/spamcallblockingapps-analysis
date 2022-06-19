.class public final Lcom/google/android/gms/internal/ads/eht$g$b;
.super Lcom/google/android/gms/internal/ads/dnh$b;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/eht$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dnh$b<",
        "Lcom/google/android/gms/internal/ads/eht$g;",
        "Lcom/google/android/gms/internal/ads/eht$g$b;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dov;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/eht$g;->b()Lcom/google/android/gms/internal/ads/eht$g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dnh$b;-><init>(Lcom/google/android/gms/internal/ads/dnh;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/ehv;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/eht$g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/eht$g$a$a;)Lcom/google/android/gms/internal/ads/eht$g$b;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eht$g$b;->a:Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/eht$g;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dnh$b;->f()Lcom/google/android/gms/internal/ads/dot;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/dnh;

    check-cast p1, Lcom/google/android/gms/internal/ads/eht$g$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/eht$g;->a(Lcom/google/android/gms/internal/ads/eht$g;Lcom/google/android/gms/internal/ads/eht$g$a;)V

    return-object p0
.end method
