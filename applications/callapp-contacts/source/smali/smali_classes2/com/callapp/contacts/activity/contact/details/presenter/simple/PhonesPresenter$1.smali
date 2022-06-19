.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/call/CallData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;Lcom/callapp/contacts/model/call/CallData;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$1;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter$1;->a:Lcom/callapp/contacts/model/call/CallData;

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;->access$100(Lcom/callapp/contacts/activity/contact/details/presenter/simple/PhonesPresenter;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/model/call/CallState;Lcom/callapp/contacts/model/call/CallData;Z)V

    return-void
.end method
