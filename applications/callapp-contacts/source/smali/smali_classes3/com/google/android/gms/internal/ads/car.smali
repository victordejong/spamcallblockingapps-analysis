.class final synthetic Lcom/google/android/gms/internal/ads/car;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cao;

.field private final b:Lcom/google/android/gms/internal/ads/zzvh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cao;Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/car;->a:Lcom/google/android/gms/internal/ads/cao;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/car;->b:Lcom/google/android/gms/internal/ads/zzvh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/car;->a:Lcom/google/android/gms/internal/ads/cao;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/car;->b:Lcom/google/android/gms/internal/ads/zzvh;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cao;->a:Lcom/google/android/gms/internal/ads/can;

    .line 1050
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/can;->b:Lcom/google/android/gms/internal/ads/cah;

    .line 2017
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cah;->c:Lcom/google/android/gms/internal/ads/arp;

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/arp;->a(Lcom/google/android/gms/internal/ads/zzvh;)V

    return-void
.end method
