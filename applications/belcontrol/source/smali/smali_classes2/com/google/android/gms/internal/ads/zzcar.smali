.class public final Lcom/google/android/gms/internal/ads/zzcar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzcco;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgbx:Lcom/google/android/gms/internal/ads/zzcaq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcaq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcar;->zzgbx:Lcom/google/android/gms/internal/ads/zzcaq;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcaq;)Lcom/google/android/gms/internal/ads/zzcar;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcar;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcar;-><init>(Lcom/google/android/gms/internal/ads/zzcaq;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcaq;)Lcom/google/android/gms/internal/ads/zzcco;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcaq;->zzanb()Lcom/google/android/gms/internal/ads/zzcco;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcco;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcar;->zzgbx:Lcom/google/android/gms/internal/ads/zzcaq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcar;->zzd(Lcom/google/android/gms/internal/ads/zzcaq;)Lcom/google/android/gms/internal/ads/zzcco;

    move-result-object v0

    return-object v0
.end method
