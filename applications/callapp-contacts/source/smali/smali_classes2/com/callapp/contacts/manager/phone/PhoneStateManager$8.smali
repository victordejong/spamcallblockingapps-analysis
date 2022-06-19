.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onCallStateChanged(Lcom/callapp/contacts/manager/phone/PhoneStateManager$EVENT_SOURCE;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;

.field final synthetic b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;)V
    .locals 0

    .line 1605
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$8;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$8;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1608
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$8;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$8;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1800(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/manager/phone/PhoneStateManager$CallStateChangedEvent;)V

    return-void
.end method
