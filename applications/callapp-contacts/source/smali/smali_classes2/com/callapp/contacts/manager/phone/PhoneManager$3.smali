.class final Lcom/callapp/contacts/manager/phone/PhoneManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/popup/contact/AdapterText$AdapterEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneManager;->c(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$3;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$3;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRowClicked(I)V
    .locals 3

    .line 693
    sget-object v0, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->ASK:Lcom/callapp/contacts/manager/sim/SimManager$SimId;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/sim/SimManager$SimId;->getSimId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 694
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getSimManager()Lcom/callapp/contacts/manager/sim/SimManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$3;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, p1}, Lcom/callapp/contacts/manager/sim/SimManager;->a(Lcom/callapp/framework/phone/Phone;Landroid/content/Intent;I)V

    .line 696
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$3;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$3;->a:Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method
