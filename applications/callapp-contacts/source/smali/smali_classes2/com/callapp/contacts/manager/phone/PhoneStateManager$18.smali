.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$18;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;->showCallScreen(Landroid/content/Intent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 2342
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$18;->c:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$18;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$18;->b:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 2345
    invoke-static {}, Lcom/callapp/contacts/manager/OverlayManager;->get()Lcom/callapp/contacts/manager/OverlayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/OverlayManager;->a()V

    .line 2346
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$18;->c:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$18;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$18;->b:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$2600(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Ljava/lang/String;Landroid/content/Intent;Z)V

    return-void
.end method
