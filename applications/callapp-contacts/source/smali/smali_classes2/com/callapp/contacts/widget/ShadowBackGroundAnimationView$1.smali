.class Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView$1;->a:Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView$1;->a:Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView$1;->a:Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;->a(Z)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView$1;->a:Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;->a(Z)V

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView$1;->a:Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;->a(Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView$1;->a:Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;

    invoke-static {v0}, Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;->a(Lcom/callapp/contacts/widget/ShadowBackGroundAnimationView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method
