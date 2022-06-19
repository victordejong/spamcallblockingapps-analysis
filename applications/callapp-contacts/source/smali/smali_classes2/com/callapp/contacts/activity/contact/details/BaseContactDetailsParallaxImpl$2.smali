.class Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Z)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 606
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;->a:Z

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->d(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Z)Z

    .line 607
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->x(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v0

    const v1, 0x3e2e147b    # 0.17f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    .line 608
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->o(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->p(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v3}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->y(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void

    .line 609
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->p(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->z(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 614
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->o(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 617
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->p(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/FrameLayout;

    move-result-object v0

    const v3, 0x3f47ae14    # 0.78f

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v4}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->A(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)F

    move-result v4

    sub-float/2addr v2, v4

    mul-float v2, v2, v3

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_2

    .line 615
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->p(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$2;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->A(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)F

    move-result v1

    sub-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_5
    :goto_2
    return-void
.end method
