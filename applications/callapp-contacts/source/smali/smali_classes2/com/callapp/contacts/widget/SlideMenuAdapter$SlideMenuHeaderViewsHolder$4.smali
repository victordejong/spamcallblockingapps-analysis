.class Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/glide/GlideUtils$AnimationEndsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$4;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$4;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;

    iget-object v0, v0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->j(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080469

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 503
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$4;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;

    iget-object v0, v0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->i(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder$4;->a:Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;

    iget-object v0, v0, Lcom/callapp/contacts/widget/SlideMenuAdapter$SlideMenuHeaderViewsHolder;->r:Lcom/callapp/contacts/widget/SlideMenuAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/widget/SlideMenuAdapter;->i(Lcom/callapp/contacts/widget/SlideMenuAdapter;)Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GifPlayer;->b()V

    :cond_0
    return-void
.end method
