.class public Lcom/callapp/contacts/activity/contact/list/PusherManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPusherStateByRules()Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;
    .locals 1

    .line 28
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->MISSING_AUTO_START_PERMISSION:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->HUAWEI_PROTECTED_APPS:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultSystemPhoneApp()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 33
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->SHOW_ALLOW_DRAW_OVERLAY:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    goto :goto_0

    .line 35
    :cond_2
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;->DEFAULT_NO_PUSHER:Lcom/callapp/contacts/activity/contact/list/PusherManager$PusherStates;

    :goto_0
    return-object v0
.end method
