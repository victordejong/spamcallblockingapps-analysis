.class final Landroidx/media2/exoplayer/external/video/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/video/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/hardware/display/DisplayManager;

.field final synthetic b:Landroidx/media2/exoplayer/external/video/e;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/video/e;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 240
    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/e$a;->b:Landroidx/media2/exoplayer/external/video/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p2, p0, Landroidx/media2/exoplayer/external/video/e$a;->a:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 265
    iget-object p1, p0, Landroidx/media2/exoplayer/external/video/e$a;->b:Landroidx/media2/exoplayer/external/video/e;

    .line 1041
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/video/e;->a()V

    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
