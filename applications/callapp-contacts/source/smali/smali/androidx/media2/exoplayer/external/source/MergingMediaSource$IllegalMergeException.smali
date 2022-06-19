.class public final Landroidx/media2/exoplayer/external/source/MergingMediaSource$IllegalMergeException;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/MergingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IllegalMergeException"
.end annotation


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 68
    iput p1, p0, Landroidx/media2/exoplayer/external/source/MergingMediaSource$IllegalMergeException;->a:I

    return-void
.end method
