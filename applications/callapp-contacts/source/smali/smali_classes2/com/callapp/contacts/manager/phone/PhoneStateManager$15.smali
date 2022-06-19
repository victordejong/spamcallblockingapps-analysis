.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$15;
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
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .line 2302
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$15;->c:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$15;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$15;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 2305
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$15;->c:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$15;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$15;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$2500(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method
