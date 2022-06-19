.class synthetic Lcom/callapp/contacts/manager/NotificationManager$3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1672
    invoke-static {}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->values()[Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/callapp/contacts/manager/NotificationManager$3;->a:[I

    :try_start_0
    sget-object v1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->SINGLE_CALL_PRIVATE_NUMBER:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/callapp/contacts/manager/NotificationManager$3;->a:[I

    sget-object v1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->SINGLE_CALL_NON_PRIVATE_NUMBER:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/callapp/contacts/manager/NotificationManager$3;->a:[I

    sget-object v1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->MULTIPLE_CALLS_ALL_PRIVATE_NUMBERS:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/callapp/contacts/manager/NotificationManager$3;->a:[I

    sget-object v1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->MULTIPLE_CALLS_ALL_SAME_CALLER:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/callapp/contacts/manager/NotificationManager$3;->a:[I

    sget-object v1, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->MULTIPLE_CALLS_MIXED_CALLERS:Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/MissedCallUtils$MissedCallNotificationType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
