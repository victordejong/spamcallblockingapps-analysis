.class final Landroidx/media2/exoplayer/external/extractor/mp4/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/mp4/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/UUID;

.field private final b:I

.field private final c:[B


# direct methods
.method public constructor <init>(Ljava/util/UUID;I[B)V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/j$a;->a:Ljava/util/UUID;

    .line 207
    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/mp4/j$a;->b:I

    .line 208
    iput-object p3, p0, Landroidx/media2/exoplayer/external/extractor/mp4/j$a;->c:[B

    return-void
.end method
