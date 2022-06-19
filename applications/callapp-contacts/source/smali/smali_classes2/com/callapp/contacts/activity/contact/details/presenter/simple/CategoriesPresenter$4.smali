.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->updateEditTextSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$4;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$4;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$4;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$1900(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$4;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->access$1900(Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;)Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallState;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$4;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter$4;->a:Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/CategoriesPresenter;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method
