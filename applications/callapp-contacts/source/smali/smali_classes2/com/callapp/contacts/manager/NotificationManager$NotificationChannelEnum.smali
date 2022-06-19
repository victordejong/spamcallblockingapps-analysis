.class public final enum Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationChannelEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

.field public static final enum BACKUP_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

.field public static final enum BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

.field public static final enum CALL_BLOCKED_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

.field public static final enum CALL_REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

.field public static final enum DEFAULT_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

.field public static final enum IM_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

.field public static final enum INCALL_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

.field public static final enum MISSED_CALL_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

.field public static final enum NOT_ANSWERED_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

.field public static final enum PROFILE_VIEWED_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

.field public static final enum REFER_AND_EARN_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

.field public static final enum REGISTRATION_REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

.field public static final enum REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

.field public static final enum SETUP_INPROGRESS_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

.field public static final enum SYNC_PROGRESS_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

.field public static final enum VALIDATE_CLIENT_TASK_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

.field public static final enum WHATS_NEW_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;


# instance fields
.field private final groupId:Ljava/lang/String;

.field private final id:I

.field private final importance:I

.field private final name:Ljava/lang/CharSequence;

.field private final showBadge:Z


# direct methods
.method static constructor <clinit>()V
    .locals 34

    .line 252
    new-instance v8, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const v0, 0x7f1205d3

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->REMINDERS:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const-string v1, "REMINDER_NOTIFICATION_CHANNEL"

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v5, 0x3

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V

    sput-object v8, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 253
    new-instance v0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const v1, 0x7f12016f

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->REMINDERS:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const-string v10, "CALL_REMINDER_NOTIFICATION_CHANNEL"

    const/4 v11, 0x1

    const/16 v12, 0x2710

    const/4 v14, 0x4

    const/16 v16, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V

    sput-object v0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->CALL_REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 254
    new-instance v1, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const v2, 0x7f1200fd

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v21

    sget-object v23, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->REMINDERS:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const-string v18, "BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL"

    const/16 v19, 0x2

    const/16 v20, 0x64

    const/16 v22, 0x3

    const/16 v24, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V

    sput-object v1, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->BIRTHDAY_REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 255
    new-instance v2, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const v3, 0x7f12084d

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->WHATS_NEW:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const-string v10, "WHATS_NEW_NOTIFICATION_CHANNEL"

    const/4 v11, 0x3

    const/16 v12, 0xd

    const/4 v14, 0x3

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V

    sput-object v2, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->WHATS_NEW_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 256
    new-instance v3, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const v4, 0x7f1205ca

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v21

    sget-object v23, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->REGISTRATION_AND_SYNC:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const-string v18, "REGISTRATION_REMINDER_NOTIFICATION_CHANNEL"

    const/16 v19, 0x4

    const/16 v20, 0x5

    const/16 v22, 0x4

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V

    sput-object v3, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->REGISTRATION_REMINDER_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 257
    new-instance v4, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const v5, 0x7f1200da

    invoke-static {v5}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->BACKUP:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const-string v10, "BACKUP_NOTIFICATION_CHANNEL"

    const/4 v11, 0x5

    const/16 v12, 0x3c

    const/4 v14, 0x2

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V

    sput-object v4, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->BACKUP_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 260
    new-instance v5, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const v6, 0x7f12061f

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v21

    sget-object v23, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->REGISTRATION_AND_SYNC:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const-string v18, "SETUP_INPROGRESS_NOTIFICATION_CHANNEL"

    const/16 v19, 0x6

    const/16 v20, 0x9

    const/16 v22, 0x2

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v24}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V

    sput-object v5, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->SETUP_INPROGRESS_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 261
    new-instance v6, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const v7, 0x7f120694

    invoke-static {v7}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->REGISTRATION_AND_SYNC:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const-string v10, "SYNC_PROGRESS_NOTIFICATION_CHANNEL"

    const/4 v11, 0x7

    const/16 v12, 0x8

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V

    sput-object v6, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->SYNC_PROGRESS_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 262
    new-instance v7, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const v9, 0x7f120806

    invoke-static {v9}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v21

    sget-object v23, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->REGISTRATION_AND_SYNC:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const-string v18, "VALIDATE_CLIENT_TASK_NOTIFICATION_CHANNEL"

    const/16 v19, 0x8

    const/16 v20, 0x7

    const/16 v22, 0x4

    move-object/from16 v17, v7

    invoke-direct/range {v17 .. v24}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V

    sput-object v7, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->VALIDATE_CLIENT_TASK_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 263
    new-instance v17, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const v9, 0x7f12012b

    invoke-static {v9}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->CALL_IDENTIFICATION:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const-string v10, "CALL_BLOCKED_NOTIFICATION_CHANNEL"

    const/16 v11, 0x9

    const/4 v12, 0x1

    const/4 v14, 0x3

    move-object/from16 v9, v17

    invoke-direct/range {v9 .. v16}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V

    sput-object v17, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->CALL_BLOCKED_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 264
    new-instance v9, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const v10, 0x7f12012e

    invoke-static {v10}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v22

    sget-object v24, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->CALL_IDENTIFICATION:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const-string v19, "IM_NOTIFICATION_CHANNEL"

    const/16 v20, 0xa

    const/16 v21, 0x32

    const/16 v23, 0x3

    const/16 v25, 0x0

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v25}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V

    sput-object v9, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->IM_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 265
    new-instance v10, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const v11, 0x7f1203b4

    invoke-static {v11}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v30

    sget-object v32, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->CALL_NOTIFICATION:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const-string v27, "INCALL_NOTIFICATION_CHANNEL"

    const/16 v28, 0xb

    const/16 v29, 0xc

    const/16 v31, 0x3

    const/16 v33, 0x0

    move-object/from16 v26, v10

    invoke-direct/range {v26 .. v33}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V

    sput-object v10, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->INCALL_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 266
    new-instance v11, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const v12, 0x7f12045c

    invoke-static {v12}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v22

    sget-object v24, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->MISSED_CALL_NOTIFICATION:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const-string v19, "MISSED_CALL_NOTIFICATION_CHANNEL"

    const/16 v20, 0xc

    const/16 v21, 0x11

    const/16 v25, 0x1

    move-object/from16 v18, v11

    invoke-direct/range {v18 .. v25}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V

    sput-object v11, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->MISSED_CALL_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 267
    new-instance v12, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const v13, 0x7f1204d7

    invoke-static {v13}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v30

    sget-object v32, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->NOT_ANSWERED_NOTIFICATION:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const-string v27, "NOT_ANSWERED_NOTIFICATION_CHANNEL"

    const/16 v28, 0xd

    const/16 v29, 0x28

    const/16 v33, 0x1

    move-object/from16 v26, v12

    invoke-direct/range {v26 .. v33}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V

    sput-object v12, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->NOT_ANSWERED_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 268
    new-instance v13, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const v14, 0x7f1205b3

    invoke-static {v14}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v22

    sget-object v24, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->REFER_AND_EARN_NOTIFICATION:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const-string v19, "REFER_AND_EARN_NOTIFICATION_CHANNEL"

    const/16 v20, 0xe

    const/16 v21, 0xe

    const/16 v23, 0x4

    const/16 v25, 0x0

    move-object/from16 v18, v13

    invoke-direct/range {v18 .. v25}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V

    sput-object v13, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->REFER_AND_EARN_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 269
    new-instance v14, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const v15, 0x7f12054f

    invoke-static {v15}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v30

    sget-object v32, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->PROFILE_VIEWED:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const-string v27, "PROFILE_VIEWED_NOTIFICATION_CHANNEL"

    const/16 v28, 0xf

    const/16 v29, 0xf

    const/16 v31, 0x4

    const/16 v33, 0x0

    move-object/from16 v26, v14

    invoke-direct/range {v26 .. v33}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V

    sput-object v14, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->PROFILE_VIEWED_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    .line 273
    new-instance v15, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const v16, 0x7f120281

    invoke-static/range {v16 .. v16}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v19, "DEFAULT_NOTIFICATION_CHANNEL"

    const/16 v20, 0x10

    const/16 v21, -0x1

    const/16 v23, 0x3

    const/16 v24, 0x0

    move-object/from16 v18, v15

    invoke-direct/range {v18 .. v25}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;-><init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V

    sput-object v15, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->DEFAULT_NOTIFICATION_CHANNEL:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    move-object/from16 v16, v15

    const/16 v15, 0x11

    new-array v15, v15, [Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    const/16 v18, 0x0

    aput-object v8, v15, v18

    const/4 v8, 0x1

    aput-object v0, v15, v8

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v6, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v17, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v13, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v16, v15, v0

    .line 251
    sput-object v15, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->$VALUES:[Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/CharSequence;ILcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "I",
            "Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;",
            "Z)V"
        }
    .end annotation

    .line 281
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 282
    iput p3, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->id:I

    .line 283
    iput-object p4, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->name:Ljava/lang/CharSequence;

    .line 284
    iput p5, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->importance:I

    if-eqz p6, :cond_0

    .line 286
    invoke-virtual {p6}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->groupId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 288
    iput-object p1, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->groupId:Ljava/lang/String;

    .line 291
    :goto_0
    iput-boolean p7, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->showBadge:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;
    .locals 1

    .line 251
    const-class v0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;
    .locals 1

    .line 251
    sget-object v0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->$VALUES:[Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    invoke-virtual {v0}, [Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;

    return-object v0
.end method


# virtual methods
.method public final getGroupId()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->id:I

    return v0
.end method

.method public final getImportance()I
    .locals 1

    .line 307
    iget v0, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->importance:I

    return v0
.end method

.method public final getName()Ljava/lang/CharSequence;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->name:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final isShowBadge()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->showBadge:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationChannelEnum{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->name:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", importance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->importance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", groupId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", showBadge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelEnum;->showBadge:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
