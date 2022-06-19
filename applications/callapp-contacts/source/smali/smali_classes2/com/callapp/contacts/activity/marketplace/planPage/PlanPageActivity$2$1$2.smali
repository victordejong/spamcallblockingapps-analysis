.class Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/android/billingclient/api/g;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/g;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/k;",
            ">;)V"
        }
    .end annotation

    .line 404
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->d(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->a(Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;)V

    .line 405
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->k(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Z

    .line 406
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 407
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->f(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Z

    .line 408
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/k;

    .line 410
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->g(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/billingclient/api/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 412
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {v1, p2}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->a(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;Lcom/android/billingclient/api/k;)V

    .line 413
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 414
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2$1;-><init>(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2;Landroid/view/ViewGroup;Lcom/android/billingclient/api/k;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 454
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2$1;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity$2;->a:Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;->j(Lcom/callapp/contacts/activity/marketplace/planPage/PlanPageActivity;)V

    return-void
.end method
