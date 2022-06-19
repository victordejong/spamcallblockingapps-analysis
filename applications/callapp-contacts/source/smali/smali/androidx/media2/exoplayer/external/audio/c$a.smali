.class public final Landroidx/media2/exoplayer/external/audio/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/audio/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/c$a;->a:I

    .line 60
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/c$a;->b:I

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Landroidx/media2/exoplayer/external/audio/c$a;->c:I

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media2/exoplayer/external/audio/c;
    .locals 5

    .line 92
    new-instance v0, Landroidx/media2/exoplayer/external/audio/c;

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/c$a;->a:I

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/c$a;->b:I

    iget v3, p0, Landroidx/media2/exoplayer/external/audio/c$a;->c:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/audio/c;-><init>(IIILandroidx/media2/exoplayer/external/audio/c$1;)V

    return-object v0
.end method
