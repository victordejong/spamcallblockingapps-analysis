.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$2;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$2;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->isContainsContactHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$2;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$2;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->access$100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060244

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$2;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$2;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$2;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->access$200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06001b

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$2;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter$2;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;->access$300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/NamePresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0601ec

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
