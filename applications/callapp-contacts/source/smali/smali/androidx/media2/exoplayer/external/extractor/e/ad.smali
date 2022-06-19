.class final Landroidx/media2/exoplayer/external/extractor/e/ad;
.super Landroidx/media2/exoplayer/external/extractor/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/e/ad$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/util/z;JJI)V
    .locals 16

    .line 48
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/a$b;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/a$b;-><init>()V

    new-instance v2, Landroidx/media2/exoplayer/external/extractor/e/ad$a;

    move-object/from16 v0, p1

    move/from16 v3, p6

    invoke-direct {v2, v3, v0}, Landroidx/media2/exoplayer/external/extractor/e/ad$a;-><init>(ILandroidx/media2/exoplayer/external/util/z;)V

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0xbc

    const/16 v15, 0x3ac

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v15}, Landroidx/media2/exoplayer/external/extractor/a;-><init>(Landroidx/media2/exoplayer/external/extractor/a$d;Landroidx/media2/exoplayer/external/extractor/a$f;JJJJJJI)V

    return-void
.end method
