.class public final enum Lcom/callapp/contacts/model/ReminderType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/model/ReminderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/model/ReminderType;

.field public static final enum BIRTHDAY:Lcom/callapp/contacts/model/ReminderType;

.field public static final enum BLOCKED:Lcom/callapp/contacts/model/ReminderType;

.field public static final enum BLOCKED_RULE:Lcom/callapp/contacts/model/ReminderType;

.field public static final enum CALL:Lcom/callapp/contacts/model/ReminderType;

.field public static final enum NOTES:Lcom/callapp/contacts/model/ReminderType;

.field public static final enum SPAM:Lcom/callapp/contacts/model/ReminderType;

.field public static final enum URGENT_NOTES:Lcom/callapp/contacts/model/ReminderType;


# instance fields
.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 5
    new-instance v0, Lcom/callapp/contacts/model/ReminderType;

    const-string v1, "CALL"

    const/4 v2, 0x0

    const-string v3, "Call Reminder"

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/model/ReminderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/model/ReminderType;->CALL:Lcom/callapp/contacts/model/ReminderType;

    .line 6
    new-instance v1, Lcom/callapp/contacts/model/ReminderType;

    const-string v3, "BIRTHDAY"

    const/4 v4, 0x1

    const-string v5, "Birthday Reminder"

    invoke-direct {v1, v3, v4, v5}, Lcom/callapp/contacts/model/ReminderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/model/ReminderType;->BIRTHDAY:Lcom/callapp/contacts/model/ReminderType;

    .line 7
    new-instance v3, Lcom/callapp/contacts/model/ReminderType;

    const-string v5, "NOTES"

    const/4 v6, 0x2

    const-string v7, "Note"

    invoke-direct {v3, v5, v6, v7}, Lcom/callapp/contacts/model/ReminderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/callapp/contacts/model/ReminderType;->NOTES:Lcom/callapp/contacts/model/ReminderType;

    .line 8
    new-instance v5, Lcom/callapp/contacts/model/ReminderType;

    const-string v8, "URGENT_NOTES"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v7}, Lcom/callapp/contacts/model/ReminderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/callapp/contacts/model/ReminderType;->URGENT_NOTES:Lcom/callapp/contacts/model/ReminderType;

    .line 9
    new-instance v7, Lcom/callapp/contacts/model/ReminderType;

    const-string v8, "BLOCKED"

    const/4 v10, 0x4

    const-string v11, "Blocked number"

    invoke-direct {v7, v8, v10, v11}, Lcom/callapp/contacts/model/ReminderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/callapp/contacts/model/ReminderType;->BLOCKED:Lcom/callapp/contacts/model/ReminderType;

    .line 10
    new-instance v8, Lcom/callapp/contacts/model/ReminderType;

    const-string v11, "BLOCKED_RULE"

    const/4 v12, 0x5

    const-string v13, "Blocked rule"

    invoke-direct {v8, v11, v12, v13}, Lcom/callapp/contacts/model/ReminderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/callapp/contacts/model/ReminderType;->BLOCKED_RULE:Lcom/callapp/contacts/model/ReminderType;

    .line 11
    new-instance v11, Lcom/callapp/contacts/model/ReminderType;

    const-string v13, "SPAM"

    const/4 v14, 0x6

    const-string v15, "Spam number"

    invoke-direct {v11, v13, v14, v15}, Lcom/callapp/contacts/model/ReminderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/callapp/contacts/model/ReminderType;->SPAM:Lcom/callapp/contacts/model/ReminderType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/callapp/contacts/model/ReminderType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v9

    aput-object v7, v13, v10

    aput-object v8, v13, v12

    aput-object v11, v13, v14

    .line 4
    sput-object v13, Lcom/callapp/contacts/model/ReminderType;->$VALUES:[Lcom/callapp/contacts/model/ReminderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/callapp/contacts/model/ReminderType;->title:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/ReminderType;
    .locals 1

    .line 4
    const-class v0, Lcom/callapp/contacts/model/ReminderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/ReminderType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/model/ReminderType;
    .locals 1

    .line 4
    sget-object v0, Lcom/callapp/contacts/model/ReminderType;->$VALUES:[Lcom/callapp/contacts/model/ReminderType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/model/ReminderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/model/ReminderType;

    return-object v0
.end method
