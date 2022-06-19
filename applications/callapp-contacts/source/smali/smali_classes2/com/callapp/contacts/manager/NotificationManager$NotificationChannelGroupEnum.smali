.class final enum Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NotificationChannelGroupEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

.field public static final enum BACKUP:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

.field public static final enum CALL_IDENTIFICATION:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

.field public static final enum CALL_NOTIFICATION:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

.field public static final enum MISSED_CALL_NOTIFICATION:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

.field public static final enum NOT_ANSWERED_NOTIFICATION:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

.field public static final enum PROFILE_VIEWED:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

.field public static final enum REFER_AND_EARN_NOTIFICATION:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

.field public static final enum REGISTRATION_AND_SYNC:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

.field public static final enum REMINDERS:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

.field public static final enum WHATS_NEW:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;


# instance fields
.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 216
    new-instance v0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const v1, 0x7f1205d2

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "REMINDERS"

    const/4 v3, 0x0

    const-string v4, "0"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->REMINDERS:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    .line 217
    new-instance v1, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const v2, 0x7f12084b

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "WHATS_NEW"

    const/4 v5, 0x1

    const-string v6, "1"

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;)V

    sput-object v1, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->WHATS_NEW:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    .line 218
    new-instance v2, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const v4, 0x7f12012e

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "CALL_IDENTIFICATION"

    const/4 v7, 0x2

    const-string v8, "2"

    invoke-direct {v2, v6, v7, v8, v4}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;)V

    sput-object v2, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->CALL_IDENTIFICATION:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    .line 219
    new-instance v4, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const v6, 0x7f1205c6

    invoke-static {v6}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "REGISTRATION_AND_SYNC"

    const/4 v9, 0x3

    const-string v10, "3"

    invoke-direct {v4, v8, v9, v10, v6}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;)V

    sput-object v4, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->REGISTRATION_AND_SYNC:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    .line 220
    new-instance v6, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const v8, 0x7f120137

    invoke-static {v8}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "CALL_NOTIFICATION"

    const/4 v11, 0x4

    const-string v12, "4"

    invoke-direct {v6, v10, v11, v12, v8}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;)V

    sput-object v6, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->CALL_NOTIFICATION:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    .line 221
    new-instance v8, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const v10, 0x7f12045d

    invoke-static {v10}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v12, "MISSED_CALL_NOTIFICATION"

    const/4 v13, 0x5

    const-string v14, "5"

    invoke-direct {v8, v12, v13, v14, v10}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;)V

    sput-object v8, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->MISSED_CALL_NOTIFICATION:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    .line 222
    new-instance v10, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const v12, 0x7f1204d4

    invoke-static {v12}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v14, "NOT_ANSWERED_NOTIFICATION"

    const/4 v15, 0x6

    const-string v13, "6"

    invoke-direct {v10, v14, v15, v13, v12}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;)V

    sput-object v10, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->NOT_ANSWERED_NOTIFICATION:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    .line 223
    new-instance v12, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const v13, 0x7f1205b6

    invoke-static {v13}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "REFER_AND_EARN_NOTIFICATION"

    const/4 v15, 0x7

    const-string v11, "7"

    invoke-direct {v12, v14, v15, v11, v13}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;)V

    sput-object v12, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->REFER_AND_EARN_NOTIFICATION:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    .line 224
    new-instance v11, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const v13, 0x7f120550

    invoke-static {v13}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "PROFILE_VIEWED"

    const/16 v15, 0x8

    const-string v9, "8"

    invoke-direct {v11, v14, v15, v9, v13}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;)V

    sput-object v11, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->PROFILE_VIEWED:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    .line 225
    new-instance v9, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const v13, 0x7f1200db

    invoke-static {v13}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "BACKUP"

    const/16 v15, 0x9

    const-string v7, "9"

    invoke-direct {v9, v14, v15, v7, v13}, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;)V

    sput-object v9, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->BACKUP:Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    const/16 v7, 0xa

    new-array v7, v7, [Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    aput-object v0, v7, v3

    aput-object v1, v7, v5

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object v4, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    const/4 v0, 0x5

    aput-object v8, v7, v0

    const/4 v0, 0x6

    aput-object v10, v7, v0

    const/4 v0, 0x7

    aput-object v12, v7, v0

    const/16 v0, 0x8

    aput-object v11, v7, v0

    aput-object v9, v7, v15

    .line 215
    sput-object v7, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->$VALUES:[Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 231
    iput-object p3, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->id:Ljava/lang/String;

    .line 232
    iput-object p4, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->name:Ljava/lang/CharSequence;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;
    .locals 1

    .line 215
    const-class v0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;
    .locals 1

    .line 215
    sget-object v0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->$VALUES:[Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    invoke-virtual {v0}, [Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/CharSequence;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/callapp/contacts/manager/NotificationManager$NotificationChannelGroupEnum;->name:Ljava/lang/CharSequence;

    return-object v0
.end method
