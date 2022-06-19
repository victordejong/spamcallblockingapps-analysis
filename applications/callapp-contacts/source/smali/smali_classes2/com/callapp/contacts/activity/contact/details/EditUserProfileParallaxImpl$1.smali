.class Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl$1;
.super Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl;->getCoordinatorObserver()Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$CoordinatorLayoutObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)V

    return-void
.end method


# virtual methods
.method protected final a(FF)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a(FF)V

    .line 28
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl;

    iget p2, p2, Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl;->p:I

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isOrientationLandscape()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 29
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl;

    iget p2, p2, Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl;->p:I

    int-to-float p2, p2

    cmpl-float p2, p1, p2

    if-lez p2, :cond_0

    .line 30
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl;

    iget p1, p1, Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl;->p:I

    int-to-float p1, p1

    .line 34
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl;

    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method protected final b(FF)V
    .locals 1

    .line 21
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->b(FF)V

    .line 22
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/details/EditUserProfileParallaxImpl;->i:Lcom/callapp/contacts/widget/ProfilePictureView;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 1511
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/ProfilePictureView;->getBadgeView()Lcom/callapp/contacts/widget/DualCirclesCheckBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/DualCirclesCheckBox;->setAlpha(F)V

    return-void
.end method
