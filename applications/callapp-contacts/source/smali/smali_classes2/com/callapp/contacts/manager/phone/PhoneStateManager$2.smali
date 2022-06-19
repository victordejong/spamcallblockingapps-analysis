.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;
.super Landroid/telecom/Call$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;->onCallAdded(Landroid/telecom/Call;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-direct {p0}, Landroid/telecom/Call$Callback;-><init>()V

    const/high16 p1, -0x80000000

    .line 239
    iput p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;->a:I

    return-void
.end method

.method private synthetic a(Landroid/telecom/Call;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$600(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Landroid/telecom/Call;)V

    return-void
.end method

.method public static synthetic lambda$t7foFZ7JjfLPhMlvTK4Ey78n90E(Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;Landroid/telecom/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;->a(Landroid/telecom/Call;)V

    return-void
.end method


# virtual methods
.method public onCallDestroyed(Landroid/telecom/Call;)V
    .locals 0

    .line 290
    invoke-virtual {p1, p0}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    return-void
.end method

.method public onCannedTextResponsesLoaded(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onChildrenChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConferenceableCallsChanged(Landroid/telecom/Call;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Call;",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onDetailsChanged(Landroid/telecom/Call;Landroid/telecom/Call$Details;)V
    .locals 0

    return-void
.end method

.method public onParentChanged(Landroid/telecom/Call;Landroid/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Call;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Landroid/telecom/Call;I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {}, Lcom/callapp/contacts/util/PowerUtils;->isScreenOn()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$202(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Z)Z

    .line 245
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->dE:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x1

    .line 1039
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 246
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->hp:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 2039
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 248
    :cond_0
    iget v0, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;->a:I

    if-eq v0, p2, :cond_1

    .line 249
    iput p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;->a:I

    .line 250
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TelecommCallCallback onStateChanged number= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v2, p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$300(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " list size "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$400(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 251
    iget-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {p2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$500(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/manager/phone/-$$Lambda$PhoneStateManager$2$t7foFZ7JjfLPhMlvTK4Ey78n90E;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/manager/phone/-$$Lambda$PhoneStateManager$2$t7foFZ7JjfLPhMlvTK4Ey78n90E;-><init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager$2;Landroid/telecom/Call;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 253
    :cond_1
    const-class v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TelecommCallCallback skipped: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoCallChanged(Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V
    .locals 0

    return-void
.end method
