.class final synthetic Lcom/google/android/gms/ads/internal/overlay/f;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aee;


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/overlay/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/f;->a:Lcom/google/android/gms/ads/internal/overlay/c;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/f;->a:Lcom/google/android/gms/ads/internal/overlay/c;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/c;->c:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->o()V

    .line 4
    :cond_0
    return-void
.end method
