.class Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->requestUpdateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$8;->a:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 491
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isAnyCallActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->get()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/NotificationManager;->e()V

    :cond_0
    return-void
.end method
