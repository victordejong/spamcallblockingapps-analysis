.class Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->expandUserCorrectedInfoPresenterIfNeeded(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/ContactData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/framework/phone/Phone;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;Ljava/lang/String;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$4;->c:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$4;->b:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$4;->c:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$4;->b:Lcom/callapp/framework/phone/Phone;

    const-string v3, "Is it X shown"

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->showCorrectedInfo(Ljava/lang/String;Lcom/callapp/framework/phone/Phone;Ljava/lang/String;)V

    return-void
.end method
