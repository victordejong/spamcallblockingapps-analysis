.class public abstract Landroidx/media2/exoplayer/external/upstream/HttpDataSource$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;-><init>()V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$a;->a:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;

    return-void
.end method


# virtual methods
.method protected abstract a(Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;)Landroidx/media2/exoplayer/external/upstream/HttpDataSource;
.end method

.method public final bridge synthetic a()Landroidx/media2/exoplayer/external/upstream/f;
    .locals 1

    .line 1184
    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$a;->a:Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;

    invoke-virtual {p0, v0}, Landroidx/media2/exoplayer/external/upstream/HttpDataSource$a;->a(Landroidx/media2/exoplayer/external/upstream/HttpDataSource$b;)Landroidx/media2/exoplayer/external/upstream/HttpDataSource;

    move-result-object v0

    return-object v0
.end method
