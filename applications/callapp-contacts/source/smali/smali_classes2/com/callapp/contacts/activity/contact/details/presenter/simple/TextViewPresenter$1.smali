.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->setText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/TextViewPresenter;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
