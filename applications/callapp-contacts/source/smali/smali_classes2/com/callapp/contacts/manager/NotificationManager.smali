.class public Lcom/callapp/contacts/manager/NotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;,
        Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;,
        Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;,
        Lcom/callapp/contacts/manager/NotificationManager$NotificationTimeUtils;
    }
.end annotation


# static fields
.field public static b:I

.field public static final e:Ljava/lang/Object;

.field private static final k:Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/Random;

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

.field private f:Ljava/text/SimpleDateFormat;

.field private g:Ljava/text/SimpleDateFormat;

.field private h:J

.field private i:Landroid/app/NotificationManager;

.field private j:J

.field private l:[Landroidx/core/e/b;

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/NotificationManager;->k:Ljava/lang/Object;

    .line 433
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/NotificationManager;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, " - HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->f:Ljava/text/SimpleDateFormat;

    .line 134
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, " - HH:mm dd/MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->g:Ljava/text/SimpleDateFormat;

    .line 135
    invoke-static {}, Lcom/callapp/contacts/util/date/DateUtils;->getTodayStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->h:J

    .line 136
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->a:Ljava/util/Random;

    .line 191
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 192
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/callapp/contacts/manager/NotificationManager;->j:J

    .line 198
    new-instance v0, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-direct {v0}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    const/16 v0, 0xb

    new-array v0, v0, [Landroidx/core/e/b;

    .line 200
    new-instance v2, Landroidx/core/e/b;

    const/16 v3, 0x32

    .line 201
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v3}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    new-instance v1, Landroidx/core/e/b;

    const/16 v2, 0xf

    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2, v2}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v1, v0, v2

    .line 202
    new-instance v1, Landroidx/core/e/b;

    .line 203
    invoke-direct {v1, v3, v3}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroidx/core/e/b;

    const/16 v2, 0x9

    .line 204
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3, v3}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    new-instance v1, Landroidx/core/e/b;

    const/16 v3, 0x8

    .line 205
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v4, v4}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x4

    .line 206
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v1, v0, v4

    .line 205
    new-instance v1, Landroidx/core/e/b;

    .line 206
    invoke-direct {v1, v5, v5}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Landroidx/core/e/b;

    const/16 v4, 0xc

    .line 207
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v4, v4}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    new-instance v1, Landroidx/core/e/b;

    const/16 v4, 0x11

    .line 208
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v4, v4}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x7

    aput-object v1, v0, v4

    new-instance v1, Landroidx/core/e/b;

    const/16 v4, 0x28

    .line 209
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v4, v4}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    new-instance v1, Landroidx/core/e/b;

    const/16 v3, 0x2710

    .line 210
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x4e20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v2

    new-instance v1, Landroidx/core/e/b;

    const/16 v2, 0x64

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->l:[Landroidx/core/e/b;

    return-void
.end method

.method private static a(ILcom/callapp/framework/phone/Phone;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    .line 1834
    invoke-static {p0, p1, p2}, Lcom/callapp/contacts/manager/NotificationManager;->b(ILcom/callapp/framework/phone/Phone;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1835
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, p0, p1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static a(ILjava/lang/String;Lcom/callapp/framework/phone/Phone;I)Landroid/app/PendingIntent;
    .locals 4

    .line 1795
    invoke-static {p2}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 1796
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v0

    .line 1797
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const-class v3, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "future_target_index_key"

    .line 1798
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1799
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.callapp.contacts.EXTRA_FULL_NAME"

    .line 1800
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "notification_id"

    .line 1801
    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1802
    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.callapp.contacts.EXTRA_RAW_NUMBER"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1803
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p0, v1, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static a(IILandroid/app/PendingIntent;)Landroidx/core/app/g$a;
    .locals 1

    .line 536
    new-instance v0, Landroidx/core/app/g$a;

    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Landroidx/core/app/g$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/NotificationManager;Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object p0

    return-object p0
.end method

.method private a(ILcom/callapp/framework/phone/Phone;IIZ)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/callapp/framework/phone/Phone;",
            "IIZ)",
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/g$a;",
            ">;"
        }
    .end annotation

    .line 1710
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p5, :cond_0

    new-array p5, v1, [I

    .line 1713
    fill-array-data p5, :array_0

    goto :goto_0

    :cond_0
    new-array p5, v1, [I

    .line 1715
    fill-array-data p5, :array_1

    :goto_0
    if-ne p4, v1, :cond_1

    const-string v2, "com.callapp.contacts.ACTION_CALL_FROM_MISSED_CALL_NOTIFICATION"

    goto :goto_1

    :cond_1
    const-string v2, "com.callapp.contacts.ACTION_CALL_FROM_NOT_ANSWERED_NOTIFICATION"

    .line 1718
    :goto_1
    invoke-static {p1, p2, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILcom/callapp/framework/phone/Phone;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    if-ne p4, v1, :cond_2

    const-string v3, "com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_MISSED_CALL_NOTIFICATION"

    goto :goto_2

    :cond_2
    const-string v3, "com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_NOT_ANSWERED_NOTIFICATION"

    .line 1719
    :goto_2
    invoke-static {p1, p2, v3}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILcom/callapp/framework/phone/Phone;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    if-ne p4, v1, :cond_3

    const-string v4, "com.callapp.contacts.ACTION_BTN_REMINDER_FROM_MISSED_CALL_NOTIFICATION"

    goto :goto_3

    :cond_3
    const-string v4, "com.callapp.contacts.ACTION_BTN_REMINDER_FROM_NOT_ANSWERED_NOTIFICATION"

    .line 1720
    :goto_3
    invoke-static {p1, v4, p2, p3}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILjava/lang/String;Lcom/callapp/framework/phone/Phone;I)Landroid/app/PendingIntent;

    move-result-object p1

    const/4 p2, 0x0

    .line 1721
    aget p2, p5, p2

    if-ne p4, v1, :cond_4

    const p3, 0x7f120168

    goto :goto_4

    :cond_4
    const p3, 0x7f120169

    :goto_4
    invoke-static {p2, p3, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(IILandroid/app/PendingIntent;)Landroidx/core/app/g$a;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    .line 1722
    aget p2, p5, p2

    const p3, 0x7f120171

    invoke-static {p2, p3, v3}, Lcom/callapp/contacts/manager/NotificationManager;->a(IILandroid/app/PendingIntent;)Landroidx/core/app/g$a;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x2

    .line 1723
    aget p2, p5, p2

    const p3, 0x7f1205cd

    invoke-static {p2, p3, p1}, Lcom/callapp/contacts/manager/NotificationManager;->a(IILandroid/app/PendingIntent;)Landroidx/core/app/g$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :array_0
    .array-data 4
        0x7f080341
        0x7f08041a
        0x7f0804c1
    .end array-data

    :array_1
    .array-data 4
        0x7f080340
        0x7f080419
        0x7f0802bb
    .end array-data
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/NotificationManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/callapp/contacts/manager/NotificationManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private a(ILandroidx/core/app/g$e;ILcom/callapp/framework/phone/Phone;Ljava/lang/String;)V
    .locals 17

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    .line 1728
    sget-object v4, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_2

    .line 1731
    sget-object v6, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v6}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v5

    .line 1733
    :cond_2
    :goto_1
    sget-object v6, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    move-object/from16 v7, p4

    invoke-static {v7, v6}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->getBuilderAccordingToOrigin(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v11

    .line 1735
    sget-object v6, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v6}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v15, 0x1

    if-eqz v6, :cond_3

    if-ne v2, v15, :cond_3

    .line 1736
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    const-wide/16 v8, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x0

    const-string v14, "NotificationWhoViewedMyProfile"

    move-object v7, v6

    const/4 v6, 0x1

    move-object/from16 v15, v16

    invoke-static/range {v7 .. v15}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "fullName"

    .line 1737
    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "EXTRA_WHO_VIEW_PROFILE_NOTIFICATION"

    .line 1738
    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    const/4 v6, 0x1

    .line 1740
    new-instance v7, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v8

    const-class v9, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_2
    const-string v8, "whoViewedMyProfileNotificationClicked"

    .line 1742
    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1743
    const-class v8, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const/16 v9, 0xc

    invoke-static {v8, v7, v1, v9, v6}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/lang/Object;Landroid/content/Intent;Landroidx/core/app/g$e;IZ)V

    .line 1745
    sget-object v7, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x7f08058f

    goto :goto_3

    :cond_4
    const v7, 0x7f080576

    :goto_3
    move-object/from16 v8, p0

    .line 1746
    iget-object v9, v8, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v9, v5, v7, v0, v4}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Ljava/lang/String;IILcom/callapp/contacts/model/contact/ContactData;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1749
    invoke-virtual {v1, v4}, Landroidx/core/app/g$e;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/g$e;

    :cond_5
    const v5, 0x7f080434

    .line 1753
    invoke-virtual {v1, v5}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    .line 1754
    invoke-virtual {v1, v6}, Landroidx/core/app/g$e;->a(Z)Landroidx/core/app/g$e;

    .line 32275
    iput v6, v1, Landroidx/core/app/g$e;->l:I

    const-string v5, "call"

    .line 33227
    iput-object v5, v1, Landroidx/core/app/g$e;->A:Ljava/lang/String;

    .line 1757
    invoke-virtual {v1, v4}, Landroidx/core/app/g$e;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/g$e;

    const v4, 0x7f060088

    .line 1758
    invoke-static {v4}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    .line 33499
    iput v4, v1, Landroidx/core/app/g$e;->C:I

    .line 1759
    invoke-static {v1, v3, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;Ljava/lang/String;I)V

    const/16 v2, 0xf

    const-string v3, "com.callapp.contacts.ACTION_DISMISS_FROM_WHO_VIEWED_MY_PROFILE"

    .line 1760
    invoke-static {v1, v2, v3, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;ILjava/lang/String;I)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroidx/core/app/g$e;J)V
    .locals 3

    .line 1808
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "future_target_index_key"

    .line 1809
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "EXTRA_MISSED_CALL_NOTIFICATION_CLICKED"

    const/4 p3, 0x1

    .line 1810
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p2, 0xc

    const/high16 p3, 0x8000000

    .line 1811
    invoke-static {p0, p2, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 33975
    iput-object p0, p1, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    return-void
.end method

.method public static a(Landroidx/core/app/g$e;ILjava/lang/String;I)V
    .locals 3

    .line 1786
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "future_target_index_key"

    .line 1787
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1788
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "notification_id"

    .line 1789
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1790
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {p2, p1, v0, p3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1791
    invoke-virtual {p0, p1}, Landroidx/core/app/g$e;->a(Landroid/app/PendingIntent;)Landroidx/core/app/g$e;

    return-void
.end method

.method static synthetic a(Landroidx/core/app/g$e;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-static {p0, p1, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;Landroid/graphics/Bitmap;Ljava/util/List;)V

    return-void
.end method

.method public static a(Landroidx/core/app/g$e;Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/app/g$e;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List<",
            "Landroidx/core/app/g$a;",
            ">;)V"
        }
    .end annotation

    .line 545
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getWearableClientHandler()Lcom/callapp/contacts/wearable/WearableClientHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->isWearConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 548
    :cond_0
    new-instance v0, Landroidx/core/app/g$j;

    invoke-direct {v0}, Landroidx/core/app/g$j;-><init>()V

    invoke-virtual {v0}, Landroidx/core/app/g$j;->a()Landroidx/core/app/g$j;

    move-result-object v0

    invoke-static {p1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 8506
    iput-object p1, v0, Landroidx/core/app/g$j;->a:Landroid/graphics/Bitmap;

    .line 549
    invoke-static {p2}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 550
    invoke-virtual {v0, p2}, Landroidx/core/app/g$j;->a(Ljava/util/List;)Landroidx/core/app/g$j;

    .line 552
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/core/app/g$e;->a(Landroidx/core/app/g$f;)Landroidx/core/app/g$e;

    return-void
.end method

.method private a(Landroidx/core/app/g$e;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;Ljava/util/List;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/app/g$e;",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x0

    .line 1668
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    invoke-static {v5}, Lcom/callapp/contacts/util/MissedCallUtils;->a(Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;)Ljava/lang/String;

    move-result-object v5

    .line 1669
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    invoke-virtual {v6}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->getSourcePhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    const-string v7, ""

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    invoke-virtual {v8}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->getSourcePhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/callapp/framework/phone/Phone;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v7

    .line 1670
    :goto_0
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    invoke-virtual {v8}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->getSourceDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 1672
    sget-object v9, Lcom/callapp/contacts/manager/NotificationManager$3;->a:[I

    invoke-virtual/range {p2 .. p2}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const v10, 0x7f120655

    const v11, 0x7f120656

    const-string v12, " "

    const/4 v13, 0x1

    const/4 v14, 0x3

    if-eq v9, v13, :cond_5

    const/4 v15, 0x2

    if-eq v9, v15, :cond_3

    if-eq v9, v14, :cond_1

    const/4 v5, 0x4

    if-eq v9, v5, :cond_1

    const/4 v5, 0x5

    if-eq v9, v5, :cond_1

    move-object v2, v7

    goto/16 :goto_3

    :cond_1
    if-ne v3, v14, :cond_2

    const v3, 0x7f120497

    .line 1693
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f120498

    new-array v6, v13, [Ljava/lang/Object;

    .line 1694
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const v3, 0x7f1204d6

    .line 1696
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f1204d5

    new-array v6, v13, [Ljava/lang/Object;

    .line 1697
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v5, v6}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v7, v4

    .line 1700
    invoke-direct {v0, v1, v7, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;Ljava/lang/String;Ljava/util/List;)V

    move-object v2, v7

    move-object v7, v3

    goto :goto_3

    .line 1682
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-ne v3, v14, :cond_4

    .line 1684
    invoke-static {v10}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1686
    :cond_4
    invoke-static {v11}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1674
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-ne v3, v14, :cond_6

    .line 1676
    invoke-static {v10}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1678
    :cond_6
    invoke-static {v11}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object/from16 v16, v7

    move-object v7, v2

    move-object/from16 v2, v16

    .line 1705
    :goto_3
    invoke-virtual {v1, v7}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    .line 1706
    invoke-virtual {v1, v2}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    return-void
.end method

.method private static a(Landroidx/core/app/g$e;Ljava/lang/String;I)V
    .locals 5

    const v0, 0x7f12085e

    .line 1764
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1766
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne p2, v3, :cond_0

    const p2, 0x7f12085d

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    .line 1768
    invoke-static {p2, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v1, 0x7f12085a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    sub-int/2addr p2, v3

    .line 1770
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v1, v4}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-ne p2, v3, :cond_2

    const p1, 0x7f12085c

    new-array v1, v3, [Ljava/lang/Object;

    .line 1774
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const p1, 0x7f12085b

    new-array v1, v3, [Ljava/lang/Object;

    .line 1776
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1780
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    .line 1781
    invoke-virtual {p0, p1}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    return-void
.end method

.method private a(Landroidx/core/app/g$e;Ljava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;JZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 709
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->shouldConferenceScreenAppear()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 710
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v7

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/framework/phone/Phone;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v7

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 711
    :goto_1
    invoke-static/range {p2 .. p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v13, ""

    const v8, 0x7f0a063c

    if-eqz v7, :cond_2

    const v7, 0x7f0804ab

    .line 712
    invoke-virtual {p1, v7}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    const v7, 0x7f120138

    .line 713
    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const v7, 0x7f080343

    .line 715
    invoke-virtual {p1, v7}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    .line 716
    invoke-virtual {v3, v8, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 14808
    :goto_2
    iput-boolean v6, v1, Landroidx/core/app/g$e;->m:Z

    .line 720
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-eq v1, v6, :cond_3

    .line 721
    iget-object v7, v0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    move v8, v4

    move v9, v5

    move-wide/from16 v10, p5

    move/from16 v12, p7

    invoke-virtual/range {v7 .. v12}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(ZZJZ)V

    .line 726
    :cond_3
    invoke-static/range {p3 .. p3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 727
    iget-object v1, v0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static/range {p2 .. p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v13, v2

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    goto :goto_3

    :cond_6
    move-object/from16 v13, p3

    :goto_3
    if-eqz v4, :cond_7

    const v1, 0x7f120222

    .line 730
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_7
    if-eqz v5, :cond_8

    const v1, 0x7f120819

    .line 732
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v13

    :cond_8
    :goto_4
    const v1, 0x7f0a063f

    .line 736
    invoke-virtual {v3, v1, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 737
    iget-object v1, v0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v13, v1, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    const v1, 0x7f0a063e

    .line 738
    iget-object v2, v0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Landroidx/core/app/g$e;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;",
            ">(",
            "Landroidx/core/app/g$e;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 1873
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 1877
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 1878
    new-instance v0, Landroidx/core/app/g$g;

    invoke-direct {v0}, Landroidx/core/app/g$g;-><init>()V

    .line 1879
    invoke-virtual {v0, p2}, Landroidx/core/app/g$g;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$g;

    .line 1881
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;

    .line 1883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->a(Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->getSourceDate()Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroidx/core/app/g$g;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$g;

    goto :goto_0

    .line 1885
    :cond_1
    invoke-virtual {p1, v0}, Landroidx/core/app/g$e;->a(Landroidx/core/app/g$i;)Landroidx/core/app/g$e;

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Landroidx/core/app/g$e;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;",
            ">(",
            "Landroidx/core/app/g$e;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;",
            ">;>;)V"
        }
    .end annotation

    .line 1853
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 1854
    new-instance v0, Landroidx/core/app/g$g;

    invoke-direct {v0}, Landroidx/core/app/g$g;-><init>()V

    .line 1855
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/core/app/g$g;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$g;

    .line 1856
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1857
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1858
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 1859
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<b>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f1203a1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1860
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/g$g;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$g;

    .line 1861
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 1862
    invoke-static {p3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1863
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_0

    .line 1864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;

    invoke-static {v2}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->a(Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->getSourceDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/g$g;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$g;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1868
    :cond_1
    invoke-virtual {p1, v0}, Landroidx/core/app/g$e;->a(Landroidx/core/app/g$i;)Landroidx/core/app/g$e;

    :cond_2
    return-void
.end method

.method private a(Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;ILandroidx/core/app/g$e;Ljava/util/List;II)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;",
            "I",
            "Landroidx/core/app/g$e;",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    .line 1616
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/util/MissedCallUtils;->a(Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;

    move-result-object v11

    const/4 v12, 0x0

    .line 1618
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;

    .line 1619
    invoke-virtual {v0}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    .line 1620
    iget-object v2, v0, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->a:Ljava/lang/Object;

    check-cast v2, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    iget-object v13, v2, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->c:Lcom/callapp/framework/phone/Phone;

    .line 1621
    iget-object v2, v6, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;->getContactData()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    invoke-virtual {v2, v1, v7, v0}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Ljava/lang/String;ILcom/callapp/contacts/model/contact/ContactData;)Landroid/graphics/Bitmap;

    move-result-object v14

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object v2, v13

    move/from16 v3, p2

    move/from16 v4, p5

    .line 1622
    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILcom/callapp/framework/phone/Phone;IIZ)Ljava/util/ArrayList;

    move-result-object v15

    .line 1623
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {v13, v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->getBuilderAccordingToOrigin(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v20

    const/4 v5, 0x0

    move-object/from16 v0, p0

    .line 1624
    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILcom/callapp/framework/phone/Phone;IIZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1626
    sget-object v1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->SINGLE_CALL_NON_PRIVATE_NUMBER:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;

    invoke-virtual {v11, v1}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-object v1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->MULTIPLE_CALLS_ALL_SAME_CALLER:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;

    invoke-virtual {v11, v1}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1638
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    int-to-long v4, v7

    invoke-static {v0, v8, v4, v5}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroid/content/Context;Landroidx/core/app/g$e;J)V

    goto :goto_4

    .line 1627
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const-class v5, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "vnd.android.cursor.dir/calls"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1628
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v16

    const-wide/16 v17, 0x0

    invoke-virtual {v13}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x1

    const/16 v22, 0x0

    sget-object v24, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->MISSED_CALL_NOT_ANSWERED:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const-string v23, "NotificationMissedCall"

    invoke-static/range {v16 .. v24}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;

    move-result-object v4

    .line 1629
    invoke-virtual {v13}, Lcom/callapp/framework/phone/Phone;->a()Ljava/lang/String;

    move-result-object v5

    const-string v13, "phone"

    invoke-virtual {v1, v13, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "EXTRA_MISSED_CALL_NOTIFICATION_CLICKED"

    const-string v13, "EXTRA_NOT_ANSWERED_NOTIFICATION_CLICKED"

    if-ne v10, v2, :cond_2

    move-object v12, v5

    goto :goto_1

    :cond_2
    move-object v12, v13

    .line 1630
    :goto_1
    invoke-virtual {v1, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-ne v10, v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, v13

    .line 1631
    :goto_2
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "future_target_index_key"

    .line 1632
    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v5, 0xc

    const/4 v12, 0x0

    .line 1633
    invoke-static {v1, v4, v8, v5, v12}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/lang/Object;Landroid/content/Intent;Landroidx/core/app/g$e;IZ)V

    .line 1634
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/g$a;

    .line 1635
    invoke-virtual {v8, v1}, Landroidx/core/app/g$e;->a(Landroidx/core/app/g$a;)Landroidx/core/app/g$e;

    goto :goto_3

    :cond_4
    :goto_4
    if-eqz v14, :cond_5

    .line 1642
    invoke-virtual {v8, v14}, Landroidx/core/app/g$e;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/g$e;

    move-object v0, v14

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-ne v10, v2, :cond_6

    const v1, 0x7f0804aa

    goto :goto_6

    :cond_6
    const v1, 0x7f080575

    .line 1652
    :goto_6
    invoke-virtual {v8, v1}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/core/app/g$e;->a(Z)Landroidx/core/app/g$e;

    .line 30275
    iput v3, v8, Landroidx/core/app/g$e;->l:I

    const-string v1, "call"

    .line 31227
    iput-object v1, v8, Landroidx/core/app/g$e;->A:Ljava/lang/String;

    .line 1655
    invoke-virtual {v8, v14}, Landroidx/core/app/g$e;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/g$e;

    const v1, 0x7f060088

    .line 1656
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    .line 31499
    iput v1, v8, Landroidx/core/app/g$e;->C:I

    .line 1658
    invoke-direct {v6, v8, v11, v9, v10}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;Ljava/util/List;I)V

    .line 1660
    invoke-static {v8, v0, v15}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;Landroid/graphics/Bitmap;Ljava/util/List;)V

    const-string v0, "com.callapp.contacts.ACTION_DISMISS_FROM_MISSED_CALL_NOTIFICATION"

    move/from16 v1, p6

    .line 1662
    invoke-static {v8, v1, v0, v7}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;ILjava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/content/Intent;Landroidx/core/app/g$e;IZ)V
    .locals 2

    .line 393
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/o;->a(Landroid/content/Context;)Landroidx/core/app/o;

    move-result-object v0

    .line 394
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    if-eqz p4, :cond_0

    .line 396
    invoke-virtual {v0, p1}, Landroidx/core/app/o;->b(Landroid/content/Intent;)Landroidx/core/app/o;

    goto :goto_0

    .line 398
    :cond_0
    check-cast p0, Ljava/lang/Class;

    invoke-virtual {v0, p0}, Landroidx/core/app/o;->a(Ljava/lang/Class;)Landroidx/core/app/o;

    .line 399
    invoke-virtual {v0, p1}, Landroidx/core/app/o;->a(Landroid/content/Intent;)Landroidx/core/app/o;

    goto :goto_0

    .line 401
    :cond_1
    instance-of p4, p0, Landroid/content/Intent;

    if-eqz p4, :cond_2

    .line 402
    check-cast p0, Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroidx/core/app/o;->a(Landroid/content/Intent;)Landroidx/core/app/o;

    .line 403
    invoke-virtual {v0, p1}, Landroidx/core/app/o;->a(Landroid/content/Intent;)Landroidx/core/app/o;

    :cond_2
    :goto_0
    const/high16 p0, 0x8000000

    .line 406
    invoke-virtual {v0, p3, p0}, Landroidx/core/app/o;->a(II)Landroid/app/PendingIntent;

    move-result-object p0

    .line 7975
    iput-object p0, p2, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .line 625
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->bM:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/BlockManager$BlockMethod;->SILENT:Lcom/callapp/contacts/manager/BlockManager$BlockMethod;

    if-ne v0, v1, :cond_5

    .line 626
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getWearableClientHandler()Lcom/callapp/contacts/wearable/WearableClientHandler;

    move-result-object v0

    .line 9187
    invoke-virtual {v0}, Lcom/callapp/contacts/wearable/WearableClientHandler;->isWearConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_2

    .line 9202
    invoke-static {p2}, Lcom/callapp/contacts/util/ImageUtils;->b(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    if-eqz p2, :cond_2

    .line 9204
    iget-object v1, v0, Lcom/callapp/contacts/wearable/WearableClientHandler;->a:[B

    const-string v2, "/callapp/image_path"

    if-nez v1, :cond_1

    .line 9205
    iput-object p2, v0, Lcom/callapp/contacts/wearable/WearableClientHandler;->a:[B

    .line 9206
    iget-object p2, v0, Lcom/callapp/contacts/wearable/WearableClientHandler;->a:[B

    invoke-virtual {v0, v2, p2}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Ljava/lang/String;[B)V

    goto :goto_0

    .line 9208
    :cond_1
    iget-object v1, v0, Lcom/callapp/contacts/wearable/WearableClientHandler;->a:[B

    invoke-static {p2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9209
    iput-object p2, v0, Lcom/callapp/contacts/wearable/WearableClientHandler;->a:[B

    .line 9210
    iget-object p2, v0, Lcom/callapp/contacts/wearable/WearableClientHandler;->a:[B

    invoke-virtual {v0, v2, p2}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Ljava/lang/String;[B)V

    .line 9219
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9220
    iget-object p2, v0, Lcom/callapp/contacts/wearable/WearableClientHandler;->b:Ljava/lang/String;

    const-string v1, "/callapp/name_path"

    if-nez p2, :cond_3

    .line 9221
    iput-object p1, v0, Lcom/callapp/contacts/wearable/WearableClientHandler;->b:Ljava/lang/String;

    .line 9222
    iget-object p1, v0, Lcom/callapp/contacts/wearable/WearableClientHandler;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Ljava/lang/String;[B)V

    goto :goto_1

    .line 9224
    :cond_3
    iget-object p2, v0, Lcom/callapp/contacts/wearable/WearableClientHandler;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 9225
    iput-object p1, v0, Lcom/callapp/contacts/wearable/WearableClientHandler;->b:Ljava/lang/String;

    .line 9226
    iget-object p1, v0, Lcom/callapp/contacts/wearable/WearableClientHandler;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/wearable/WearableClientHandler;->a(Ljava/lang/String;[B)V

    .line 9190
    :cond_4
    :goto_1
    iput-object p3, v0, Lcom/callapp/contacts/wearable/WearableClientHandler;->c:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method private static b(ILcom/callapp/framework/phone/Phone;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1839
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1840
    invoke-static {v0}, Lcom/callapp/contacts/manager/NotificationManager;->setDummyData(Landroid/content/Intent;)V

    .line 1841
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "notification_id"

    .line 1842
    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1843
    invoke-virtual {p1}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.callapp.contacts.EXTRA_RAW_NUMBER"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic b(Lcom/callapp/contacts/manager/NotificationManager;)Lcom/callapp/contacts/manager/CurrentCallDynamicObject;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    return-object p0
.end method

.method static synthetic b(Landroidx/core/app/g$e;ILjava/lang/String;I)V
    .locals 0

    .line 132
    invoke-static {p0, p1, p2, p3}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;ILjava/lang/String;I)V

    return-void
.end method

.method public static c()V
    .locals 11

    .line 1185
    const-class v0, Lcom/callapp/contacts/manager/NotificationManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    const-string v3, "telecom"

    .line 1186
    invoke-static {v3}, Lcom/callapp/contacts/manager/Singletons;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 1189
    :try_start_1
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->cancelMissedCallsNotification()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    .line 1191
    :goto_0
    :try_start_2
    const-class v4, Lcom/callapp/contacts/manager/phone/PhoneManager;

    const-string v5, "Failed to cancelNativeMissedCallsNotification"

    invoke-static {v4, v3, v5}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v3, "android.os.ServiceManager"

    .line 1195
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getService"

    new-array v5, v1, [Ljava/lang/Class;

    .line 1196
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "phone"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    .line 1197
    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "com.android.internal.telephony.ITelephony"

    .line 1199
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1201
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v4

    array-length v6, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v4, v7

    const-string v9, "Stub"

    .line 1202
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move-object v8, v5

    :goto_2
    if-eqz v8, :cond_5

    const-string v4, "android.os.IBinder"

    .line 1208
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v6, "asInterface"

    new-array v7, v1, [Ljava/lang/Class;

    aput-object v4, v7, v2

    .line 1209
    invoke-virtual {v8, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    .line 1210
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1212
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "cancelNativeMissedCallsNotification"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 1213
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    const-string v3, "Telephony service is null, can\'t call cancelNativeMissedCallsNotification"

    .line 1215
    invoke-static {v0, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v3, "Unable to locate ITelephony.Stub class!"

    .line 1218
    invoke-static {v0, v3}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v2, "Failed to clear missed calls notification due to Throwable!"

    .line 1228
    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_3
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v2, "Failed to clear missed calls notification due to NoSuchMethodException!"

    .line 1226
    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_4
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v2, "Failed to clear missed calls notification due to InvocationTargetException!"

    .line 1224
    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catch_5
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v2, "Failed to clear missed calls notification due to ClassNotFoundException!"

    .line 1222
    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static d()V
    .locals 1

    .line 1900
    sget-object v0, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->blockedCallsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 1901
    sput v0, Lcom/callapp/contacts/manager/NotificationManager;->b:I

    return-void
.end method

.method private d(I)Z
    .locals 6

    .line 1259
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->l:[Landroidx/core/e/b;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1260
    iget-object v5, v4, Landroidx/core/e/b;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt p1, v5, :cond_0

    iget-object v4, v4, Landroidx/core/e/b;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt p1, v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private f()V
    .locals 4

    .line 2069
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/callapp/contacts/manager/NotificationManager;->getNotificationChannelIdWithPrefix(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 2070
    invoke-virtual {v2}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 2071
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->getImportance()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 2072
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android.resource://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/raw/2131820545"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x5

    .line 2073
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 2072
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 2074
    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationManager;->i:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static get()Lcom/callapp/contacts/manager/NotificationManager;
    .locals 1

    .line 1179
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getNotificationManager()Lcom/callapp/contacts/manager/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method private getChannelEnumFromNotificationId(I)Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;
    .locals 3

    const/16 v0, 0x4e20

    const/16 v1, 0x64

    const/16 v2, 0x2710

    if-lt p1, v2, :cond_0

    if-gt p1, v0, :cond_0

    const/16 p1, 0x2710

    goto :goto_0

    :cond_0
    if-lt p1, v1, :cond_1

    if-gt p1, v0, :cond_1

    const/16 p1, 0x64

    .line 1323
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    return-object p1
.end method

.method private getNotificationChannelIdWithPrefix(I)Ljava/lang/String;
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->am:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static setDummyData(Landroid/content/Intent;)V
    .locals 2

    .line 1848
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-void
.end method

.method private setNotificationAsSilent(Landroid/app/Notification;)V
    .locals 1

    const/4 v0, 0x4

    .line 1347
    iput v0, p1, Landroid/app/Notification;->defaults:I

    const/4 v0, 0x0

    .line 1348
    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a(IIZLjava/lang/String;)Landroidx/core/app/g$e;
    .locals 5

    .line 360
    sget-object v0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->SYNC_PROGRESS_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v0

    const v1, 0x7f120698

    .line 361
    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v1

    const v2, 0x7f080351

    invoke-virtual {v1, v2}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 7160
    invoke-virtual {v0, v1, v2}, Landroidx/core/app/g$e;->a(IZ)V

    .line 365
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const-class v4, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "from_sync_progress"

    .line 366
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    const-class v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3, v3}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/lang/Object;Landroid/content/Intent;Landroidx/core/app/g$e;IZ)V

    if-nez p3, :cond_0

    .line 370
    invoke-virtual {v0, p4}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    .line 7952
    :cond_0
    iput p1, v0, Landroidx/core/app/g$e;->r:I

    .line 7953
    iput p2, v0, Landroidx/core/app/g$e;->s:I

    .line 7954
    iput-boolean p3, v0, Landroidx/core/app/g$e;->t:Z

    return-object v0
.end method

.method public final a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;
    .locals 2

    .line 333
    new-instance v0, Landroidx/core/app/g$e;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/NotificationManager;->getNotificationChannelIdWithPrefix(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroidx/core/app/g$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f060088

    invoke-static {p1, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result p1

    .line 5499
    iput p1, v0, Landroidx/core/app/g$e;->C:I

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Landroidx/core/app/g$e;
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    .line 645
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 646
    sget-object v2, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->INCALL_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {v9, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v8

    .line 648
    sget-object v2, Lcom/callapp/contacts/manager/NotificationManager;->k:Ljava/lang/Object;

    monitor-enter v2

    .line 649
    :try_start_0
    iget-object v3, v9, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v9, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    move-wide v11, v3

    .line 650
    iget-object v3, v9, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v9, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v3

    iget-object v4, v9, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v9, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    const-string v4, "com.callapp.contacts.ACTION_START_CALL_SCREEN"

    .line 9660
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    const-class v7, Lcom/callapp/contacts/service/CallAppService;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 9661
    invoke-static {v1}, Lcom/callapp/contacts/manager/NotificationManager;->setDummyData(Landroid/content/Intent;)V

    const-string v4, "isFromNotification"

    const/4 v6, 0x1

    .line 9662
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "isIncoming"

    const/4 v5, 0x0

    .line 9663
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "isBlocked"

    move/from16 v7, p3

    .line 9664
    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9665
    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v4

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/framework/phone/Phone;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "EXTRA_INCOGNITO_CALL"

    .line 9666
    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9668
    :cond_2
    iget-object v4, v9, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v9, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/model/contact/ContactData;->getGenomeData()Lcom/callapp/common/model/json/JSONContact;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, "isSpammer"

    .line 9669
    iget-object v7, v9, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v7

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9671
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9672
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v4

    sget-object v7, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {v4, v7}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->getBuilderAccordingToOrigin(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v15

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v1

    move-object/from16 v13, p1

    .line 9673
    invoke-static/range {v10 .. v18}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fillIntentWithCallData(Landroid/content/Intent;JLjava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    const-string v4, "fullName"

    .line 9674
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const/16 v3, 0x1e

    const/high16 v10, 0x8000000

    invoke-static {v2, v3, v1, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 654
    iget-object v1, v9, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v9, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v12, 0x1

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    .line 9679
    :goto_2
    new-instance v13, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d011c

    invoke-direct {v13, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 9680
    new-instance v14, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d011d

    invoke-direct {v14, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    if-eqz v12, :cond_6

    const v1, 0x7f06001b

    goto :goto_3

    :cond_6
    const v1, 0x7f060088

    .line 9684
    :goto_3
    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    if-eqz v12, :cond_7

    const v2, 0x7f06001c

    goto :goto_4

    :cond_7
    const v2, 0x7f060089

    .line 9685
    :goto_4
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    const-string v3, "setBackgroundColor"

    const v4, 0x7f0a02a7

    .line 9686
    invoke-virtual {v13, v4, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string v3, "setBackgroundColor"

    const v5, 0x7f0a08a9

    .line 9687
    invoke-virtual {v13, v5, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string v3, "setBackgroundColor"

    .line 9688
    invoke-virtual {v14, v4, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string v3, "setBackgroundColor"

    .line 9689
    invoke-virtual {v13, v5, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string v2, "setBackgroundColor"

    .line 9690
    invoke-virtual {v13, v4, v2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string v2, "setBackgroundColor"

    .line 9691
    invoke-virtual {v14, v4, v2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 9692
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v3, p1

    move-wide v15, v4

    move-object/from16 v4, p2

    move-object v5, v13

    const/4 v10, 0x1

    move-wide v6, v15

    move-object/from16 v17, v8

    move v8, v12

    .line 9693
    invoke-direct/range {v1 .. v8}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;Ljava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;JZ)V

    move-object/from16 v2, v17

    move-object v5, v14

    .line 9694
    invoke-direct/range {v1 .. v8}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;Ljava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;JZ)V

    .line 9695
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "time_stamp"

    move-wide v2, v15

    .line 9696
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v1, v17

    .line 10383
    iput-object v0, v1, Landroidx/core/app/g$e;->B:Landroid/os/Bundle;

    const/4 v0, 0x2

    .line 11160
    invoke-virtual {v1, v0, v10}, Landroidx/core/app/g$e;->a(IZ)V

    .line 11275
    iput v0, v1, Landroidx/core/app/g$e;->l:I

    const-string v2, "call"

    .line 12227
    iput-object v2, v1, Landroidx/core/app/g$e;->A:Ljava/lang/String;

    .line 12511
    iput v10, v1, Landroidx/core/app/g$e;->D:I

    const/4 v2, 0x0

    .line 9702
    invoke-virtual {v1, v2}, Landroidx/core/app/g$e;->a(Landroid/net/Uri;)Landroidx/core/app/g$e;

    .line 12975
    iput-object v11, v1, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    .line 12743
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const-class v4, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.callapp.contacts.ACTION_END_CALL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 12744
    invoke-static {v2}, Lcom/callapp/contacts/manager/NotificationManager;->setDummyData(Landroid/content/Intent;)V

    .line 12745
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const/16 v4, 0x14

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 12746
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const-class v5, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.callapp.contacts.ACTION_TOGGLE_AUDIO"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 12747
    invoke-static {v3}, Lcom/callapp/contacts/manager/NotificationManager;->setDummyData(Landroid/content/Intent;)V

    .line 12748
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const/16 v5, 0x28

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    const v4, 0x7f0803d4

    const v5, 0x7f1207af

    .line 12751
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 12752
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v6

    const v7, 0x7f1207ae

    const v8, 0x7f0803d5

    const v10, 0x7f0803d1

    if-eqz v6, :cond_c

    .line 12753
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getAudioMode()I

    move-result v6

    if-eq v6, v0, :cond_b

    const/16 v0, 0x8

    if-eq v6, v0, :cond_8

    goto :goto_8

    .line 12760
    :cond_8
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->isAnyBluetoothConnected()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/callapp/contacts/manager/phone/BluetoothHeadsetConnectivityManager;->isBluetoothConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    .line 12763
    :cond_9
    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_7

    :cond_a
    :goto_5
    const v0, 0x7f1207ad

    .line 12761
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_b
    const v0, 0x7f1207ac

    .line 12756
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    .line 12768
    :cond_c
    invoke-static {}, Lcom/callapp/contacts/manager/phone/BluetoothHeadsetConnectivityManager;->isUsingBT()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f1200c8

    .line 12770
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    const v4, 0x7f0803d1

    goto :goto_8

    .line 12771
    :cond_d
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 12773
    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_7
    const v4, 0x7f0803d5

    :cond_e
    :goto_8
    const v0, 0x7f0a0173

    .line 12778
    invoke-virtual {v13, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v6, 0x7f0a017a

    .line 12779
    invoke-virtual {v13, v6, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v7, 0x7f12008f

    .line 12780
    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v0, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 12781
    invoke-virtual {v13, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v5, "setImageResource"

    .line 12784
    invoke-virtual {v14, v6, v5, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 12785
    invoke-virtual {v14, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 12786
    invoke-virtual {v14, v6, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 13548
    iput-object v13, v1, Landroidx/core/app/g$e;->G:Landroid/widget/RemoteViews;

    .line 14535
    iput-object v14, v1, Landroidx/core/app/g$e;->F:Landroid/widget/RemoteViews;

    return-object v1

    :catchall_0
    move-exception v0

    .line 652
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final a(Ljava/util/Date;)Ljava/lang/String;
    .locals 5

    .line 1891
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/callapp/contacts/manager/NotificationManager;->h:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->f:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1894
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->g:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a(ILcom/callapp/framework/phone/Phone;Ljava/lang/String;JZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/callapp/framework/phone/Phone;",
            "Ljava/lang/String;",
            "JZ)",
            "Ljava/util/List<",
            "Landroidx/core/app/g$a;",
            ">;"
        }
    .end annotation

    const-string v0, "com.callapp.contacts.ACTION_CALL_REMINDER_CALL"

    .line 510
    invoke-static {p1, p2, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILcom/callapp/framework/phone/Phone;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "com.callapp.contacts.ACTION_CALL_REMINDER_SEND_MESSAGE"

    .line 511
    invoke-static {p1, p2, v1}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILcom/callapp/framework/phone/Phone;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 512
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const-class v4, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.callapp.contacts.ACTION_CALL_SNOOZE"

    .line 513
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.callapp.contacts.EXTRA_FULL_NAME"

    .line 514
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "notification_id"

    .line 515
    invoke-virtual {v2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 516
    invoke-virtual {p2}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.callapp.contacts.EXTRA_RAW_NUMBER"

    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "call_reminder_notification_time"

    .line 517
    invoke-virtual {v2, p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 518
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {p2, p1, v2, p3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 520
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p6, :cond_0

    new-array p3, p3, [I

    .line 523
    fill-array-data p3, :array_0

    goto :goto_0

    :cond_0
    new-array p3, p3, [I

    .line 525
    fill-array-data p3, :array_1

    :goto_0
    const/4 p4, 0x0

    .line 528
    aget p4, p3, p4

    const p5, 0x7f120168

    invoke-static {p4, p5, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(IILandroid/app/PendingIntent;)Landroidx/core/app/g$a;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p4, 0x1

    .line 529
    aget p4, p3, p4

    const p5, 0x7f120171

    invoke-static {p4, p5, v1}, Lcom/callapp/contacts/manager/NotificationManager;->a(IILandroid/app/PendingIntent;)Landroidx/core/app/g$a;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p4, 0x2

    .line 530
    aget p3, p3, p4

    const p4, 0x7f120172

    invoke-static {p3, p4, p1}, Lcom/callapp/contacts/manager/NotificationManager;->a(IILandroid/app/PendingIntent;)Landroidx/core/app/g$a;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2

    nop

    :array_0
    .array-data 4
        0x7f080341
        0x7f08041a
        0x7f0804c1
    .end array-data

    :array_1
    .array-data 4
        0x7f080340
        0x7f080419
        0x7f0802bb
    .end array-data
.end method

.method public final a()V
    .locals 5

    .line 341
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/activity/setup/SetupWizardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 346
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 348
    sget-object v1, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->SETUP_INPROGRESS_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v1

    const v2, 0x7f080351

    .line 349
    invoke-virtual {v1, v2}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    move-result-object v2

    const v3, 0x7f120624

    .line 350
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v2

    const v3, 0x7f120623

    .line 351
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 6160
    invoke-virtual {v2, v3, v4}, Landroidx/core/app/g$e;->a(IZ)V

    .line 6975
    iput-object v0, v2, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    const/16 v0, 0x9

    .line 353
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    return-void
.end method

.method public final a(I)V
    .locals 5

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 558
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/NotificationManager;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;)V

    .line 560
    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(I)V

    .line 561
    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(I)V

    .line 562
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->i:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 562
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 429
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/callapp/contacts/manager/NotificationManager;->a(IIZLjava/lang/String;)Landroidx/core/app/g$e;

    move-result-object p1

    const/16 p2, 0x8

    .line 430
    invoke-virtual {p0, p2, p1}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    return-void
.end method

.method final a(Landroidx/core/app/g$e;ILcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;I)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p4

    .line 1490
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    iget-object v4, v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v4, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v4, v4, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    .line 1491
    new-instance v13, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const-class v5, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    invoke-direct {v13, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.callapp.contacts.ACTION_OPEN_CD_FOR_IM_IDENTIFIED_NUMBER_NOTIFICATION"

    .line 1492
    invoke-virtual {v13, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v14, "notification_id"

    const/16 v15, 0x32

    .line 1493
    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "future_target_index_key"

    .line 1494
    invoke-virtual {v13, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1495
    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v7

    sget-object v12, Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;->CALLAPP_PLUS:Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v13

    invoke-static/range {v4 .. v12}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fillIntentWithCallData(Landroid/content/Intent;JLjava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    .line 1497
    invoke-static {v13}, Lcom/callapp/contacts/manager/NotificationManager;->setDummyData(Landroid/content/Intent;)V

    .line 1498
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v13, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 25975
    iput-object v3, v0, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    const-string v3, "com.callapp.contacts.ACTION_DISMISS_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION"

    .line 1500
    invoke-static {v0, v15, v3, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;ILjava/lang/String;I)V

    .line 26508
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 26509
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v6

    iget-object v7, v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v7, v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->phoneAsRaw:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v6

    new-array v3, v3, [I

    .line 26515
    fill-array-data v3, :array_0

    const-string v7, "com.callapp.contacts.ACTION_CALL_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION"

    .line 26518
    invoke-static {v15, v6, v7}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILcom/callapp/framework/phone/Phone;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 26519
    aget v4, v3, v4

    const v8, 0x7f120168

    invoke-static {v4, v8, v7}, Lcom/callapp/contacts/manager/NotificationManager;->a(IILandroid/app/PendingIntent;)Landroidx/core/app/g$a;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26522
    iget-object v4, v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v4, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v4, v4, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    sget-object v7, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->SMS_MESSAGE:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    if-ne v4, v7, :cond_0

    const-string v4, "com.callapp.contacts.ACTION_SEND_TEXT_MESSAGE"

    .line 26523
    invoke-static {v15, v6, v4}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILcom/callapp/framework/phone/Phone;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "com.callapp.contacts.ACTION_SEND_MESSAGE_FROM_IM_IDENTIFIED_NUMBER_NOTIFICATION"

    .line 26826
    invoke-static {v15, v6, v4}, Lcom/callapp/contacts/manager/NotificationManager;->b(ILcom/callapp/framework/phone/Phone;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 26827
    iget-object v7, v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v7, v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    iget-object v7, v7, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->pkgName:Ljava/lang/String;

    const-string v8, "extra_im_package"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26828
    iget-object v7, v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v7, v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    iget-object v7, v7, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->senderType:Lcom/callapp/contacts/manager/Singletons$SenderType;

    const-string v8, "extra_im_type"

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 26829
    invoke-virtual {v6}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.callapp.contacts.EXTRA_RAW_NUMBER"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26830
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v15, v4, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    :goto_0
    const/4 v6, 0x1

    .line 26527
    aget v6, v3, v6

    const v7, 0x7f120171

    invoke-static {v6, v7, v4}, Lcom/callapp/contacts/manager/NotificationManager;->a(IILandroid/app/PendingIntent;)Landroidx/core/app/g$a;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26529
    invoke-virtual/range {p3 .. p3}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->isContactInDevice()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x2

    .line 26531
    aget v3, v3, v4

    const v4, 0x7f12007d

    .line 27817
    new-instance v6, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v7

    const-class v8, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27818
    invoke-static {v6}, Lcom/callapp/contacts/manager/NotificationManager;->setDummyData(Landroid/content/Intent;)V

    const-string v7, "com.callapp.contacts.ACTION_CREATE_NEW_CONTACT_FROM_IDENTIFIED_NUMBER_NOTIFICATION"

    .line 27819
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 27820
    invoke-virtual/range {p3 .. p3}, Lcom/callapp/contacts/manager/NotificationManager$ContactDataForNotification;->getAddContactIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v7, "android.intent.extra.INTENT"

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 27821
    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27822
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-static {v1, v15, v6, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 26531
    invoke-static {v3, v4, v1}, Lcom/callapp/contacts/manager/NotificationManager;->a(IILandroid/app/PendingIntent;)Landroidx/core/app/g$a;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1502
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/app/g$a;

    .line 1503
    invoke-virtual {v0, v2}, Landroidx/core/app/g$e;->a(Landroidx/core/app/g$a;)Landroidx/core/app/g$e;

    goto :goto_1

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x7f080340
        0x7f080419
        0x7f0802b1
    .end array-data
.end method

.method public final a(Lcom/callapp/contacts/model/call/CallData;Lcom/callapp/contacts/model/contact/ContactData;ZZ)V
    .locals 11

    .line 569
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 576
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/NotificationManager;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 577
    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    if-eqz p1, :cond_1

    .line 578
    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->getNumber()Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    const/4 v4, 0x0

    if-eqz p2, :cond_2

    .line 579
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v4

    :goto_1
    if-eqz p2, :cond_3

    .line 580
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    const v6, 0x7f08058f

    invoke-static {v6}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v6

    .line 582
    :goto_2
    iget-object v7, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v7}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    const/4 v9, 0x0

    if-eqz v7, :cond_4

    .line 585
    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v1, v3, v5, v6, p2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/contact/ContactData;)V

    goto :goto_4

    .line 586
    :cond_4
    iget-object v10, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v10}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v10

    if-eqz v10, :cond_6

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_7

    if-eqz p2, :cond_7

    .line 588
    invoke-virtual {p2}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 590
    iget-object p2, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {p2, v4, v1, v2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Ljava/lang/String;J)V

    .line 591
    iget-object p2, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {p2, v4, v1, v2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Landroid/graphics/Bitmap;J)V

    .line 592
    iget-object p2, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {p2, v9}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(I)V

    goto :goto_4

    .line 587
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v1, p2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->setContact(Lcom/callapp/contacts/model/contact/ContactData;)V

    :cond_7
    :goto_4
    if-nez p4, :cond_b

    if-nez v7, :cond_b

    .line 596
    iget-object p2, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getPhotoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    if-nez p3, :cond_b

    :cond_8
    iget-object p2, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getPhotoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getPhotoUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 597
    :cond_9
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_5

    :cond_a
    move-object v3, v4

    const/4 v8, 0x0

    goto :goto_7

    :cond_b
    :goto_5
    if-eqz p4, :cond_c

    .line 600
    iget-object p2, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    const p3, 0x7f12015b

    invoke-static {p3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->setName(Ljava/lang/String;)V

    goto :goto_6

    .line 601
    :cond_c
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 603
    iget-object p2, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {p2, v5}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->setName(Ljava/lang/String;)V

    .line 606
    :cond_d
    :goto_6
    iget-object p2, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/callapp/contacts/model/call/CallData;->isBlocked()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 v9, 0x1

    :cond_e
    invoke-virtual {p2, v9}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->setBlocked(Z)V

    .line 609
    iget-object p1, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getName()Ljava/lang/String;

    move-result-object v4

    .line 612
    :goto_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_10

    .line 616
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncoming()Z

    move-result p1

    const/16 p2, 0xc

    if-eqz p1, :cond_f

    .line 617
    iget-object p1, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->isBlocked()Z

    move-result p1

    invoke-virtual {p0, v3, v4, p1}, Lcom/callapp/contacts/manager/NotificationManager;->b(Ljava/lang/String;Ljava/lang/String;Z)Landroidx/core/app/g$e;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    return-void

    .line 619
    :cond_f
    iget-object p1, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->isBlocked()Z

    move-result p1

    invoke-virtual {p0, v3, v4, p1}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroidx/core/app/g$e;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    :cond_10
    return-void

    :catchall_0
    move-exception p1

    .line 612
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    const v0, 0x7f12009a

    .line 2143
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f1204eb

    .line 2144
    invoke-static {p1, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2146
    sget-object v2, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->BACKUP_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {p0, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v2

    .line 2147
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->getBackupSettingsIntent()Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x8000000

    invoke-static {v4, v3, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2149
    invoke-virtual {v2, v0}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object v0

    .line 2150
    invoke-virtual {v0, p1}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object p1

    const v0, 0x7f080351

    .line 2151
    invoke-virtual {p1, v0}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    move-result-object p1

    .line 2152
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0802de

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/g$e;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/g$e;

    move-result-object p1

    .line 2153
    invoke-virtual {p1, v1}, Landroidx/core/app/g$e;->a(Z)Landroidx/core/app/g$e;

    move-result-object p1

    .line 35975
    iput-object v3, p1, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    .line 36876
    iput-boolean v1, p1, Landroidx/core/app/g$e;->Q:Z

    const/16 p1, 0x3c

    .line 2156
    invoke-virtual {p0, p1, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1560
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const-string v1, "send who viewed my profile notification"

    const/16 v2, 0x50

    .line 28206
    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    .line 1561
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "ViewProfile"

    const-string v2, "ViewProfile_notification_receive"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    invoke-static {}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->e()V

    .line 1563
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    .line 1564
    iget-object p1, p0, Lcom/callapp/contacts/manager/NotificationManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 1565
    sget-object p1, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->PROFILE_VIEWED_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object p1

    .line 1566
    invoke-static {}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->getViewerNotificationCount()I

    move-result v4

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;ILcom/callapp/framework/phone/Phone;Ljava/lang/String;)V

    .line 1567
    invoke-static {}, Lcom/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileDataManager;->getViewerNotificationCount()I

    move-result p2

    .line 28935
    iput p2, p1, Landroidx/core/app/g$e;->k:I

    const/16 p2, 0xf

    .line 1568
    invoke-virtual {p0, p2, p1}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/framework/phone/Phone;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 910
    invoke-static/range {p1 .. p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->cf:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 914
    :cond_0
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 916
    sget v0, Lcom/callapp/contacts/manager/NotificationManager;->b:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    sput v0, Lcom/callapp/contacts/manager/NotificationManager;->b:I

    .line 917
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v13

    .line 918
    sget-object v0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->CALL_BLOCKED_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {v1, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v14

    .line 920
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/callapp/framework/phone/Phone;

    .line 921
    invoke-static {v4}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v0

    .line 924
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Lcom/callapp/framework/phone/Phone;)Z

    move-result v5

    .line 925
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v6

    const v15, 0x7f120819

    if-eqz v6, :cond_1

    .line 927
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f080596

    .line 928
    invoke-static {v6}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object v12, v5

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    .line 930
    invoke-static {v15}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08037c

    .line 931
    invoke-static {v6}, Lcom/callapp/contacts/util/ImageUtils;->getResourceUri(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 933
    :cond_2
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v5

    .line 934
    invoke-virtual {v0}, Lcom/callapp/contacts/model/contact/ContactData;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 936
    :goto_1
    iget-object v5, v1, Lcom/callapp/contacts/manager/NotificationManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v11

    .line 937
    invoke-static {v6}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v10, 0x0

    if-eqz v5, :cond_3

    .line 938
    iget-object v5, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v5, v6, v11, v0}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(Ljava/lang/String;ILcom/callapp/contacts/model/contact/ContactData;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v0, 0x0

    .line 941
    :try_start_0
    invoke-static {v14, v5, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;Landroid/graphics/Bitmap;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 943
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v6, v7, v10

    const-string v6, "Could not generate notification bitmap for in-call"

    invoke-static {v0, v6, v7}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 945
    :goto_2
    invoke-virtual {v14, v5}, Landroidx/core/app/g$e;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/g$e;

    .line 949
    :cond_3
    sget v0, Lcom/callapp/contacts/manager/NotificationManager;->b:I

    if-ne v0, v3, :cond_4

    const v0, 0x7f120654

    .line 951
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    .line 952
    invoke-virtual {v14, v12}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    goto :goto_3

    :cond_4
    const v0, 0x7f120496

    .line 954
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    .line 958
    :goto_3
    invoke-static {v12}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 959
    invoke-static {v13}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Landroid/app/Application;)Landroid/content/Intent;

    move-result-object v0

    move/from16 v18, v11

    move-object/from16 v17, v12

    const/4 v15, 0x0

    goto :goto_4

    .line 961
    :cond_5
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {v4, v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->getBuilderAccordingToOrigin(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v8

    const-wide/16 v5, 0x0

    .line 962
    invoke-virtual {v4}, Lcom/callapp/framework/phone/Phone;->getRawNumber()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const-string v17, "NotificationBlock"

    move-object v4, v13

    const/4 v15, 0x0

    move-object v10, v0

    move/from16 v18, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v12

    move-object/from16 v12, v16

    invoke-static/range {v4 .. v12}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->createIntent(Landroid/content/Context;JLjava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)Landroid/content/Intent;

    move-result-object v0

    .line 965
    :goto_4
    new-instance v4, Landroidx/core/app/g$g;

    invoke-direct {v4}, Landroidx/core/app/g$g;-><init>()V

    .line 968
    sget v5, Lcom/callapp/contacts/manager/NotificationManager;->b:I

    const v6, 0x7f120494

    if-ne v5, v3, :cond_6

    const v5, 0x7f12010b

    .line 969
    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/app/g$g;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$g;

    goto :goto_5

    :cond_6
    new-array v7, v3, [Ljava/lang/Object;

    .line 971
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v15

    invoke-static {v6, v7}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/app/g$g;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$g;

    .line 974
    :goto_5
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 975
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    :goto_6
    if-ltz v7, :cond_a

    .line 976
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/callapp/framework/phone/Phone;

    .line 977
    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 978
    invoke-static {v8}, Lcom/callapp/contacts/manager/contacts/ContactUtils;->a(Lcom/callapp/framework/phone/Phone;)Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v8

    .line 980
    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v9

    .line 981
    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v10

    if-eqz v9, :cond_7

    .line 983
    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/callapp/framework/phone/Phone;->b()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f120819

    goto :goto_7

    :cond_7
    if-eqz v10, :cond_8

    const v9, 0x7f120819

    .line 985
    invoke-static {v9}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_8
    const v9, 0x7f120819

    .line 987
    invoke-virtual {v8}, Lcom/callapp/contacts/model/contact/ContactData;->getNameOrNumber()Ljava/lang/String;

    move-result-object v8

    .line 988
    invoke-static/range {v17 .. v17}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    const v8, 0x7f120198

    .line 989
    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_9
    :goto_7
    const v10, 0x7f12012c

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v8, v11, v15

    .line 993
    invoke-static {v10, v11}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroidx/core/app/g$g;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$g;

    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 996
    :cond_a
    invoke-virtual {v14, v4}, Landroidx/core/app/g$e;->a(Landroidx/core/app/g$i;)Landroidx/core/app/g$e;

    .line 998
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v3, :cond_b

    sget v2, Lcom/callapp/contacts/manager/NotificationManager;->b:I

    if-ne v2, v3, :cond_b

    move-object/from16 v2, v17

    .line 999
    invoke-virtual {v14, v2}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    goto :goto_8

    :cond_b
    move-object/from16 v2, v17

    .line 1000
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v4, v3, :cond_c

    sget v4, Lcom/callapp/contacts/manager/NotificationManager;->b:I

    if-le v4, v3, :cond_c

    const v5, 0x7f120495

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 1001
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v15

    aput-object v2, v6, v3

    invoke-static {v5, v6}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    goto :goto_8

    :cond_c
    new-array v2, v3, [Ljava/lang/Object;

    .line 1003
    sget v4, Lcom/callapp/contacts/manager/NotificationManager;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v15

    invoke-static {v6, v2}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    :goto_8
    const-string v2, "EXTRA_BLOCKED_CALL_NOTIFICATION_CLICKED"

    .line 1006
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "EXTRA_ASK_OPEN_RATE_US"

    .line 1007
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "future_target_index_key"

    move/from16 v4, v18

    .line 1008
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v2, 0x7f0804a8

    .line 1009
    invoke-virtual {v14, v2}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    move-result-object v2

    const/high16 v5, 0x8000000

    invoke-static {v13, v15, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 22975
    iput-object v0, v2, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    const-string v0, "com.callapp.contacts.ACTION_DISMISS_FROM_BLOCKED_CALL_NOTIFICATION"

    .line 1010
    invoke-static {v14, v3, v0, v4}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;ILjava/lang/String;I)V

    const/4 v0, -0x1

    .line 1012
    invoke-virtual {v14, v0}, Landroidx/core/app/g$e;->b(I)Landroidx/core/app/g$e;

    .line 1013
    invoke-virtual {v14, v3}, Landroidx/core/app/g$e;->a(Z)Landroidx/core/app/g$e;

    .line 1015
    invoke-virtual {v1, v3, v14}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    :cond_d
    :goto_9
    return-void
.end method

.method final a(Ljava/util/List;Landroidx/core/app/g$e;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;",
            ">;",
            "Landroidx/core/app/g$e;",
            ")V"
        }
    .end annotation

    .line 1389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1390
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1395
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v3, v5, :cond_2

    .line 1396
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;

    iget-object v5, v5, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v5, v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_0

    .line 1398
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;

    iget-object v5, v5, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v5, v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1401
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;

    iget-object v7, v7, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v7, v7, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 1405
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;

    iget-object v5, v5, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v5, v5, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1406
    invoke-static {v5}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1407
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1410
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;

    iget-object v6, v6, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ImDataForCallappNotification;->a:Ljava/lang/Object;

    check-cast v6, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    iget-object v6, v6, Lcom/callapp/contacts/model/objectbox/ExtractedInfo;->recognizedPersonOrigin:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const p1, 0x7f1203a2

    .line 1413
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1414
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v5, ""

    .line 1416
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1417
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1418
    invoke-static {v5}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    const v3, 0x7f1203a1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 1420
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    aput-object v5, v7, v6

    invoke-static {v3, v7}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1424
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1426
    invoke-virtual {p2, p1}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    .line 1428
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "com.callapp.contacts.ACTION_OPEN_IM_CALL_LOG_FOR_IM_IDENTIFIED_NUMBER_NOTIFICATION"

    .line 1429
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "notification_id"

    const/16 v1, 0x32

    .line 1430
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1432
    invoke-static {p1}, Lcom/callapp/contacts/manager/NotificationManager;->setDummyData(Landroid/content/Intent;)V

    .line 1434
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, p1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const/4 v0, -0x1

    const-string v2, "com.callapp.contacts.ACTION_DISMISS_IM_NOTIFICATION"

    .line 1435
    invoke-static {p2, v1, v2, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;ILjava/lang/String;I)V

    .line 24975
    iput-object p1, p2, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    return-void
.end method

.method public final a(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;",
            ">;",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;",
            ")V"
        }
    .end annotation

    .line 1538
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1541
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->isMissedCallsNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1544
    :cond_1
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    const/16 v1, 0x11

    if-eqz v0, :cond_2

    .line 1545
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/manager/NotificationManager;->a(I)V

    return-void

    .line 1549
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager;->c()V

    .line 1550
    sget-object v0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->MISSED_CALL_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v0

    .line 1551
    iget-object v2, p0, Lcom/callapp/contacts/manager/NotificationManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v9

    .line 1552
    iget-object v2, p0, Lcom/callapp/contacts/manager/NotificationManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    const/4 v7, 0x3

    const/16 v8, 0x11

    move-object v2, p0

    move-object v3, p2

    move-object v5, v0

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;ILandroidx/core/app/g$e;Ljava/util/List;II)V

    .line 1553
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 27935
    iput p1, v0, Landroidx/core/app/g$e;->k:I

    const-string p1, "com.callapp.contacts.ACTION_DISMISS_FROM_MISSED_CALL_NOTIFICATION"

    .line 1554
    invoke-static {v0, v1, p1, v9}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;ILjava/lang/String;I)V

    .line 1555
    sget-object p1, Lcom/callapp/contacts/workers/RemoveMissedCallNotAnsweredNotificationWorker;->a:Lcom/callapp/contacts/workers/RemoveMissedCallNotAnsweredNotificationWorker$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/workers/RemoveMissedCallNotAnsweredNotificationWorker$Companion;->a()V

    .line 1556
    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    return-void
.end method

.method public final a(ZZ)V
    .locals 5

    if-eqz p2, :cond_0

    const p2, 0x7f12071b

    const v0, 0x7f120534

    goto :goto_0

    :cond_0
    const p2, 0x7f12009a

    const v0, 0x7f12009b

    :goto_0
    if-eqz p1, :cond_1

    const p2, 0x7f1203d4

    const v0, 0x7f12087e

    .line 2106
    :cond_1
    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2107
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2109
    sget-object v0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->BACKUP_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v0

    .line 2110
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/callapp/contacts/api/helper/backup/BackupUtils;->getBackupSettingsIntent()Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2112
    invoke-virtual {v0, p1}, Landroidx/core/app/g$e;->a(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object p1

    .line 2113
    invoke-virtual {p1, p2}, Landroidx/core/app/g$e;->b(Ljava/lang/CharSequence;)Landroidx/core/app/g$e;

    move-result-object p1

    const p2, 0x7f080351

    .line 2114
    invoke-virtual {p1, p2}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    move-result-object p1

    .line 2115
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f0802de

    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/g$e;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/g$e;

    move-result-object p1

    .line 34975
    iput-object v1, p1, Landroidx/core/app/g$e;->f:Landroid/app/PendingIntent;

    const/4 p2, 0x1

    .line 2117
    invoke-virtual {p1, p2}, Landroidx/core/app/g$e;->a(Z)Landroidx/core/app/g$e;

    move-result-object p1

    .line 35876
    iput-boolean p2, p1, Landroidx/core/app/g$e;->Q:Z

    const/16 p1, 0x3c

    .line 2119
    invoke-virtual {p0, p1, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    return-void
.end method

.method public final a(ILandroid/app/Notification;)Z
    .locals 2

    .line 1329
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager$NotificationTimeUtils;->isCurrentTimeDisturbing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1330
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/NotificationManager;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1331
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "not showing notification with ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because current time is disturbing"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x50

    .line 24206
    invoke-virtual {p2, p1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x32

    if-ne p1, v0, :cond_2

    .line 1336
    :cond_1
    invoke-direct {p0, p2}, Lcom/callapp/contacts/manager/NotificationManager;->setNotificationAsSilent(Landroid/app/Notification;)V

    .line 1341
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->i:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(ILandroidx/core/app/g$e;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    .line 1278
    sget-object v1, Lcom/callapp/contacts/manager/NotificationManager;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 1279
    :try_start_0
    invoke-virtual {p2}, Landroidx/core/app/g$e;->a()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "time_stamp"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1280
    iget-wide v4, p0, Lcom/callapp/contacts/manager/NotificationManager;->j:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    .line 1281
    monitor-exit v1

    return v0

    .line 1283
    :cond_1
    iput-wide v2, p0, Lcom/callapp/contacts/manager/NotificationManager;->j:J

    .line 1284
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1287
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/NotificationManager;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 1288
    invoke-static {v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 23571
    iput-object v1, p2, Landroidx/core/app/g$e;->I:Ljava/lang/String;

    .line 1292
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Landroidx/core/app/g$e;->b()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroid/app/Notification;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1294
    const-class p2, Lcom/callapp/contacts/manager/NotificationManager;

    invoke-static {p2, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Z)Landroidx/core/app/g$e;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 797
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 798
    sget-object v2, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->INCALL_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v12

    .line 799
    iget-object v2, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->isVoiceMail()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    .line 800
    :goto_0
    sget-object v16, Lcom/callapp/contacts/manager/NotificationManager;->k:Ljava/lang/Object;

    monitor-enter v16

    .line 801
    :try_start_0
    iget-object v2, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getDeviceId()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    move-wide v9, v2

    .line 802
    iget-object v2, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->isIncognito()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v2

    iget-object v3, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/contacts/model/contact/ContactData;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getFullName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string v2, ""

    :goto_2
    move-object v8, v2

    const-string v2, "com.callapp.contacts.ACTION_START_CALL_SCREEN"

    .line 14828
    invoke-virtual {v11, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const-class v5, Lcom/callapp/contacts/service/CallAppService;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 14829
    invoke-static {v11}, Lcom/callapp/contacts/manager/NotificationManager;->setDummyData(Landroid/content/Intent;)V

    const-string v2, "isFromNotification"

    .line 14830
    invoke-virtual {v11, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "isIncoming"

    .line 14831
    invoke-virtual {v11, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "isBlocked"

    move/from16 v3, p3

    .line 14832
    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14833
    invoke-static {}, Lcom/callapp/contacts/manager/IncognitoCallManager;->get()Lcom/callapp/contacts/manager/IncognitoCallManager;

    move-result-object v2

    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/manager/IncognitoCallManager;->isIncognito(Lcom/callapp/framework/phone/Phone;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "EXTRA_INCOGNITO_CALL"

    .line 14834
    invoke-virtual {v11, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14836
    :cond_3
    iget-object v2, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/contact/ContactData;->getGenomeData()Lcom/callapp/common/model/json/JSONContact;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "isSpammer"

    .line 14837
    iget-object v3, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v3

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14839
    :cond_4
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->a(Ljava/lang/String;)Lcom/callapp/framework/phone/Phone;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;

    invoke-static {v2, v3}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->getBuilderAccordingToOrigin(Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$RecognizedPersonOrigin;)Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/model/objectbox/ExtractedInfo$Builder;->build()Lcom/callapp/contacts/model/objectbox/ExtractedInfo;

    move-result-object v7

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v2, v11

    move-wide v3, v9

    move-object/from16 v5, p1

    move-object v14, v8

    move/from16 v8, v17

    move-wide/from16 v20, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    .line 14840
    invoke-static/range {v2 .. v10}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->fillIntentWithCallData(Landroid/content/Intent;JLjava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/model/objectbox/ExtractedInfo;ZLcom/callapp/contacts/model/DataChangedInfo;Lcom/callapp/contacts/model/objectbox/ENTRYPOINT;)V

    const-string v2, "fullName"

    .line 14841
    invoke-virtual {v11, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const/16 v3, 0x1e

    const/high16 v9, 0x8000000

    invoke-static {v2, v3, v11, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 807
    iget-object v3, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getContact()Lcom/callapp/contacts/model/contact/ContactData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/model/contact/ContactData;->isSpammer()Z

    move-result v3

    move v10, v3

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    .line 15814
    :goto_3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 15815
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-string v4, "time_stamp"

    .line 15816
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 16383
    iput-object v3, v12, Landroidx/core/app/g$e;->B:Landroid/os/Bundle;

    const v3, 0x7f0804ab

    .line 16845
    invoke-virtual {v12, v3}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    .line 17808
    iput-boolean v13, v12, Landroidx/core/app/g$e;->m:Z

    .line 16848
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v3, v4, :cond_6

    .line 16849
    iget-object v3, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    const/4 v4, 0x0

    move v5, v15

    move v8, v10

    invoke-virtual/range {v3 .. v8}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(ZZJZ)V

    .line 16853
    :cond_6
    iget-object v3, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroidx/core/app/g$e;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/g$e;

    if-eqz v15, :cond_7

    const v3, 0x7f120819

    .line 16855
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 16856
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 16857
    iget-object v3, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v3, v0

    goto :goto_4

    :cond_8
    iget-object v3, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_9
    move-object/from16 v3, p2

    .line 16859
    :goto_4
    iget-object v4, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v1, v3, v4, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 16860
    iget-object v4, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v4, v3}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->setName(Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 18160
    invoke-virtual {v12, v3, v4}, Landroidx/core/app/g$e;->a(IZ)V

    .line 18511
    iput v4, v12, Landroidx/core/app/g$e;->D:I

    .line 19275
    iput v3, v12, Landroidx/core/app/g$e;->l:I

    const-string v3, "call"

    .line 20227
    iput-object v3, v12, Landroidx/core/app/g$e;->A:Ljava/lang/String;

    const/4 v3, 0x0

    .line 15823
    invoke-virtual {v12, v3}, Landroidx/core/app/g$e;->a(Landroid/net/Uri;)Landroidx/core/app/g$e;

    .line 20864
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const-class v5, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.callapp.contacts.ACTION_END_CALL_TELECOM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 20865
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    const/16 v5, 0x14

    invoke-static {v4, v5, v3, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 20866
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    const-class v6, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.callapp.contacts.ACTION_INCOMING_CALL_SMS_TELECOM"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "phone"

    .line 20867
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "contactId"

    move-wide/from16 v6, v20

    .line 20868
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 20869
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v5

    invoke-virtual {v5}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v5

    const/16 v6, 0x28

    invoke-static {v5, v6, v4, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 20870
    new-instance v5, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    const-class v7, Lcom/callapp/contacts/service/NotificationPendingIntentHandlerService;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "com.callapp.contacts.ACTION_ANSWER_CALL_TELECOM"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 20871
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/manager/Singletons;->getApplication()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    const/16 v7, 0x3c

    invoke-static {v6, v7, v5, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 20872
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/callapp/contacts/CallAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0d0157

    invoke-direct {v6, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 20873
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/callapp/contacts/CallAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0d0158

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    if-eqz v10, :cond_a

    const v8, 0x7f06001b

    goto :goto_5

    :cond_a
    const v8, 0x7f060088

    .line 20875
    :goto_5
    invoke-static {v8}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    if-eqz v10, :cond_b

    const v9, 0x7f06001c

    goto :goto_6

    :cond_b
    const v9, 0x7f060089

    .line 20876
    :goto_6
    invoke-static {v9}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v9

    const-string v10, "setBackgroundColor"

    const v11, 0x7f0a02a7

    .line 20879
    invoke-virtual {v6, v11, v10, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v10, 0x7f0a07cf

    const-string v14, "setBackgroundColor"

    .line 20880
    invoke-virtual {v6, v10, v14, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string v9, "setBackgroundColor"

    .line 20881
    invoke-virtual {v7, v11, v9, v8}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 20882
    iget-object v8, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v8}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    const v9, 0x7f0a063e

    invoke-virtual {v6, v9, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 20883
    iget-object v8, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v8}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 20884
    invoke-static/range {p1 .. p1}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/lang/String;)Z

    move-result v8

    const v9, 0x7f0a04e3

    if-eqz v8, :cond_c

    .line 20885
    const-class v8, Lcom/callapp/contacts/manager/NotificationManager;

    const-string v10, "Hiding SMS: "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 20886
    invoke-virtual {v6, v9, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_7

    .line 20888
    :cond_c
    invoke-virtual {v6, v9, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 20892
    :goto_7
    iget-object v0, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getName()Ljava/lang/String;

    move-result-object v0

    const v8, 0x7f0a063f

    invoke-virtual {v6, v8, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 20893
    iget-object v0, v1, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x7f1203c4

    .line 20894
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f0a063c

    invoke-virtual {v6, v10, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 20895
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 20896
    invoke-virtual {v6, v11, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v0, 0x7f0a04e0

    .line 20897
    invoke-virtual {v6, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 20898
    invoke-virtual {v6, v9, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v8, 0x7f0a04df

    .line 20899
    invoke-virtual {v6, v8, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 20900
    invoke-virtual {v7, v11, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 20901
    invoke-virtual {v7, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 20902
    invoke-virtual {v7, v9, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 20903
    invoke-virtual {v7, v8, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 21548
    iput-object v6, v12, Landroidx/core/app/g$e;->G:Landroid/widget/RemoteViews;

    .line 22535
    iput-object v7, v12, Landroidx/core/app/g$e;->F:Landroid/widget/RemoteViews;

    return-object v12

    :catchall_0
    move-exception v0

    .line 804
    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 2

    .line 1300
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 1301
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/NotificationManager;->getChannelEnumFromNotificationId(I)Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1303
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->i:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/callapp/contacts/manager/NotificationManager;->getNotificationChannelIdWithPrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1305
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/NotificationManager;->b()V

    .line 1307
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/NotificationManager;->getNotificationChannelIdWithPrefix(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1309
    :cond_1
    sget-object p1, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->DEFAULT_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/NotificationManager;->getNotificationChannelIdWithPrefix(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()V
    .locals 8

    .line 1133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_6

    .line 1135
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->i:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannelGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannelGroup;

    .line 1136
    iget-object v2, p0, Lcom/callapp/contacts/manager/NotificationManager;->i:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->deleteNotificationChannelGroup(Ljava/lang/String;)V

    goto :goto_0

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->i:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 1141
    :try_start_0
    iget-object v2, p0, Lcom/callapp/contacts/manager/NotificationManager;->i:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    .line 1146
    :cond_1
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->am:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    const/4 v1, 0x1

    .line 23039
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->b(I)Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    .line 1149
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->values()[Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1150
    iget-object v5, p0, Lcom/callapp/contacts/manager/NotificationManager;->i:Landroid/app/NotificationManager;

    new-instance v6, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1153
    :cond_2
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->values()[Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    move-result-object v0

    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 1154
    new-instance v4, Landroid/app/NotificationChannel;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->getId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/callapp/contacts/manager/NotificationManager;->getNotificationChannelIdWithPrefix(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->getImportance()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1155
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->getGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    .line 1157
    invoke-virtual {v3}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->isShowBadge()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 1158
    sget-object v5, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    if-ne v3, v5, :cond_3

    .line 1159
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "android.resource://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/CallAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/raw/2131820545"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v7, 0x5

    .line 1160
    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    .line 1159
    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1162
    :cond_3
    sget-object v5, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->INCALL_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    if-eq v3, v5, :cond_4

    sget-object v5, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->IM_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    if-ne v3, v5, :cond_5

    :cond_4
    const/4 v3, 0x0

    .line 1163
    invoke-virtual {v4, v3, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1166
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/callapp/contacts/manager/NotificationManager;->i:Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final b(Ljava/util/List;Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallDataForNotification;",
            ">;",
            "Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;",
            ")V"
        }
    .end annotation

    .line 1591
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->aW:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1594
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/activity/missedcall/MissedCallManager;->isNotAnswerNotificationsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1597
    :cond_1
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    const/16 v1, 0x28

    if-eqz v0, :cond_2

    .line 1598
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/manager/NotificationManager;->a(I)V

    return-void

    .line 1602
    :cond_2
    sget-object v0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->NOT_ANSWERED_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v0

    .line 1603
    iget-object v2, p0, Lcom/callapp/contacts/manager/NotificationManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v9

    .line 1604
    iget-object v2, p0, Lcom/callapp/contacts/manager/NotificationManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    const/16 v7, 0x28

    const/16 v8, 0x28

    move-object v2, p0

    move-object v3, p2

    move-object v5, v0

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/util/MissedCallUtils$MissedCallsListParams;ILandroidx/core/app/g$e;Ljava/util/List;II)V

    .line 1605
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 29935
    iput p1, v0, Landroidx/core/app/g$e;->k:I

    const-string p1, "com.callapp.contacts.ACTION_DISMISS_FROM_NOT_ANSWERED_NOTIFICATION"

    .line 1606
    invoke-static {v0, v1, p1, v9}, Lcom/callapp/contacts/manager/NotificationManager;->a(Landroidx/core/app/g$e;ILjava/lang/String;I)V

    .line 1607
    sget-object p1, Lcom/callapp/contacts/workers/RemoveMissedCallNotAnsweredNotificationWorker;->a:Lcom/callapp/contacts/workers/RemoveMissedCallNotAnsweredNotificationWorker$Companion;

    invoke-virtual {p1}, Lcom/callapp/contacts/workers/RemoveMissedCallNotAnsweredNotificationWorker$Companion;->a()V

    .line 1608
    invoke-virtual {p0, v1, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(ILandroidx/core/app/g$e;)Z

    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 2160
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->a(I)V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1175
    iput-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->i:Landroid/app/NotificationManager;

    return-void
.end method

.method public final e()V
    .locals 2

    .line 1905
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/manager/NotificationManager$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/manager/NotificationManager$2;-><init>(Lcom/callapp/contacts/manager/NotificationManager;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentCallAppInCallNotificationBuilder()Landroidx/core/app/g$e;
    .locals 3

    .line 631
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->isBlocked()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/callapp/contacts/manager/NotificationManager;->b(Ljava/lang/String;Ljava/lang/String;Z)Landroidx/core/app/g$e;

    move-result-object v0

    return-object v0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/manager/NotificationManager;->d:Lcom/callapp/contacts/manager/CurrentCallDynamicObject;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/CurrentCallDynamicObject;->isBlocked()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/callapp/contacts/manager/NotificationManager;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroidx/core/app/g$e;

    move-result-object v0

    return-object v0
.end method

.method getImDetailNotificationBuilder()Landroidx/core/app/g$e;
    .locals 2

    .line 1482
    sget-object v0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->IM_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/manager/NotificationManager;->a(Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;)Landroidx/core/app/g$e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/app/g$e;->a(Z)Landroidx/core/app/g$e;

    move-result-object v0

    .line 25275
    iput v1, v0, Landroidx/core/app/g$e;->l:I

    const/4 v1, 0x0

    .line 1484
    invoke-virtual {v0, v1}, Landroidx/core/app/g$e;->a(Landroid/net/Uri;)Landroidx/core/app/g$e;

    const v1, 0x7f0804a9

    .line 1485
    invoke-virtual {v0, v1}, Landroidx/core/app/g$e;->a(I)Landroidx/core/app/g$e;

    return-object v0
.end method

.method public getOpenBirthdayChannelSettingsIntent()Landroid/content/Intent;
    .locals 3

    .line 2058
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->i:Landroid/app/NotificationManager;

    sget-object v1, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/callapp/contacts/manager/NotificationManager;->getNotificationChannelIdWithPrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2060
    invoke-direct {p0}, Lcom/callapp/contacts/manager/NotificationManager;->f()V

    .line 2062
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2063
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 2064
    invoke-virtual {v1}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/callapp/contacts/manager/NotificationManager;->getNotificationChannelIdWithPrefix(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 6

    .line 1117
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->i:Landroid/app/NotificationManager;

    .line 1118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 1119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager;->m:Ljava/util/HashMap;

    .line 1120
    invoke-static {}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->values()[Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1121
    iget-object v4, p0, Lcom/callapp/contacts/manager/NotificationManager;->m:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isBirthdayChannelHasSound()Z
    .locals 3

    const/4 v0, 0x1

    .line 2040
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationManager;->i:Landroid/app/NotificationManager;

    sget-object v2, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/callapp/contacts/manager/NotificationManager;->getNotificationChannelIdWithPrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 2043
    :catch_0
    invoke-direct {p0}, Lcom/callapp/contacts/manager/NotificationManager;->f()V

    return v0
.end method
