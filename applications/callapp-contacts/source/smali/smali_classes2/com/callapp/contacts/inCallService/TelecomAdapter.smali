.class public final Lcom/callapp/contacts/inCallService/TelecomAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "TelecomAdapter"

.field private static c:Lcom/callapp/contacts/inCallService/TelecomAdapter;


# instance fields
.field public b:Landroid/telecom/InCallService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/telecom/Call;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroid/telecom/GatewayInfo;->getOriginalAddress()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 72
    :cond_1
    invoke-static {p0}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->f(Landroid/telecom/Call;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-static {p0}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->f(Landroid/telecom/Call;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 184
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    :cond_1
    :goto_0
    const-string v1, "add_call_mode"

    const/4 v2, 0x1

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 196
    :try_start_0
    sget-object v1, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 202
    sget-object v0, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Activity for adding calls isn\'t found."

    invoke-static {v0, p0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static f(Landroid/telecom/Call;)Landroid/net/Uri;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;
    .locals 1

    .line 34
    sget-object v0, Lcom/callapp/contacts/inCallService/TelecomAdapter;->c:Lcom/callapp/contacts/inCallService/TelecomAdapter;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/callapp/contacts/inCallService/TelecomAdapter;

    invoke-direct {v0}, Lcom/callapp/contacts/inCallService/TelecomAdapter;-><init>()V

    sput-object v0, Lcom/callapp/contacts/inCallService/TelecomAdapter;->c:Lcom/callapp/contacts/inCallService/TelecomAdapter;

    .line 37
    :cond_0
    sget-object v0, Lcom/callapp/contacts/inCallService/TelecomAdapter;->c:Lcom/callapp/contacts/inCallService/TelecomAdapter;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/callapp/contacts/inCallService/TelecomAdapter;->b:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0, p1}, Landroid/telecom/InCallService;->requestBluetoothAudio(Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 211
    :cond_0
    sget-object p1, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/telecom/Call;C)V
    .locals 2

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1, p2}, Landroid/telecom/Call;->playDtmfTone(C)V

    return-void

    .line 219
    :cond_0
    sget-object p2, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error playDtmfTone, call not in call list "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/telecom/Call;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/telecom/Call;->disconnect()V

    return-void

    .line 93
    :cond_0
    sget-object v0, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error disconnectCall, call not in call list "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Landroid/telecom/Call;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/telecom/Call;->hold()V

    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error holdCall, call not in call list "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Landroid/telecom/Call;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/telecom/Call;->unhold()V

    return-void

    .line 122
    :cond_0
    sget-object v0, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error unholdCall, call not in call list "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Landroid/telecom/Call;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1}, Landroid/telecom/Call;->stopDtmfTone()V

    return-void

    .line 227
    :cond_0
    sget-object v0, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error stopDtmfTone, call not in call list "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a(Landroid/telecom/Call;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final setAudioRoute(I)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/callapp/contacts/inCallService/TelecomAdapter;->b:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Landroid/telecom/InCallService;->setAudioRoute(I)V

    return-void

    .line 138
    :cond_0
    sget-object p1, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final setInCallService(Landroid/telecom/InCallService;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/inCallService/TelecomAdapter;->b:Landroid/telecom/InCallService;

    return-void
.end method
