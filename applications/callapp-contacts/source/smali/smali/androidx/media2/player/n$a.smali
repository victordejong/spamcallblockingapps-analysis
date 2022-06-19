.class final Landroidx/media2/player/n$a;
.super Landroidx/media2/player/n$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:Landroidx/media2/exoplayer/external/Format;


# direct methods
.method constructor <init>(IILandroidx/media2/exoplayer/external/Format;II)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    const/4 v3, 0x1

    if-nez p2, :cond_1

    if-nez p4, :cond_1

    const/4 v4, 0x5

    goto :goto_1

    :cond_1
    if-ne p2, v3, :cond_2

    if-ne p4, v3, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    .line 1417
    :cond_3
    iget v4, p3, Landroidx/media2/exoplayer/external/Format;->selectionFlags:I

    :goto_1
    if-nez p3, :cond_4

    const-string v5, "und"

    goto :goto_2

    .line 1419
    :cond_4
    iget-object v5, p3, Landroidx/media2/exoplayer/external/Format;->language:Ljava/lang/String;

    .line 1420
    :goto_2
    new-instance v6, Landroid/media/MediaFormat;

    invoke-direct {v6}, Landroid/media/MediaFormat;-><init>()V

    const-string v7, "mime"

    if-nez p2, :cond_5

    const-string v0, "text/cea-608"

    .line 1422
    invoke-virtual {v6, v7, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-ne p2, v3, :cond_6

    const-string v0, "text/cea-708"

    .line 1424
    invoke-virtual {v6, v7, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    if-ne p2, v0, :cond_a

    const-string v0, "text/vtt"

    .line 1426
    invoke-virtual {v6, v7, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v0, "language"

    .line 1431
    invoke-virtual {v6, v0, v5}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    const-string v5, "is-forced-subtitle"

    .line 1432
    invoke-virtual {v6, v5, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    const-string v5, "is-autoselect"

    .line 1434
    invoke-virtual {v6, v5, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    and-int/lit8 v0, v4, 0x1

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    :cond_9
    const-string v0, "is-default"

    .line 1436
    invoke-virtual {v6, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 394
    invoke-direct {p0, p1, v2, v6, p5}, Landroidx/media2/player/n$b;-><init>(IILandroid/media/MediaFormat;I)V

    .line 397
    iput p2, p0, Landroidx/media2/player/n$a;->a:I

    .line 398
    iput p4, p0, Landroidx/media2/player/n$a;->b:I

    .line 399
    iput-object p3, p0, Landroidx/media2/player/n$a;->c:Landroidx/media2/exoplayer/external/Format;

    return-void

    .line 1429
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
