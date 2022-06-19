.class public final Lcom/google/android/gms/internal/ads/zzdpk;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzhof:I = 0x1

.field private static final synthetic zzhog:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdpk;->zzhog:[I

    return-void
.end method

.method public static zzawh()[I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdpk;->zzhog:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
