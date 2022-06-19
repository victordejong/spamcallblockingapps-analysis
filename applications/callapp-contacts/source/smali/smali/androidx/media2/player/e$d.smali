.class final Landroidx/media2/player/e$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/player/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field final a:Landroidx/media2/common/MediaItem;

.field final b:Z


# direct methods
.method constructor <init>(Landroidx/media2/common/MediaItem;Z)V
    .locals 0

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    iput-object p1, p0, Landroidx/media2/player/e$d;->a:Landroidx/media2/common/MediaItem;

    .line 804
    iput-boolean p2, p0, Landroidx/media2/player/e$d;->b:Z

    return-void
.end method
