.class public final Lcom/google/android/gms/internal/ads/zzens;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zziuu:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziuv:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzenr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzenr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzens;->zziuu:Ljava/util/Iterator;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzenu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzenu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzens;->zziuv:Ljava/lang/Iterable;

    return-void
.end method

.method public static zzbkw()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzens;->zziuv:Ljava/lang/Iterable;

    return-object v0
.end method

.method public static synthetic zzbkx()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzens;->zziuu:Ljava/util/Iterator;

    return-object v0
.end method
