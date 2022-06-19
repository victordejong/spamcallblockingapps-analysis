.class public final synthetic Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$a(Lcom/callapp/contacts/activity/viewcontroller/ViewController;I)Landroid/view/View;
    .locals 1
    .param p0, "_this"    # Lcom/callapp/contacts/activity/viewcontroller/ViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VIEW:",
            "Landroid/view/View;",
            ">(I)TVIEW;"
        }
    .end annotation

    .line 15
    invoke-interface {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public static $default$b(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)V
    .locals 2
    .param p0, "_this"    # Lcom/callapp/contacts/activity/viewcontroller/ViewController;

    .line 27
    invoke-interface {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static $default$getContext(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/Context;
    .locals 1
    .param p0, "_this"    # Lcom/callapp/contacts/activity/viewcontroller/ViewController;

    .line 19
    invoke-interface {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getResources(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "_this"    # Lcom/callapp/contacts/activity/viewcontroller/ViewController;

    .line 39
    invoke-interface {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static $default$isViewShown(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Z
    .locals 1
    .param p0, "_this"    # Lcom/callapp/contacts/activity/viewcontroller/ViewController;

    .line 31
    invoke-interface {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method
