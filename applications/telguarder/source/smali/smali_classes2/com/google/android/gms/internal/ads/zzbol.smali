.class public final Lcom/google/android/gms/internal/ads/zzbol;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeqb<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfwt:Lcom/google/android/gms/internal/ads/zzboj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzboj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbol;->zzfwt:Lcom/google/android/gms/internal/ads/zzboj;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzboj;)Lcom/google/android/gms/internal/ads/zzbol;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbol;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbol;-><init>(Lcom/google/android/gms/internal/ads/zzboj;)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzboj;)Ljava/lang/String;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzboj;->zzakz()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzeqh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbol;->zzfwt:Lcom/google/android/gms/internal/ads/zzboj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbol;->zzb(Lcom/google/android/gms/internal/ads/zzboj;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
