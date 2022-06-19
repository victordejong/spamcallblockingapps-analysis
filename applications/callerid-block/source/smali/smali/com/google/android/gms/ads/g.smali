.class public final Lcom/google/android/gms/ads/g;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>(ILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;J)Lcom/google/android/gms/ads/g;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Lcom/google/android/gms/ads/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/ads/g;-><init>(ILjava/lang/String;J)V

    return-object v0
.end method
