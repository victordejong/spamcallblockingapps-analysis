.class final synthetic Lcom/google/android/gms/internal/ads/zzcwq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqt;


# instance fields
.field private final zzgwr:Lcom/google/android/gms/internal/ads/zzcwo;

.field private final zzgws:Lcom/google/android/gms/internal/ads/zzace;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcwo;Lcom/google/android/gms/internal/ads/zzace;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwq;->zzgwr:Lcom/google/android/gms/internal/ads/zzcwo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwq;->zzgws:Lcom/google/android/gms/internal/ads/zzace;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwq;->zzgwr:Lcom/google/android/gms/internal/ads/zzcwo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwq;->zzgws:Lcom/google/android/gms/internal/ads/zzace;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcwo;->zza(Lcom/google/android/gms/internal/ads/zzace;)V

    return-void
.end method
