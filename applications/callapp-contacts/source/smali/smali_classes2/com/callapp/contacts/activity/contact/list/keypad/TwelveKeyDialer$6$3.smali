.class Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;Ljava/lang/String;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$3;->b:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 692
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$3;->b:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6;->b:Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer;->a(Z)V

    .line 693
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/TwelveKeyDialer$6$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    .line 694
    invoke-static {v3}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    invoke-static {v3, v0, v1}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;J)Z

    move-result v9

    .line 695
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-string v7, "Contact List"

    const-string v8, "Speed Dial"

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/callapp/contacts/action/ActionDoneListener;)V

    return-void
.end method
