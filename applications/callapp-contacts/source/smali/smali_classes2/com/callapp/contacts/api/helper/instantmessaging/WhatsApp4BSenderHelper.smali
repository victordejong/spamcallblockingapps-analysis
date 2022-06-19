.class public Lcom/callapp/contacts/api/helper/instantmessaging/WhatsApp4BSenderHelper;
.super Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "com.whatsapp.w4b/com.whatsapp.Main"

    const v1, 0x7f08038c

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/api/helper/instantmessaging/WhatsAppSenderHelper;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getAnalyticsNameLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "w4b"

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    const-string v0, "vnd.android.cursor.item/vnd.com.whatsapp.pw4b.profile"

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.whatsapp.w4b"

    return-object v0
.end method

.method public getType()Lcom/callapp/contacts/manager/Singletons$SenderType;
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/manager/Singletons$SenderType;->WHATSAPP4B:Lcom/callapp/contacts/manager/Singletons$SenderType;

    return-object v0
.end method
