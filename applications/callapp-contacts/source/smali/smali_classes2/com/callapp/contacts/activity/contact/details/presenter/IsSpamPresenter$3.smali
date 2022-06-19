.class Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->expandIsSpamView(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$3;->b:Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$3;->a:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$3;->b:Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;

    const v1, 0x7f1203e2

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$3;->a:Lcom/callapp/framework/phone/Phone;

    const-string v3, "Is it spam show"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->showCorrectedInfo(Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter$3;->b:Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;->access$002(Lcom/callapp/contacts/activity/contact/details/presenter/IsSpamPresenter;Z)Z

    return-void
.end method
