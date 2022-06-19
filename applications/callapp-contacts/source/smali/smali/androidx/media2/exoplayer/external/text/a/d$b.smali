.class final Landroidx/media2/exoplayer/external/text/a/d$b;
.super Landroidx/media2/exoplayer/external/text/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/text/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic d:Landroidx/media2/exoplayer/external/text/a/d;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/text/a/d;)V
    .locals 0

    .line 203
    iput-object p1, p0, Landroidx/media2/exoplayer/external/text/a/d$b;->d:Landroidx/media2/exoplayer/external/text/a/d;

    invoke-direct {p0}, Landroidx/media2/exoplayer/external/text/h;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/text/a/d;Landroidx/media2/exoplayer/external/text/a/d$1;)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/text/a/d$b;-><init>(Landroidx/media2/exoplayer/external/text/a/d;)V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    .line 207
    iget-object v0, p0, Landroidx/media2/exoplayer/external/text/a/d$b;->d:Landroidx/media2/exoplayer/external/text/a/d;

    .line 1144
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/text/h;->a()V

    .line 1145
    iget-object v0, v0, Landroidx/media2/exoplayer/external/text/a/d;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method
