.class public final Lcom/google/android/gms/internal/ads/lt2;
.super Lcom/google/android/gms/internal/ads/d0;
.source ""


# instance fields
.field private final b:Lcom/google/android/gms/ads/admanager/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/admanager/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/d0;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lt2;->b:Lcom/google/android/gms/ads/admanager/b;

    return-void
.end method


# virtual methods
.method public final O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt2;->b:Lcom/google/android/gms/ads/admanager/b;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/admanager/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
