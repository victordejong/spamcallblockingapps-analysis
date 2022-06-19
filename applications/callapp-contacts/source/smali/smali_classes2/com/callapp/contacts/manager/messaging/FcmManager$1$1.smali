.class Lcom/callapp/contacts/manager/messaging/FcmManager$1$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/messaging/FcmManager$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/manager/messaging/FcmManager$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/messaging/FcmManager$1;Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/callapp/contacts/manager/messaging/FcmManager$1$1;->b:Lcom/callapp/contacts/manager/messaging/FcmManager$1;

    iput-object p2, p0, Lcom/callapp/contacts/manager/messaging/FcmManager$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/manager/messaging/FcmManager$1$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const-class v0, Lcom/callapp/contacts/manager/messaging/FcmManager;

    const-string v1, "No registrationId"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    const-class v0, Lcom/callapp/contacts/manager/messaging/FcmManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FCM token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/callapp/contacts/manager/messaging/FcmManager$1$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aj:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 71
    const-class v0, Lcom/callapp/contacts/manager/messaging/FcmManager;

    const-string v1, "Already registered"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/manager/messaging/FcmManager$1$1;->b:Lcom/callapp/contacts/manager/messaging/FcmManager$1;

    iget-object v0, v0, Lcom/callapp/contacts/manager/messaging/FcmManager$1;->a:Lcom/callapp/contacts/manager/messaging/FcmManager;

    iget-object v1, p0, Lcom/callapp/contacts/manager/messaging/FcmManager$1$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/callapp/contacts/manager/messaging/FcmManager;->a(Lcom/callapp/contacts/manager/messaging/FcmManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aj:Lcom/callapp/contacts/manager/preferences/prefs/LongPref;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/LongPref;->set(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
