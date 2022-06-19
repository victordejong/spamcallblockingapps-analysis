.class public final Lcom/google/android/gms/internal/ads/zzccv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Lcom/google/android/gms/internal/ads/zzccd;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgfg:Lcom/google/android/gms/internal/ads/zzccp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzccp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzgfg:Lcom/google/android/gms/internal/ads/zzccp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzccp;)Lcom/google/android/gms/internal/ads/zzccv;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzccv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzccv;-><init>(Lcom/google/android/gms/internal/ads/zzccp;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzccp;)Lcom/google/android/gms/internal/ads/zzccd;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzccp;->zzaoq()Lcom/google/android/gms/internal/ads/zzccd;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzccd;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccv;->zzgfg:Lcom/google/android/gms/internal/ads/zzccp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzccv;->zzb(Lcom/google/android/gms/internal/ads/zzccp;)Lcom/google/android/gms/internal/ads/zzccd;

    move-result-object v0

    return-object v0
.end method
