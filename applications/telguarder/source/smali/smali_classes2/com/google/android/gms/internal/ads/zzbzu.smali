.class public final Lcom/google/android/gms/internal/ads/zzbzu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzbeb;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgbk:Lcom/google/android/gms/internal/ads/zzbyz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbyz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzu;->zzgbk:Lcom/google/android/gms/internal/ads/zzbyz;

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzbyz;)Lcom/google/android/gms/internal/ads/zzbzu;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbzu;-><init>(Lcom/google/android/gms/internal/ads/zzbyz;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzu;->zzgbk:Lcom/google/android/gms/internal/ads/zzbyz;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyz;->zzaje()Lcom/google/android/gms/internal/ads/zzbeb;

    move-result-object v0

    return-object v0
.end method
