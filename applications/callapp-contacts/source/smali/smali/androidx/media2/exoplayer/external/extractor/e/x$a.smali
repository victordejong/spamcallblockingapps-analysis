.class final Landroidx/media2/exoplayer/external/extractor/e/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/e/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/media2/exoplayer/external/extractor/e/m;

.field final b:Landroidx/media2/exoplayer/external/util/z;

.field final c:Landroidx/media2/exoplayer/external/util/o;

.field d:Z

.field e:Z

.field f:Z

.field g:I

.field h:J


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/e/m;Landroidx/media2/exoplayer/external/util/z;)V
    .locals 0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/x$a;->a:Landroidx/media2/exoplayer/external/extractor/e/m;

    .line 323
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/x$a;->b:Landroidx/media2/exoplayer/external/util/z;

    .line 324
    new-instance p1, Landroidx/media2/exoplayer/external/util/o;

    const/16 p2, 0x40

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/o;-><init>([B)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/x$a;->c:Landroidx/media2/exoplayer/external/util/o;

    return-void
.end method
