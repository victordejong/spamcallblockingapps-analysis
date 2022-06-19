.class Lcom/callapp/contacts/action/local/ChangePreferredSimAction$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/DialogSelectSingleChoiceBase$SingleChoiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/action/local/ChangePreferredSimAction;->b(Landroid/content/Context;Lcom/callapp/contacts/model/contact/ContactData;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

.field final synthetic b:Lcom/callapp/contacts/model/contact/ContactData;

.field final synthetic c:Lcom/callapp/contacts/action/local/ChangePreferredSimAction;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/action/local/ChangePreferredSimAction;Lcom/callapp/contacts/manager/sim/SimManager$SimId;Lcom/callapp/contacts/model/contact/ContactData;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/callapp/contacts/action/local/ChangePreferredSimAction$1;->c:Lcom/callapp/contacts/action/local/ChangePreferredSimAction;

    iput-object p2, p0, Lcom/callapp/contacts/action/local/ChangePreferredSimAction$1;->a:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    iput-object p3, p0, Lcom/callapp/contacts/action/local/ChangePreferredSimAction$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 49
    invoke-static {p1}, Lcom/callapp/contacts/manager/sim/SimManager;->a(I)Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/callapp/contacts/action/local/ChangePreferredSimAction$1;->a:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    if-eq p1, v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/callapp/contacts/action/local/ChangePreferredSimAction$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/callapp/contacts/action/local/ChangePreferredSimAction$1;->b:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/callapp/contacts/loader/PreferredSimManager;->a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/sim/SimManager$SimId;)V

    :cond_0
    return-void
.end method
