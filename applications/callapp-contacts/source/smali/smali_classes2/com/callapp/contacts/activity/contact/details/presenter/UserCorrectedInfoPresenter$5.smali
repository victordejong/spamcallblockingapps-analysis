.class Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$5;
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
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$5;->b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$5;->a:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$5;->b:Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter$5;->a:Lcom/callapp/framework/phone/Phone;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;->access$100(Lcom/callapp/contacts/activity/contact/details/presenter/UserCorrectedInfoPresenter;Lcom/callapp/framework/phone/Phone;)V

    return-void
.end method
