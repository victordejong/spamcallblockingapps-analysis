.class final synthetic Lcom/google/android/gms/internal/ads/zzcky;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdjf:Ljava/lang/String;

.field private final zzgmf:Lcom/google/android/gms/internal/ads/zzckv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzckv;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcky;->zzgmf:Lcom/google/android/gms/internal/ads/zzckv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcky;->zzdjf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcky;->zzgmf:Lcom/google/android/gms/internal/ads/zzckv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcky;->zzdjf:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzckv;->zzegt:Lcom/google/android/gms/internal/ads/zzazo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzazo;->zzel(Ljava/lang/String;)V

    return-void
.end method
