.class public Landroidx/media2/common/CallbackMediaItem;
.super Landroidx/media2/common/MediaItem;
.source ""


# instance fields
.field public e:Lzf;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/media2/common/MediaItem;-><init>()V

    return-void
.end method


# virtual methods
.method public j()Lzf;
    .locals 1

    iget-object v0, p0, Landroidx/media2/common/CallbackMediaItem;->e:Lzf;

    return-object v0
.end method
