.class final Lcom/google/android/gms/internal/ads/cac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field private static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2
    sput v3, Lcom/google/android/gms/internal/ads/cac;->a:I

    .line 3
    sput v4, Lcom/google/android/gms/internal/ads/cac;->b:I

    .line 4
    sput v0, Lcom/google/android/gms/internal/ads/cac;->c:I

    .line 5
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/android/gms/internal/ads/cac;->a:I

    aput v2, v0, v1

    sget v1, Lcom/google/android/gms/internal/ads/cac;->b:I

    aput v1, v0, v3

    sget v1, Lcom/google/android/gms/internal/ads/cac;->c:I

    aput v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/cac;->d:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/cac;->d:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
