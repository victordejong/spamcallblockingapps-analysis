.class public final Lcom/google/android/gms/internal/ads/zzdvs;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzhvn:I = 0x1

.field public static final enum zzhvo:I = 0x2

.field public static final enum zzhvp:I = 0x3

.field public static final enum zzhvq:I = 0x4

.field private static final synthetic zzhvr:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v3, v1, v2

    aput v0, v1, v3

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdvs;->zzhvr:[I

    return-void
.end method

.method public static zzazc()[I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvs;->zzhvr:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
