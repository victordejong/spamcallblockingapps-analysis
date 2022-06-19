.class public final Lcom/google/android/gms/internal/ads/zzoc;
.super Lcom/google/android/gms/internal/ads/zznv;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final data:Ljava/lang/Object;

.field private final zzbfk:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zznr;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzoc;-><init>(Lcom/google/android/gms/internal/ads/zznr;IILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zznr;IILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 p4, 0x0

    aput p2, p3, p4

    .line 3
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zznv;-><init>(Lcom/google/android/gms/internal/ads/zznr;[I)V

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzoc;->zzbfk:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoc;->data:Ljava/lang/Object;

    return-void
.end method
