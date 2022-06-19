.class final Landroidx/media2/widget/MediaControlView$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/widget/MediaControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/widget/MediaControlView;


# direct methods
.method constructor <init>(Landroidx/media2/widget/MediaControlView;)V
    .locals 0

    .line 1279
    iput-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->a:Landroidx/media2/widget/MediaControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1282
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->a:Landroidx/media2/widget/MediaControlView;

    iget-object p1, p1, Landroidx/media2/widget/MediaControlView;->e:Landroidx/media2/widget/MediaControlView$a;

    if-nez p1, :cond_0

    return-void

    .line 1286
    :cond_0
    iget-object p1, p0, Landroidx/media2/widget/MediaControlView$19;->a:Landroidx/media2/widget/MediaControlView;

    iget-boolean p1, p1, Landroidx/media2/widget/MediaControlView;->q:Z

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    .line 1288
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->H:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$19;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v1}, Landroidx/media2/widget/MediaControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroidx/media2/widget/l$d;->media2_widget_ic_fullscreen_exit:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1290
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->B:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$19;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v1}, Landroidx/media2/widget/MediaControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroidx/media2/widget/l$d;->media2_widget_ic_fullscreen_exit:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1293
    :cond_1
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->H:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$19;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v1}, Landroidx/media2/widget/MediaControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroidx/media2/widget/l$d;->media2_widget_ic_fullscreen:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1295
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->a:Landroidx/media2/widget/MediaControlView;

    iget-object v0, v0, Landroidx/media2/widget/MediaControlView;->B:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroidx/media2/widget/MediaControlView$19;->a:Landroidx/media2/widget/MediaControlView;

    invoke-virtual {v1}, Landroidx/media2/widget/MediaControlView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroidx/media2/widget/l$d;->media2_widget_ic_fullscreen:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1298
    :goto_0
    iget-object v0, p0, Landroidx/media2/widget/MediaControlView$19;->a:Landroidx/media2/widget/MediaControlView;

    iput-boolean p1, v0, Landroidx/media2/widget/MediaControlView;->q:Z

    return-void
.end method
