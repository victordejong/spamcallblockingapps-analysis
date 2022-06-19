.class public final Lcom/google/android/gms/internal/ads/cs;
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

.field private static b:Lcom/google/android/gms/internal/ads/bz;
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

    const-string v0, "gads:rewarded_sku:enabled"

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bz;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/bz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cs;->a:Lcom/google/android/gms/internal/ads/bz;

    const-string v0, "gads:rewarded_sku:override_test:enabled"

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/bz;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/bz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/cs;->b:Lcom/google/android/gms/internal/ads/bz;

    return-void
.end method
