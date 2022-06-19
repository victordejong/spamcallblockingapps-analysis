.class public final enum Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/event/EventBusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallAppDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum BLOCK:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum CALL:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum CALLAPP_PLUS_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum CALL_RECORDERS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum CALL_RECORDING_LAST_SHOWN_MESSAGE_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum CALL_RECORD_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum FAVORITES:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum HANG_UP:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum IDENTIFIED_CONTACTS_DATA_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum IDENTIFY_CONTACTS_FINISHED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum INSIGHTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum LAST_SEEN_CALL_LOG_TIMESTAMP:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum MARKET_ITEM_ADDED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum NETWORK_DATA_CONNECTIVITY_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum OVERLAY_LINK_CLICKED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum RECENT_CALLS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum REFRESH_SEARCH:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum REMINDER:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum SET_AS_DEFAULT_PHONE:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum SIM_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum SPAM_CALL_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum SUPER_SKIN_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

.field public static final enum UNSET_INCOGNITO:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;


# instance fields
.field public isObserverOriginated:Z

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 10
    new-instance v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v1, "CONTACTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CONTACTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 11
    new-instance v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v3, "FAVORITES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->FAVORITES:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 12
    new-instance v3, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v5, "BLOCK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->BLOCK:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 13
    new-instance v5, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v7, "RECENT_CALLS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->RECENT_CALLS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 15
    new-instance v7, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v9, "SIM_CHANGED"

    const/4 v10, 0x4

    const/4 v11, 0x5

    invoke-direct {v7, v9, v10, v11}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->SIM_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 16
    new-instance v9, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v10, "CALL"

    const/4 v12, 0x6

    invoke-direct {v9, v10, v11, v12}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 17
    new-instance v10, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v13, "REMINDER"

    const/4 v14, 0x7

    invoke-direct {v10, v13, v12, v14}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->REMINDER:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 18
    new-instance v13, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v15, "REFRESH_SEARCH"

    const/16 v12, 0x8

    invoke-direct {v13, v15, v14, v12}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->REFRESH_SEARCH:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 19
    new-instance v15, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v14, "CALL_RECORDERS"

    const/16 v11, 0x9

    invoke-direct {v15, v14, v12, v11}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL_RECORDERS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 20
    new-instance v14, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v12, "CALL_RECORD_CHANGED"

    const/16 v8, 0xa

    invoke-direct {v14, v12, v11, v8}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL_RECORD_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 21
    new-instance v12, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v11, "IDENTIFY_CONTACTS_FINISHED"

    const/16 v6, 0xb

    invoke-direct {v12, v11, v8, v6}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->IDENTIFY_CONTACTS_FINISHED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 22
    new-instance v11, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v8, "OVERLAY_LINK_CLICKED"

    const/16 v4, 0xc

    invoke-direct {v11, v8, v6, v4}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->OVERLAY_LINK_CLICKED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 23
    new-instance v8, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v6, "LAST_SEEN_CALL_LOG_TIMESTAMP"

    const/16 v2, 0xd

    invoke-direct {v8, v6, v4, v2}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->LAST_SEEN_CALL_LOG_TIMESTAMP:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 24
    new-instance v6, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v4, "CALLAPP_PLUS_UNREAD_COUNT_CHANGED"

    move-object/from16 v16, v8

    const/16 v8, 0xe

    invoke-direct {v6, v4, v2, v8}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALLAPP_PLUS_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 25
    new-instance v4, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v2, "MARKET_ITEM_ADDED"

    move-object/from16 v17, v6

    const/16 v6, 0xf

    invoke-direct {v4, v2, v8, v6}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->MARKET_ITEM_ADDED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 26
    new-instance v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v8, "CALL_RECORDING_LAST_SHOWN_MESSAGE_CHANGED"

    move-object/from16 v18, v4

    const/16 v4, 0x10

    invoke-direct {v2, v8, v6, v4}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->CALL_RECORDING_LAST_SHOWN_MESSAGE_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 27
    new-instance v8, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v6, "SPAM_CALL_UNREAD_COUNT_CHANGED"

    move-object/from16 v19, v2

    const/16 v2, 0x11

    invoke-direct {v8, v6, v4, v2}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->SPAM_CALL_UNREAD_COUNT_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 28
    new-instance v6, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v4, "IDENTIFIED_CONTACTS_DATA_CHANGED"

    move-object/from16 v20, v8

    const/16 v8, 0x12

    invoke-direct {v6, v4, v2, v8}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->IDENTIFIED_CONTACTS_DATA_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 29
    new-instance v4, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v2, "HANG_UP"

    move-object/from16 v21, v6

    const/16 v6, 0x13

    invoke-direct {v4, v2, v8, v6}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->HANG_UP:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 30
    new-instance v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v8, "SET_AS_DEFAULT_PHONE"

    move-object/from16 v22, v4

    const/16 v4, 0x14

    invoke-direct {v2, v8, v6, v4}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->SET_AS_DEFAULT_PHONE:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 31
    new-instance v8, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v6, "SUPER_SKIN_CHANGED"

    move-object/from16 v23, v2

    const/16 v2, 0x15

    invoke-direct {v8, v6, v4, v2}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->SUPER_SKIN_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 32
    new-instance v6, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v4, "NETWORK_DATA_CONNECTIVITY_CHANGED"

    move-object/from16 v24, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v2, v8}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->NETWORK_DATA_CONNECTIVITY_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 33
    new-instance v4, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v2, "UNSET_INCOGNITO"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v4, v2, v8, v6}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->UNSET_INCOGNITO:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 34
    new-instance v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const-string v6, "INSIGHTS"

    const/16 v8, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x18

    invoke-direct {v2, v6, v8, v4}, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->INSIGHTS:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    new-array v4, v4, [Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v10, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v11, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v2, v4, v0

    .line 9
    sput-object v4, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->$VALUES:[Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->isObserverOriginated:Z

    .line 40
    iput p3, p0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;
    .locals 1

    .line 9
    const-class v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;
    .locals 1

    .line 9
    sget-object v0, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->$VALUES:[Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    return-object v0
.end method
