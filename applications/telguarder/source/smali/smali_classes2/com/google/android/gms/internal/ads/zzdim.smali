.class final synthetic Lcom/google/android/gms/internal/ads/zzdim;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkc;


# instance fields
.field private final zzfzh:Lcom/google/android/gms/internal/ads/zzvg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzvg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdim;->zzfzh:Lcom/google/android/gms/internal/ads/zzvg;

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdim;->zzfzh:Lcom/google/android/gms/internal/ads/zzvg;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzsp;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvg;->errorCode:I

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzsp;->onAppOpenAdFailedToLoad(I)V

    return-void
.end method
