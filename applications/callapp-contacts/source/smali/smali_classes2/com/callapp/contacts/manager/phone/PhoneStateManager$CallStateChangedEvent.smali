.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallStateChangedEvent"
.end annotation


# instance fields
.field final a:Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

.field final b:I

.field final c:Ljava/lang/String;

.field final synthetic d:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;ILjava/lang/String;)V
    .locals 0

    .line 1621
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;->d:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1622
    iput-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

    .line 1623
    iput p3, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;->b:I

    .line 1624
    iput-object p4, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CallStateChangedEvent{eventSource="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", number=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
