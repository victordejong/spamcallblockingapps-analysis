.class Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onAdLoaded(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;Landroid/view/View;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$600(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getBottomLayoutAdColor()I

    move-result v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 259
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$700(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$700(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getBottomLayoutAdColor()I

    move-result v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->a:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 263
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-virtual {v2}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getBottomLayoutAdColor()I

    move-result v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 264
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$600(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 265
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getWindowHeight()I

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    iget v2, v2, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->adSize:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->setWindowHeight(I)V

    .line 266
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getWindowY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->repositionOverlayVertically(I)V

    .line 267
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$600(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/high16 v0, 0x41000000    # 8.0f

    .line 268
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-int v0, v0

    .line 269
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->a:Landroid/view/View;

    instance-of v2, v1, Lcom/mopub/mobileads/MoPubView;

    if-nez v2, :cond_4

    const v2, 0x7f0a0620

    .line 270
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 272
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$800()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->a:Landroid/view/View;

    const v2, 0x7f0a00b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 276
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$900()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->a:Landroid/view/View;

    const v2, 0x7f0a061f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 280
    invoke-static {}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->access$900()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/view/View;->measure(II)V

    .line 283
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->adSize:I

    goto :goto_0

    .line 285
    :cond_4
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    check-cast v1, Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getAdHeight()I

    move-result v1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    int-to-float v0, v1

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, v2, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->adSize:I

    .line 287
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getWindowHeight()I

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    iget v2, v2, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->adSize:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->setWindowHeight(I)V

    .line 288
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$4;->b:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getWindowY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->repositionOverlayVertically(I)V

    :cond_5
    return-void
.end method
