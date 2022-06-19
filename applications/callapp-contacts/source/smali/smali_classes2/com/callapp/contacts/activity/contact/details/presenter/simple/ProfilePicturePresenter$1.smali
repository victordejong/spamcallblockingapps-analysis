.class Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$1;
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

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$1;->b:Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;->access$000(Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter;)Lcom/callapp/contacts/widget/ProfilePictureView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/simple/ProfilePicturePresenter$1;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
