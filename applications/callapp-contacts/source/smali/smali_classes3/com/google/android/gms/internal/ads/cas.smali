.class final synthetic Lcom/google/android/gms/internal/ads/cas;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/cao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/cao;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cas;->a:Lcom/google/android/gms/internal/ads/cao;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cas;->a:Lcom/google/android/gms/internal/ads/cao;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cao;->a:Lcom/google/android/gms/internal/ads/can;

    .line 1050
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/can;->b:Lcom/google/android/gms/internal/ads/cah;

    .line 2016
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cah;->b:Lcom/google/android/gms/internal/ads/bza;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/atb;->a()V

    return-void
.end method
