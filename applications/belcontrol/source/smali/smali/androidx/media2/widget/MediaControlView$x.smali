.class public Landroidx/media2/widget/MediaControlView$x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/MediaControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media2/widget/MediaControlView;


# direct methods
.method public constructor <init>(Landroidx/media2/widget/MediaControlView;)V
    .locals 0

    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$x;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$x;->a:Landroidx/media2/widget/MediaControlView;

    iget-boolean v1, v0, Landroidx/media2/widget/MediaControlView;->C:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/media2/widget/MediaControlView;->H0:Ljava/lang/Runnable;

    iget-wide v2, v0, Landroidx/media2/widget/MediaControlView;->t:J

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media2/widget/MediaControlView;->r(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
