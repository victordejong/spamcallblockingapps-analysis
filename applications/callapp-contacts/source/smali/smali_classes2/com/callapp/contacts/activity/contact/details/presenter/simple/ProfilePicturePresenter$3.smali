.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->onContactChanged(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$3;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$3;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$3;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-static {v0}, Lcom/callapp/contacts/util/UserCorrectedInfoUtil;->a(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$3;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->access$500(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->access$600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;I)V

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$3;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->access$700(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->access$600(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;I)V

    return-void
.end method
