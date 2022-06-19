.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl$1;
.super Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;->getCoordinatorObserver()Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$CoordinatorLayoutObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;-><init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;)V

    return-void
.end method


# virtual methods
.method protected final a(FF)V
    .locals 1

    .line 24
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->a(FF)V

    .line 26
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;

    iget v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;->p:I

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isOrientationLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;

    iget v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;->p:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 28
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;

    iget p1, p1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;->p:I

    int-to-float p1, p1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;->e:Lcom/callapp/contacts/widget/CallAppCheckBox;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/CallAppCheckBox;->setTranslationY(F)V

    .line 34
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 36
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;->h:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-virtual {v0, p2}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->setAlpha(F)V

    .line 37
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;

    iget-object p2, p2, Lcom/callapp/contacts/activity/contact/details/ContactDetailsParallaxImpl;->h:Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->setTranslationY(F)V

    return-void
.end method

.method protected final b(FF)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$CoordinatorLayoutObserverImpl;->b(FF)V

    return-void
.end method
