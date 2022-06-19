.class Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;Landroid/view/View;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 45
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment$1;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 47
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment$1;->a:Landroid/view/View;

    const v3, 0x7f0a06b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 48
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    .line 49
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v3

    div-float/2addr v1, v2

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;->a(Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f070204

    invoke-static {v2}, Lcom/callapp/contacts/util/ViewUtils;->getDimension(I)F

    move-result v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->c(Landroid/view/View;I)V

    .line 54
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment$1;->b:Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;->a(Lcom/callapp/contacts/activity/marketplace/KeypadPreviewFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f070206

    invoke-static {v2}, Lcom/callapp/contacts/util/ViewUtils;->getDimension(I)F

    move-result v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    const v3, 0x7f070205

    invoke-static {v3}, Lcom/callapp/contacts/util/ViewUtils;->getDimension(I)F

    move-result v3

    mul-float v0, v0, v3

    float-to-int v0, v0

    invoke-static {v1, v2, v0}, Lcom/callapp/contacts/util/ViewUtils;->b(Landroid/view/View;II)V

    return-void
.end method
