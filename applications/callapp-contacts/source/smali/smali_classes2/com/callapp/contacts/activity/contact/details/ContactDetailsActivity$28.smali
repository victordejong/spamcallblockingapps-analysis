.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getBottomActionBarAnimation(II)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;I)V
    .locals 0

    .line 1916
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1919
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 1920
    sget v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN:I

    sget v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 1921
    iget v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;->a:I

    sget v2, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 1922
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3400(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1924
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    sget v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->BOTTOM_ACTION_BAR_HEIGHT_FULLY_OPEN:I

    iget v4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;->a:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v0

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    invoke-static {v2, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3502(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;F)F

    goto :goto_0

    .line 1927
    :cond_0
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget v3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;->a:I

    sget v4, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->BOTTOM_ACTION_BAR_HEIGHT_FULLY_CLOSED:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v0

    mul-float v3, v3, p1

    sub-float/2addr v1, v3

    invoke-static {v2, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3502(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;F)F

    .line 1928
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x7f06010a

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1931
    :goto_0
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->k:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1932
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->isActionsHidden()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1933
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->setScaleX(F)V

    .line 1934
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->setScaleY(F)V

    return-void

    .line 1936
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$28;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$3700(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a()V

    :cond_2
    return-void
.end method
