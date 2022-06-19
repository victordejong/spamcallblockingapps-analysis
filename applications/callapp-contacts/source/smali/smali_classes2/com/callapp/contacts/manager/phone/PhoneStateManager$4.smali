.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;->updateCallList(Landroid/telecom/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/call/CallData;

.field final synthetic b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/model/call/CallData;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$4;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$4;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$4;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$4;->a:Lcom/callapp/contacts/model/call/CallData;

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$700(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/model/call/CallData;)V

    return-void
.end method
