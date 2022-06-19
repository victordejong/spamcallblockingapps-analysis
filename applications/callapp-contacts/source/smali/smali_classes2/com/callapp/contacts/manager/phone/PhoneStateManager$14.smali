.class Lcom/callapp/contacts/manager/phone/PhoneStateManager$14;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/phone/PhoneStateManager;->speakNameIfNeeded(Lcom/callapp/contacts/model/call/CallData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 2082
    iput-object p1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$14;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$14;->a:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 2085
    new-instance v0, Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;-><init>()V

    new-instance v1, Lcom/callapp/contacts/loader/device/DeviceIdLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/device/DeviceDataLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/device/DeviceDataLoader;-><init>()V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/loader/FastCacheDataLoader;

    invoke-direct {v1}, Lcom/callapp/contacts/loader/FastCacheDataLoader;-><init>()V

    .line 2086
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addSyncLoader(Lcom/callapp/contacts/loader/api/ContactDataLoader;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/callapp/contacts/model/contact/ContactField;

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->deviceId:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/callapp/contacts/model/contact/ContactField;->fullName:Lcom/callapp/contacts/model/contact/ContactField;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->addFields([Lcom/callapp/contacts/model/contact/ContactField;)Lcom/callapp/contacts/loader/api/ContactLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$14;->a:Lcom/callapp/framework/phone/Phone;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/loader/api/ContactLoader;->load(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 2088
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 2089
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2090
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$14;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    new-instance v2, Lcom/callapp/contacts/manager/TextToSpeechWrapper;

    invoke-direct {v2}, Lcom/callapp/contacts/manager/TextToSpeechWrapper;-><init>()V

    invoke-static {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1902(Lcom/callapp/contacts/manager/phone/PhoneStateManager;Lcom/callapp/contacts/manager/TextToSpeechWrapper;)Lcom/callapp/contacts/manager/TextToSpeechWrapper;

    .line 2091
    iget-object v1, p0, Lcom/callapp/contacts/manager/phone/PhoneStateManager$14;->b:Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    invoke-static {v1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->access$1900(Lcom/callapp/contacts/manager/phone/PhoneStateManager;)Lcom/callapp/contacts/manager/TextToSpeechWrapper;

    move-result-object v1

    .line 3019
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;

    invoke-direct {v4, v1, v0}, Lcom/callapp/contacts/manager/TextToSpeechWrapper$1;-><init>(Lcom/callapp/contacts/manager/TextToSpeechWrapper;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, v1, Lcom/callapp/contacts/manager/TextToSpeechWrapper;->a:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method
