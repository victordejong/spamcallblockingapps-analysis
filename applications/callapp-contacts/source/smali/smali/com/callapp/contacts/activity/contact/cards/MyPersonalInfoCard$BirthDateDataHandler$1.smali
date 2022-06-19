.class Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler;->a(Lcom/callapp/contacts/model/contact/ContactData;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/common/model/json/JSONDate;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler;Lcom/callapp/common/model/json/JSONDate;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1;->b:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1;->a:Lcom/callapp/common/model/json/JSONDate;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 3

    .line 257
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 258
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1;->a:Lcom/callapp/common/model/json/JSONDate;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Lcom/callapp/common/model/json/JSONDate;->toCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 262
    :cond_0
    new-instance v0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;

    new-instance v1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1$1;-><init>(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1;Ljava/util/Calendar;)V

    invoke-direct {v0, p1, v1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;-><init>(Ljava/util/Calendar;Lcom/callapp/contacts/popup/contact/DialogDateAndTime$IDateAndTimeDialogListener;)V

    const/4 p1, 0x0

    .line 1203
    iput p1, v0, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->a:I

    .line 1204
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->setAllowToggleState(Z)V

    const/4 p1, 0x0

    .line 276
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->setMinDate(Ljava/lang/Long;)V

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/popup/contact/DialogDateAndTime;->setMaxDate(Ljava/lang/Long;)V

    .line 278
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler$1;->b:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard$BirthDateDataHandler;->a:Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;->access$400(Lcom/callapp/contacts/activity/contact/cards/MyPersonalInfoCard;)Lcom/callapp/contacts/activity/contact/details/PresentersContainer;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/contact/details/PresentersContainer;->getRealContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
