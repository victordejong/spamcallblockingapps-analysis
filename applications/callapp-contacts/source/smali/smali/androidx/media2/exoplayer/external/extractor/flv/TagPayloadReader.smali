.class abstract Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader$UnsupportedFormatException;
    }
.end annotation


# instance fields
.field protected final b:Landroidx/media2/exoplayer/external/extractor/q;


# direct methods
.method protected constructor <init>(Landroidx/media2/exoplayer/external/extractor/q;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;->b:Landroidx/media2/exoplayer/external/extractor/q;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroidx/media2/exoplayer/external/util/p;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation
.end method

.method protected abstract a(Landroidx/media2/exoplayer/external/util/p;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation
.end method

.method public final b(Landroidx/media2/exoplayer/external/util/p;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;->a(Landroidx/media2/exoplayer/external/util/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/flv/TagPayloadReader;->a(Landroidx/media2/exoplayer/external/util/p;J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
