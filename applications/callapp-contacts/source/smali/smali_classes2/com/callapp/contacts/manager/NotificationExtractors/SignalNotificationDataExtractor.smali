.class public Lcom/callapp/contacts/manager/NotificationExtractors/SignalNotificationDataExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/framework/phone/Phone;
    .locals 0

    .line 69
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/framework/phone/Phone;
    .locals 1

    .line 73
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->b(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ":"

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 79
    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method
