.class Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$2;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZLcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$contactDetailsThemeChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$2;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$AnimatorListenerImpl;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 90
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$2;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->b(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$2;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->c(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController$2;->a:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->d(Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
