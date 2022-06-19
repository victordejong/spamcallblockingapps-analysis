.class Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/BaseAdTransparentActivity;->onAdLoaded(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:Lcom/callapp/contacts/util/BaseAdTransparentActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/BaseAdTransparentActivity;ILandroid/view/View;I)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;->d:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    iput p2, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;->a:I

    iput-object p3, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;->b:Landroid/view/View;

    iput p4, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;->d:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    iget-object v0, v0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->adPlaceHolder:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 168
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 169
    iget v1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 170
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;->d:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    iget-object v0, v0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->adPlaceHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 171
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;->d:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    iget-object v0, v0, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->adPlaceHolder:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;->b:Landroid/view/View;

    instance-of v1, v0, Lcom/mopub/mobileads/MoPubView;

    if-nez v1, :cond_2

    const v1, 0x7f0a0620

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f0601ec

    .line 176
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;->b:Landroid/view/View;

    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 180
    iget v1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;->b:Landroid/view/View;

    const v1, 0x7f0a061f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 184
    iget v1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$5;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method
