.class public final Lcom/google/android/gms/internal/ads/zzame;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;

.field public static final zzdks:Lcom/google/android/gms/internal/ads/zzamf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzamf<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzdkt:Lcom/google/android/gms/internal/ads/zzamd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzamd<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzame;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzamg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzame;->zzdks:Lcom/google/android/gms/internal/ads/zzamf;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzamh;->zzdku:Lcom/google/android/gms/internal/ads/zzamd;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzame;->zzdkt:Lcom/google/android/gms/internal/ads/zzamd;

    return-void
.end method

.method public static final synthetic zze(Lorg/json/JSONObject;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzame;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method
