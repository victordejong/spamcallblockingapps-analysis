.class Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Lcom/callapp/contacts/model/call/CallData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/call/CallData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Lcom/callapp/contacts/model/call/CallData;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$10;->b:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$10;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 698
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$10;->b:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$10;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$10;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/call/CallData;->getSimId()Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$10;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/call/CallData;->isIncoming()Z

    move-result v3

    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$10;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/call/CallData;->getTalkingStartTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$10;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->a(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/sim/SimManager$SimId;ZJLcom/callapp/contacts/model/call/CallData;)V

    return-void
.end method
