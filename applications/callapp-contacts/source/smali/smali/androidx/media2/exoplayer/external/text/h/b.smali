.class public final Landroidx/media2/exoplayer/external/text/h/b;
.super Landroidx/media2/exoplayer/external/text/b;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/util/p;

.field private final b:Landroidx/media2/exoplayer/external/text/h/e$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Mp4WebvttDecoder"

    .line 55
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/text/b;-><init>(Ljava/lang/String;)V

    .line 56
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/h/b;->a:Landroidx/media2/exoplayer/external/util/p;

    .line 57
    new-instance v0, Landroidx/media2/exoplayer/external/text/h/e$a;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/text/h/e$a;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/text/h/b;->b:Landroidx/media2/exoplayer/external/text/h/e$a;

    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/text/h/e$a;I)Landroidx/media2/exoplayer/external/text/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/h/e$a;->a()V

    :cond_0
    :goto_0
    if-lez p2, :cond_3

    const/16 v0, 0x8

    if-lt p2, v0, :cond_2

    .line 90
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v1

    .line 91
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v2

    add-int/lit8 p2, p2, -0x8

    sub-int/2addr v1, v0

    .line 94
    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 1142
    iget v3, p0, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 95
    invoke-static {v0, v3, v1}, Landroidx/media2/exoplayer/external/util/ac;->a([BII)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    sub-int/2addr p2, v1

    const v1, 0x73747467

    if-ne v2, v1, :cond_1

    .line 99
    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/text/h/f;->a(Ljava/lang/String;Landroidx/media2/exoplayer/external/text/h/e$a;)V

    goto :goto_0

    :cond_1
    const v1, 0x7061796c

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, p1, v2}, Landroidx/media2/exoplayer/external/text/h/f;->a(Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/text/h/e$a;Ljava/util/List;)V

    goto :goto_0

    .line 88
    :cond_2
    new-instance p0, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const-string p1, "Incomplete vtt cue box header found."

    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_3
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/text/h/e$a;->b()Landroidx/media2/exoplayer/external/text/h/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a([BIZ)Landroidx/media2/exoplayer/external/text/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;
        }
    .end annotation

    .line 65
    iget-object p3, p0, Landroidx/media2/exoplayer/external/text/h/b;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p3, p1, p2}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    :goto_0
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/h/b;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result p2

    if-lez p2, :cond_2

    .line 68
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/h/b;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result p2

    const/16 p3, 0x8

    if-lt p2, p3, :cond_1

    .line 71
    iget-object p2, p0, Landroidx/media2/exoplayer/external/text/h/b;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result p2

    .line 72
    iget-object p3, p0, Landroidx/media2/exoplayer/external/text/h/b;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p3}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result p3

    const v0, 0x76747463

    if-ne p3, v0, :cond_0

    .line 74
    iget-object p3, p0, Landroidx/media2/exoplayer/external/text/h/b;->a:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/h/b;->b:Landroidx/media2/exoplayer/external/text/h/e$a;

    add-int/lit8 p2, p2, -0x8

    invoke-static {p3, v0, p2}, Landroidx/media2/exoplayer/external/text/h/b;->a(Landroidx/media2/exoplayer/external/util/p;Landroidx/media2/exoplayer/external/text/h/e$a;I)Landroidx/media2/exoplayer/external/text/a;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    iget-object p3, p0, Landroidx/media2/exoplayer/external/text/h/b;->a:Landroidx/media2/exoplayer/external/util/p;

    add-int/lit8 p2, p2, -0x8

    invoke-virtual {p3, p2}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    goto :goto_0

    .line 69
    :cond_1
    new-instance p1, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;

    const-string p2, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_2
    new-instance p2, Landroidx/media2/exoplayer/external/text/h/c;

    invoke-direct {p2, p1}, Landroidx/media2/exoplayer/external/text/h/c;-><init>(Ljava/util/List;)V

    return-object p2
.end method
