.class public final Landroidx/media2/exoplayer/external/source/hls/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/hls/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:Landroidx/media2/exoplayer/external/source/a/b;

.field public b:Z

.field public c:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/source/hls/d$c;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/d$c;->a:Landroidx/media2/exoplayer/external/source/a/b;

    const/4 v1, 0x0

    .line 84
    iput-boolean v1, p0, Landroidx/media2/exoplayer/external/source/hls/d$c;->b:Z

    .line 85
    iput-object v0, p0, Landroidx/media2/exoplayer/external/source/hls/d$c;->c:Landroid/net/Uri;

    return-void
.end method
