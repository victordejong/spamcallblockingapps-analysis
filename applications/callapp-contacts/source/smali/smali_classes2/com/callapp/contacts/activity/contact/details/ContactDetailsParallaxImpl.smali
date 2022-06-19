.class public Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;
.super Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;ZLandroidx/lifecycle/j;Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener;)V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p7}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$PositionChangedListener;Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsActivity$FlingListener;ZLandroidx/lifecycle/j;Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener;)V

    return-void
.end method


# virtual methods
.method protected getCoordinatorObserver()Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$CoordinatorLayoutObserver;
    .locals 1

    .line 18
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl$1;-><init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;)V

    return-object v0
.end method
