.class Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$9;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 669
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$9;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->s(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;)V

    .line 670
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 675
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->f:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 676
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0x4b

    if-ne v3, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v5, 0x96

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    or-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0xfa

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    or-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 677
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$9;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-static {v0, v4}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Z)V

    return-void

    .line 679
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter$9;->a:Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;->b(Lcom/callapp/contacts/activity/contact/details/presenter/callbarpresenter/CallBarPresenter;Z)V

    return-void
.end method
