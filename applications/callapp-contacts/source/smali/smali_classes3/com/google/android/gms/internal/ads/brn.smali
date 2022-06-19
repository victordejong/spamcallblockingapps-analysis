.class final synthetic Lcom/google/android/gms/internal/ads/brn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ehj;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/eht$z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eht$z;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/brn;->a:Lcom/google/android/gms/internal/ads/eht$z;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/eht$n$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/brn;->a:Lcom/google/android/gms/internal/ads/eht$z;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eht$n$a;->h()Lcom/google/android/gms/internal/ads/eht$l;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dnh;->k()Lcom/google/android/gms/internal/ads/dnh$b;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/dnh$b;

    check-cast v1, Lcom/google/android/gms/internal/ads/eht$l$a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/eht$l$a;->a(Lcom/google/android/gms/internal/ads/eht$z;)Lcom/google/android/gms/internal/ads/eht$l$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/eht$n$a;->a(Lcom/google/android/gms/internal/ads/eht$l$a;)Lcom/google/android/gms/internal/ads/eht$n$a;

    return-void
.end method
