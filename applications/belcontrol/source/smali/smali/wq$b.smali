.class public final Lwq$b;
.super Lwp;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Les;)V
    .locals 0

    invoke-direct {p0, p1}, Lwp;-><init>(Les;)V

    return-void
.end method


# virtual methods
.method public final G(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/metadata/Metadata;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/metadata/Metadata;->d()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/metadata/Metadata;->c(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v5

    instance-of v6, v5, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    if-eqz v6, :cond_1

    check-cast v5, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;

    iget-object v5, v5, Landroidx/media2/exoplayer/external/metadata/id3/PrivFrame;->b:Ljava/lang/String;

    const-string v6, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    :goto_1
    if-ne v3, v4, :cond_3

    return-object p1

    :cond_3
    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    return-object v0

    :cond_4
    add-int/lit8 v0, v1, -0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    :goto_2
    if-ge v2, v1, :cond_7

    if-eq v2, v3, :cond_6

    if-ge v2, v3, :cond_5

    move v4, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v2, -0x1

    :goto_3
    invoke-virtual {p1, v2}, Landroidx/media2/exoplayer/external/metadata/Metadata;->c(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v5

    aput-object v5, v0, v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    new-instance p1, Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    return-object p1
.end method

.method public b(Landroidx/media2/exoplayer/external/Format;)V
    .locals 1

    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->h:Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-virtual {p0, v0}, Lwq$b;->G(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/Format;->h(Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p1

    invoke-super {p0, p1}, Lwp;->b(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method
