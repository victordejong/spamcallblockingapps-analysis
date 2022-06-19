.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setupContactActions(Lcom/callapp/contacts/model/contact/ContactData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;ZZZZZ)V
    .locals 0

    .line 2968
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->a:Z

    iput-boolean p3, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->b:Z

    iput-boolean p4, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->c:Z

    iput-boolean p5, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->d:Z

    iput-boolean p6, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2971
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6000(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)V

    .line 2972
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->getThemeChangeViewController()Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/header/ThemeChangeViewController;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->a:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 2973
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6100(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    move-result-object v1

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->a:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->b:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 2974
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->c:Z

    if-eqz v0, :cond_4

    .line 2975
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 2976
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->a:Z

    if-nez v0, :cond_1

    .line 2977
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->d:Z

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setShouldHideSocialProfileAction(Z)V

    .line 2979
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6300(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    move-result-object v1

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 2980
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6400(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    move-result-object v1

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    if-ne v1, v3, :cond_3

    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    goto :goto_4

    .line 2982
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    if-ne v0, v1, :cond_6

    .line 2983
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6200(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->a:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->b:Z

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 2985
    :cond_6
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6300(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 2986
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6400(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 2988
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->a:Z

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->setShouldHideSocialProfileAction(Z)V

    .line 2990
    :goto_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$6500(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->b:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$900(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;)Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    move-result-object v1

    sget-object v3, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;->CONTACT_DETAILS:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$DetailsActivityMode;

    if-ne v1, v3, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 2991
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->f:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->getParallax()Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    move-result-object v0

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->a:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$49;->e:Z

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :cond_9
    :goto_6
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->b(Z)V

    return-void
.end method
