.class final Lcom/google/android/gms/internal/ads/ds2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/fs2;


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/z14;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/z14;->z0()Lcom/google/android/gms/internal/ads/j14;

    move-result-object v0

    const-string v1, "E"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/j14;->k0(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/j14;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ee3;->n()Lcom/google/android/gms/internal/ads/ie3;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/z14;

    sput-object v0, Lcom/google/android/gms/internal/ads/ds2;->a:Lcom/google/android/gms/internal/ads/z14;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/z14;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/ds2;->a:Lcom/google/android/gms/internal/ads/z14;

    return-object v0
.end method
