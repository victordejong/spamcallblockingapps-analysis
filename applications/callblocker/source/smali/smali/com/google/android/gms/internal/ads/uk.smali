.class final Lcom/google/android/gms/internal/ads/uk;
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
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 1
    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/ads/uk;->a:I

    .line 2
    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/internal/ads/uk;->b:I

    .line 3
    sput v1, Lcom/google/android/gms/internal/ads/uk;->c:I

    .line 4
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/uk;->d:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method
