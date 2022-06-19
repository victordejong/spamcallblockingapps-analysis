.class public final Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdLoadException"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method private constructor <init>(ILjava/lang/Exception;)V
    .locals 0

    .line 114
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 115
    iput p1, p0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException;->a:I

    return-void
.end method

.method public static a(Ljava/lang/Exception;)Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException;
    .locals 2

    .line 91
    new-instance v0, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException;-><init>(ILjava/lang/Exception;)V

    return-object v0
.end method
