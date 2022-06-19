.class public Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment;
.super Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;,
        Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ConfirmOrDismissClicked;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment<",
        "Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;",
        "Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/cards/framework/horizontal/pager/HorizontalPagerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 2037
    new-instance v0, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 20
    check-cast p1, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;

    check-cast p2, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;

    const/4 v0, 0x0

    .line 1042
    invoke-virtual {p1, p2, v0}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment$ViewHolder;->a(Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;Z)V

    if-eqz p2, :cond_0

    .line 1044
    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSocialProfileCard$ConfirmSocialProfileObject;->getBgColor()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/contact/cards/confirmProfile/ConfirmSingleProfileFragment;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public getLayoutResId()I
    .locals 1

    const v0, 0x7f0d00a0

    return v0
.end method
