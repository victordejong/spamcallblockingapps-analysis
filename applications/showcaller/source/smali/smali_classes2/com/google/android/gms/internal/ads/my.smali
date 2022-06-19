.class public final Lcom/google/android/gms/internal/ads/my;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/nx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/nx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:video:metric_reporting_enabled"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/nx;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/nx;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/my;->a:Lcom/google/android/gms/internal/ads/nx;

    return-void
.end method
