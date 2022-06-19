.class final Landroidx/media2/player/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/Format;)Z
    .locals 1

    .line 39
    iget-object p1, p1, Landroidx/media2/exoplayer/external/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "application/id3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Landroidx/media2/exoplayer/external/Format;)Landroidx/media2/exoplayer/external/metadata/a;
    .locals 0

    .line 44
    new-instance p1, Landroidx/media2/player/h$1;

    invoke-direct {p1, p0}, Landroidx/media2/player/h$1;-><init>(Landroidx/media2/player/h;)V

    return-object p1
.end method
