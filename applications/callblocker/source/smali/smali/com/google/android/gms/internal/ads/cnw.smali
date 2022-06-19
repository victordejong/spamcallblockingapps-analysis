.class public final Lcom/google/android/gms/internal/ads/cnw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field private static final enum b:I

.field private static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1
    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/ads/cnw;->b:I

    .line 2
    sput v1, Lcom/google/android/gms/internal/ads/cnw;->a:I

    .line 3
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/cnw;->c:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method
