.class public final Lcom/google/android/gms/internal/ads/cr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/google/android/gms/internal/ads/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bz<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Lcom/google/android/gms/internal/ads/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bz<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:ad_key_enabled"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bz;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/bz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cr;->a:Lcom/google/android/gms/internal/ads/bz;

    const-string v0, "gads:adshield:enable_adshield_instrumentation"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bz;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/bz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cr;->b:Lcom/google/android/gms/internal/ads/bz;

    return-void
.end method
