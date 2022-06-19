.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;->handleRinger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V
    .locals 0

    .line 847
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$6;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 850
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$6;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$100(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void

    .line 856
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getIncomingCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-nez v0, :cond_1

    .line 860
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$6;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1300(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :try_start_1
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$6;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1300(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 862
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    nop

    .line 865
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->getIncomingCall()Lcom/callapp/contacts/model/call/CallData;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 872
    :cond_1
    invoke-virtual {v0}, Lcom/callapp/contacts/model/call/CallData;->isBlocked()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$6;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->getCallListSize()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 878
    :goto_1
    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$6;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$100(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x14

    if-ge v1, v2, :cond_3

    const-wide/16 v2, 0x64

    .line 881
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 887
    :cond_3
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$6;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$100(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 888
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->fA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    return-void

    .line 894
    :cond_4
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$6;->a:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v1, v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$700(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/model/call/CallData;)V

    :cond_5
    :goto_2
    return-void
.end method
