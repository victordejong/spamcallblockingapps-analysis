.class final synthetic Lcom/google/android/gms/internal/ads/zzcye;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdkc;


# instance fields
.field private final zzdjf:Ljava/lang/String;

.field private final zzdlh:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcye;->zzdlh:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcye;->zzdjf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcye;->zzdlh:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcye;->zzdjf:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzxt;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzxt;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
