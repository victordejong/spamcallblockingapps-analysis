.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->updatePhonesText(Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/call/CallState;Lcom/callapp/contacts/model/call/CallData;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/model/contact/CallHistoryData;

.field final synthetic c:Lcom/callapp/contacts/model/call/CallData;

.field final synthetic d:Z

.field final synthetic e:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/contact/CallHistoryData;Lcom/callapp/contacts/model/call/CallData;Z)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->e:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->a:Lcom/callapp/contacts/model/contact/ContactData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->b:Lcom/callapp/contacts/model/contact/CallHistoryData;

    iput-object p4, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->c:Lcom/callapp/contacts/model/call/CallData;

    iput-boolean p5, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->e:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->access$400(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;)V

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->e:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->access$500(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContainerMode()Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;->DURING_CALL_OVERLAY:Lcom/callapp/contacts/activity/contact/details/PresentersContainer$MODE;

    if-ne v0, v1, :cond_3

    .line 119
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->b:Lcom/callapp/contacts/model/contact/CallHistoryData;

    if-eqz v0, :cond_1

    .line 120
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->e:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;

    invoke-static {v1, v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->access$200(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;Lcom/callapp/contacts/model/contact/CallHistoryData;)V

    goto :goto_1

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->e:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;

    const v1, 0x7f1204e0

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->access$600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->e:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->c:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->access$700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;I)V

    .line 127
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->d:Z

    if-eqz v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->e:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->access$300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->e:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->access$300(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->c:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->e:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$3;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->access$800(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method
