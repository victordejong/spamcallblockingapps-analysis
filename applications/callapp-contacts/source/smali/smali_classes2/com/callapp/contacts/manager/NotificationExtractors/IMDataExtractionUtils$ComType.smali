.class public final enum Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

.field public static final enum CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

.field public static final enum CLIPBOARD:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

.field public static final enum MISSED_CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

.field public static final enum SEARCH:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

.field public static final enum TEXT:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

.field public static final enum UNKNOWN:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 187
    new-instance v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->UNKNOWN:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    .line 188
    new-instance v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->TEXT:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    .line 189
    new-instance v3, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    const-string v5, "CALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    .line 190
    new-instance v5, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    const-string v7, "MISSED_CALL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->MISSED_CALL:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    .line 191
    new-instance v7, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    const-string v9, "SEARCH"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->SEARCH:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    .line 192
    new-instance v9, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    const-string v11, "CLIPBOARD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->CLIPBOARD:Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 185
    sput-object v11, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->$VALUES:[Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;
    .locals 1

    .line 185
    const-class v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;
    .locals 1

    .line 185
    sget-object v0, Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->$VALUES:[Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/manager/NotificationExtractors/IMDataExtractionUtils$ComType;

    return-object v0
.end method
