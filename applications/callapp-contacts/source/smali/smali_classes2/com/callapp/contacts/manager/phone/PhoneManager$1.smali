.class Lcom/callapp/contacts/manager/phone/PhoneManager$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneManager;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/phone/PhoneManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneManager;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$1;->a:Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$1;->a:Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isSpeakerOn()Z

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$1;->a:Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/contacts/manager/phone/PhoneManager;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 619
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneManager$1;->a:Lcom/callapp/contacts/manager/phone/PhoneManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/contacts/manager/phone/PhoneManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->setSpeakerphoneOn(Z)V

    .line 621
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/ProximityManager;->get()Lcom/callapp/contacts/manager/ProximityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/ProximityManager;->b()V

    return-void
.end method
