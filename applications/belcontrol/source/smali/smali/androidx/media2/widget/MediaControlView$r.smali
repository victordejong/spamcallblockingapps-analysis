.class public Landroidx/media2/widget/MediaControlView$r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$r;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$r;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, p1, Landroidx/media2/widget/MediaControlView;->f:Landroidx/media2/widget/MediaControlView$f0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Landroidx/media2/widget/MediaControlView;->x:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p1, Landroidx/media2/widget/MediaControlView;->g0:Landroid/widget/ImageButton;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->c:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    sget v2, Lyw;->ic_fullscreen_exit:I

    goto :goto_0

    :cond_1
    sget v2, Lyw;->ic_fullscreen:I

    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$r;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v1, p1, Landroidx/media2/widget/MediaControlView;->O:Landroid/widget/ImageButton;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->c:Landroid/content/res/Resources;

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$r;->a:Landroidx/media2/widget/MediaControlView;

    iput-boolean v0, p1, Landroidx/media2/widget/MediaControlView;->x:Z

    iget-object v1, p1, Landroidx/media2/widget/MediaControlView;->f:Landroidx/media2/widget/MediaControlView$f0;

    invoke-interface {v1, p1, v0}, Landroidx/media2/widget/MediaControlView$f0;->a(Landroid/view/View;Z)V

    return-void
.end method
