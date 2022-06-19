.class public final enum Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrequentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

.field public static final enum ALWAYS:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

.field public static final enum DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

.field public static final enum DONT_SHOW:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

.field public static final enum SHOW_LESS:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 25
    new-instance v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    const-string v3, "always"

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->ALWAYS:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    .line 26
    new-instance v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    const-string v3, "SHOW_LESS"

    const/4 v4, 0x1

    const-string v5, "show_less"

    invoke-direct {v1, v3, v4, v5}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->SHOW_LESS:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    .line 27
    new-instance v3, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    const-string v5, "DONT_SHOW"

    const/4 v6, 0x2

    const-string v7, "dont_show"

    invoke-direct {v3, v5, v6, v7}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DONT_SHOW:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    .line 28
    new-instance v5, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    const-string v9, "delete"

    invoke-direct {v5, v7, v8, v9}, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->DELETE:Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 24
    sput-object v7, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->$VALUES:[Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->type:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;
    .locals 1

    .line 24
    const-class v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;
    .locals 1

    .line 24
    sget-object v0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->$VALUES:[Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;

    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/model/objectbox/CallReminderFrequentData$FrequentType;->type:Ljava/lang/String;

    return-object v0
.end method
