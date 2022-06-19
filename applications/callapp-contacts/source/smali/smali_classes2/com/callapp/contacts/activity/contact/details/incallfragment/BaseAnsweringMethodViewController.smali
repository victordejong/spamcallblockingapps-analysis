.class public abstract Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/viewcontroller/ViewController;


# instance fields
.field private a:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;

.field private final b:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;->getLayoutResource()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;->b:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public synthetic a(I)Landroid/view/View;
    .locals 0

    invoke-static {p0, p1}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$a(Lcom/callapp/contacts/activity/viewcontroller/ViewController;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;

    return-void
.end method

.method public synthetic b()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$b(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)V

    return-void
.end method

.method protected getCallback()Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;->a:Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;

    return-object v0
.end method

.method public synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$getContext(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getLayoutResource()I
.end method

.method public synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$getResources(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRootView()Landroid/view/View;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;->getRootView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public synthetic isViewShown()Z
    .locals 1

    invoke-static {p0}, Lcom/callapp/contacts/activity/viewcontroller/ViewController$-CC;->$default$isViewShown(Lcom/callapp/contacts/activity/viewcontroller/ViewController;)Z

    move-result v0

    return v0
.end method
