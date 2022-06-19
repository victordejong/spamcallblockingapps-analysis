.class public Lcom/callapp/contacts/manager/NotificationExtractors/IMExtractorsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/NotificationExtractors/IMExtractorsManager$PhoneNumExtractedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/service/notification/StatusBarNotification;Lcom/callapp/contacts/manager/NotificationExtractors/IMExtractorsManager$PhoneNumExtractedListener;)V
    .locals 2

    .line 14
    const-class v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMExtractorsManager;

    monitor-enter v0

    .line 16
    :try_start_0
    invoke-static {p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;->g(Landroid/service/notification/StatusBarNotification;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 17
    iget-object v1, p0, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-interface {p1, p0}, Lcom/callapp/contacts/manager/NotificationExtractors/IMExtractorsManager$PhoneNumExtractedListener;->a(Lcom/callapp/contacts/model/objectbox/ExtractedInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 22
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
