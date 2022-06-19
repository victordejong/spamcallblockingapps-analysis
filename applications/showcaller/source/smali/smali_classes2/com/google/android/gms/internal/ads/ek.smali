.class public final Lcom/google/android/gms/internal/ads/ek;
.super Lcom/google/android/gms/internal/ads/zs;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# instance fields
.field private final d:Lcom/google/android/gms/ads/admanager/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/admanager/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zs;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ek;->d:Lcom/google/android/gms/ads/admanager/b;

    return-void
.end method


# virtual methods
.method public final R5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ek;->d:Lcom/google/android/gms/ads/admanager/b;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/admanager/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
