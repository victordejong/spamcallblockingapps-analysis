.class public final synthetic Lcom/google/android/gms/internal/ads/zzazd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzazh;


# instance fields
.field private final zzdjf:Ljava/lang/String;

.field private final zzdlh:Ljava/lang/String;

.field private final zzehq:Ljava/util/Map;

.field private final zzehr:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazd;->zzdlh:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazd;->zzdjf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzazd;->zzehq:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzazd;->zzehr:[B

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/util/JsonWriter;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazd;->zzdlh:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazd;->zzdjf:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazd;->zzehq:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzazd;->zzehr:[B

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzaze;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLandroid/util/JsonWriter;)V

    return-void
.end method
