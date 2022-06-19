.class final synthetic Lcom/google/android/gms/internal/ads/f4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/jv2;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/p4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/p4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/f4;->d:Lcom/google/android/gms/internal/ads/p4;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/f4;->d:Lcom/google/android/gms/internal/ads/p4;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/p4;->Y()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
