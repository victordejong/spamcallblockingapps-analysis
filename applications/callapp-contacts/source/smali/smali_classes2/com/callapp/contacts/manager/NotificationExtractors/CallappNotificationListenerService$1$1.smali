.class Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/NotificationExtractors/IMExtractorsManager$PhoneNumExtractedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1$1;->a:Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)V
    .locals 11

    .line 49
    :try_start_0
    invoke-static {}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->get()Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    move-result-object v0

    .line 1131
    new-instance v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;

    invoke-direct {v1, p1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;-><init>(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->a(Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;)Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;

    move-result-object v0

    .line 51
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v1

    iget-object v2, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    const/16 v2, 0x1f4

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, v0, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager$StoredNotificationData;->a:Lcom/callapp/contacts/model/contact/ContactData;

    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {v1, v2}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Lcom/callapp/framework/phone/Phone;I)J

    move-result-wide v3

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1$1;->a:Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;

    iget-object v0, v0, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;->a:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1$1;->a:Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;

    iget-object v0, v0, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;->a:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 60
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1$1;->a:Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;

    iget-object v0, v0, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;->a:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 62
    invoke-static {v0}, Lcom/callapp/contacts/loader/IMExtractedPhotoDataManager;->a(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 64
    iget-object v6, p0, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1$1;->a:Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;

    iget-object v6, v6, Lcom/callapp/contacts/manager/NotificationExtractors/CallappNotificationListenerService$1;->a:Landroid/service/notification/StatusBarNotification;

    iget-object v7, p1, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->groupName:Ljava/lang/String;

    invoke-static {v7}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v6, v7, v1}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->a(Landroid/service/notification/StatusBarNotification;ZLcom/callapp/framework/phone/Phone;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 66
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callapp/framework/phone/Phone;

    if-eqz v8, :cond_1

    .line 69
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_2

    .line 73
    invoke-static {v8, v2}, Lcom/callapp/contacts/loader/device/DeviceIdLoader;->a(Lcom/callapp/framework/phone/Phone;I)J

    move-result-wide v3

    .line 75
    :cond_2
    invoke-static {v3, v4, v8}, Lcom/callapp/contacts/loader/IMExtractedPhotoDataManager;->b(JLcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 76
    invoke-static {v9}, Lcom/callapp/contacts/loader/IMExtractedPhotoDataManager;->a(Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;)Z

    move-result v10

    if-nez v10, :cond_3

    sget-object v10, Lcom/callapp/contacts/manager/preferences/Prefs;->p:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v10}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 77
    :cond_3
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    if-eqz v7, :cond_1

    .line 78
    invoke-static {v7, v0}, Lcom/callapp/contacts/loader/IMExtractedPhotoDataManager;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 79
    invoke-virtual {v8}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/callapp/common/util/HashUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/callapp/contacts/loader/IMExtractedPhotoDataManager;->b(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 80
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-eqz v9, :cond_4

    .line 83
    new-instance v10, Ljava/io/File;

    invoke-virtual {v9}, Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/callapp/contacts/util/IoUtils;->b(Ljava/io/File;)Z

    .line 85
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v8, v5, v7}, Lcom/callapp/contacts/loader/IMExtractedPhotoDataManager;->a(JLcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/IMExtractedPhotoData;

    goto :goto_1

    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v2, v3, v0

    if-nez v2, :cond_6

    .line 98
    invoke-static {}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->get()Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;

    invoke-static {p1}, Lcom/callapp/contacts/manager/RecognizedContactNotificationManager;->a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)V
    :try_end_0
    .catch Lcom/callapp/contacts/loader/device/DeviceIdLoader$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    return-void
.end method
