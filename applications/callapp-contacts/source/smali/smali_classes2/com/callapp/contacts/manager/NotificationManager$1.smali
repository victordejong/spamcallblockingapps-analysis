.class public Lcom/callapp/contacts/manager/NotificationManager$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/model/objectbox/BirthdayData;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Lcom/callapp/contacts/manager/NotificationManager;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/NotificationManager;Lcom/callapp/contacts/model/objectbox/BirthdayData;ZI)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->d:Lcom/callapp/contacts/manager/NotificationManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->a:Lcom/callapp/contacts/model/objectbox/BirthdayData;

    iput-boolean p3, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->b:Z

    iput p4, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->c:I

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 12

    .line 1044
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    .line 1047
    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->a:Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Landroid/content/Context;Lcom/callapp/contacts/model/objectbox/BirthdayData;)Landroid/content/Intent;

    move-result-object v1

    .line 1051
    iget-object v2, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->a:Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->a:Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v3}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getContactId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;J)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1052
    iget-object v2, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->a:Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object v2

    .line 1053
    iget-object v5, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->a:Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v5}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080596

    .line 1054
    invoke-static {v6}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1056
    :cond_0
    iget-object v2, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->a:Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\\s+"

    .line 1057
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    .line 1058
    iget-object v6, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->a:Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v6}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getContactId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    .line 1059
    iget-object v4, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->a:Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    iget-object v6, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->a:Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v6}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getContactId()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->b(Lcom/callapp/framework/phone/Phone;J)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v4

    .line 1060
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1062
    :cond_1
    iget-object v6, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->a:Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v6}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getSocialNetId()I

    move-result v6

    .line 1063
    iget-object v7, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->a:Lcom/callapp/contacts/model/objectbox/BirthdayData;

    invoke-virtual {v7}, Lcom/callapp/contacts/model/objectbox/BirthdayData;->getSocialProfileId()Ljava/lang/String;

    move-result-object v7

    .line 1064
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    .line 1068
    :goto_0
    iget-object v7, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->d:Lcom/callapp/contacts/manager/NotificationManager;

    sget-object v8, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-static {v7, v8}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager;Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v7

    const v8, 0x7f0804a7

    .line 1069
    invoke-virtual {v7, v8}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroidx/core/app/g$e;->a(Z)Landroidx/core/app/g$e;

    move-result-object v8

    sget-object v10, Lcom/callapp/contacts/model/ReminderType;->BIRTHDAY:Lcom/callapp/contacts/model/ReminderType;

    iget-object v10, v10, Lcom/callapp/contacts/model/ReminderType;->title:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroidx/core/app/g$e;->c(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v8

    const v10, 0x7f1200fb

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v2, v11, v3

    .line 1070
    invoke-static {v10, v11}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v2

    const v8, 0x7f1200fa

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v5, v10, v3

    .line 1071
    invoke-static {v8, v10}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    .line 1073
    iget-object v2, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->d:Lcom/callapp/contacts/manager/NotificationManager;

    invoke-static {v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 1074
    iget-object v5, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->d:Lcom/callapp/contacts/manager/NotificationManager;

    invoke-static {v5}, Lcom/callapp/contacts/manager/NotificationManager;->b(Lcom/callapp/contacts/manager/NotificationManager;)Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    move-result-object v5

    invoke-virtual {v5, v6, v2, v4}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Ljava/lang/String;ILcom/callapp/contacts/model/contact/ContactData;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1077
    :try_start_0
    invoke-static {v7, v4}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 1079
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v5, v8, v3

    const-string v5, "Could not generate notification bitmap for birthday"

    invoke-static {v6, v5, v8}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1081
    :goto_1
    invoke-virtual {v7, v4}, Landroidx/core/app/g$e;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/g$e;

    :cond_2
    const/4 v4, 0x6

    .line 1083
    invoke-virtual {v7, v4}, Landroidx/core/app/g$e;->b(I)Landroidx/core/app/g$e;

    .line 1084
    iget-boolean v4, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->b:Z

    if-eqz v4, :cond_3

    .line 1085
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "android.resource://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/CallAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/raw/2131820545"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/core/app/g$e;->a(Landroid/net/Uri;)Landroidx/core/app/g$e;

    :cond_3
    if-eqz v1, :cond_4

    const-string v4, "future_target_index_key"

    .line 1090
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x8000000

    .line 1091
    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1975
    iput-object v0, v7, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    .line 1095
    :cond_4
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->U:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->c:I

    add-int/2addr v0, v1

    const-string v1, "com.callapp.contacts.ACTION_DISMISS_BIRTHDAY_NOTIFICATION"

    invoke-static {v7, v0, v1, v2}, Lcom/callapp/contacts/manager/NotificationManager;->b(Landroidx/core/app/g$e;ILjava/lang/String;I)V

    .line 1097
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->d:Lcom/callapp/contacts/manager/NotificationManager;

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->U:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/callapp/contacts/manager/NotificationManager$1;->c:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v7}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    return-void
.end method
