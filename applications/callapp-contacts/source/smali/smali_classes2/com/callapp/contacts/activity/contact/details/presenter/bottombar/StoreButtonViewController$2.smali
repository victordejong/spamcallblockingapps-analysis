.class Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 94
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 95
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->a(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object p1

    invoke-virtual {p1}, Lcom/skyfishjy/library/RippleBackground;->b()V

    .line 96
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->a(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object p1

    invoke-virtual {p1}, Lcom/skyfishjy/library/RippleBackground;->a()V

    .line 97
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->a(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;)Lcom/skyfishjy/library/RippleBackground;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController$2;->a:Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;->b(Lcom/callapp/contacts/activity/contact/details/presenter/bottombar/StoreButtonViewController;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Lcom/skyfishjy/library/RippleBackground;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
