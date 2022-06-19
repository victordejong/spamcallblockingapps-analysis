.class Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Calendar;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1;Ljava/util/Calendar;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1$1;->b:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1$1;->a:Ljava/util/Calendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(J)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1$1;->a:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 266
    invoke-static {}, Lcom/callapp/contacts/manager/UserProfileManager;->get()Lcom/callapp/contacts/manager/UserProfileManager;

    move-result-object p1

    new-instance p2, Lcom/callapp/common/model/json/JSONDate;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1$1;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/callapp/common/model/json/JSONDate;-><init>(Ljava/util/Date;)V

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/UserProfileManager;->setBirthdate(Lcom/callapp/common/model/json/JSONDate;)V

    .line 267
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1$1;->b:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1;->b:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->access$300(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/contacts/loader/device/UserProfileLoader;->e(Lcom/callapp/contacts/model/contact/ContactData;)V

    return-void
.end method
