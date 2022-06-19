.class Lcom/callapp/contacts/util/ListsUtils$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/phone/CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ListsUtils$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ListsUtils$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ListsUtils$1;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$1$1;->a:Lcom/callapp/contacts/util/ListsUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(Lcom/callapp/contacts/model/call/CallData;)V
    .locals 2

    .line 136
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/model/call/CallState;->RINGING_OUTGOING:Lcom/callapp/contacts/model/call/CallState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getState()Lcom/callapp/contacts/model/call/CallState;

    move-result-object p1

    sget-object v0, Lcom/callapp/contacts/model/call/CallState;->POST_CALL:Lcom/callapp/contacts/model/call/CallState;

    if-ne p1, v0, :cond_1

    .line 138
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->removeListener(Lcom/callapp/contacts/manager/phone/CallStateListener;)V

    .line 139
    iget-object p1, p0, Lcom/callapp/contacts/util/ListsUtils$1$1;->a:Lcom/callapp/contacts/util/ListsUtils$1;

    iget-object p1, p1, Lcom/callapp/contacts/util/ListsUtils$1;->a:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    if-eqz p1, :cond_1

    .line 140
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/util/ListsUtils$1$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/ListsUtils$1$1$1;-><init>(Lcom/callapp/contacts/util/ListsUtils$1$1;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
