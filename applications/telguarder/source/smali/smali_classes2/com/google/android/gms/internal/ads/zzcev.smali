.class final synthetic Lcom/google/android/gms/internal/ads/zzcev;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyu;


# instance fields
.field private final zzdjf:Ljava/lang/String;

.field private final zzgie:Lcom/google/android/gms/internal/ads/zzcer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcev;->zzgie:Lcom/google/android/gms/internal/ads/zzcer;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcev;->zzdjf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcev;->zzgie:Lcom/google/android/gms/internal/ads/zzcer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcev;->zzdjf:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcer;->zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzw;

    move-result-object p1

    return-object p1
.end method
