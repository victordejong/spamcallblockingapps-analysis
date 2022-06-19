.class public Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation


# instance fields
.field public final a:I

.field public final b:Landroidx/media2/exoplayer/external/upstream/h;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/h;I)V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 258
    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->b:Landroidx/media2/exoplayer/external/upstream/h;

    .line 259
    iput p2, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/h;I)V
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 270
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->b:Landroidx/media2/exoplayer/external/upstream/h;

    .line 271
    iput p3, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media2/exoplayer/external/upstream/h;I)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 264
    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->b:Landroidx/media2/exoplayer/external/upstream/h;

    .line 265
    iput p3, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Landroidx/media2/exoplayer/external/upstream/h;I)V
    .locals 0

    .line 276
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    iput-object p3, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->b:Landroidx/media2/exoplayer/external/upstream/h;

    .line 278
    iput p4, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$HttpDataSourceException;->a:I

    return-void
.end method
