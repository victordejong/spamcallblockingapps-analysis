.class final Lcom/google/android/gms/internal/ads/ck0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/internal/ads/rj0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dk0;Lcom/google/android/gms/internal/ads/rj0;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ck0;->d:Lcom/google/android/gms/internal/ads/rj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ck0;->d:Lcom/google/android/gms/internal/ads/rj0;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/rj0;->zzi()V

    return-void
.end method
