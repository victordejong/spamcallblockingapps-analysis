.class public final enum Lcom/callapp/contacts/action/Action$ContextType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/action/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/action/Action$ContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/action/Action$ContextType;

.field public static final enum ALL:Lcom/callapp/contacts/action/Action$ContextType;

.field public static final enum BIRTHDAY_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

.field public static final enum BLOCKED_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

.field public static final enum CALLAPP_PLUS_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

.field public static final enum CALLAPP_PLUS_STARRED_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

.field public static final enum CALL_LOG_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

.field public static final enum CALL_RECORDER_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

.field public static final enum CONTACT_DETAILS_ACTION_BOTTOM_SHEET:Lcom/callapp/contacts/action/Action$ContextType;

.field public static final enum CONTACT_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

.field public static final enum FAVORITE_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

.field public static final enum MISSED_CALL_CARD_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

.field public static final enum MISSED_CALL_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

.field public static final enum NETWORK_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

.field public static final enum NOTES_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

.field public static final enum SUMMARY_CALLAPP_PLUS:Lcom/callapp/contacts/action/Action$ContextType;

.field public static final enum WHO_VIEW_PROFILE_ITEM:Lcom/callapp/contacts/action/Action$ContextType;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 17
    new-instance v0, Lcom/callapp/contacts/action/Action$ContextType;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/action/Action$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/action/Action$ContextType;->ALL:Lcom/callapp/contacts/action/Action$ContextType;

    .line 18
    new-instance v1, Lcom/callapp/contacts/action/Action$ContextType;

    const-string v3, "CONTACT_ITEM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/action/Action$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/action/Action$ContextType;->CONTACT_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    .line 19
    new-instance v3, Lcom/callapp/contacts/action/Action$ContextType;

    const-string v5, "FAVORITE_ITEM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/action/Action$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/action/Action$ContextType;->FAVORITE_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    .line 20
    new-instance v5, Lcom/callapp/contacts/action/Action$ContextType;

    const-string v7, "BLOCKED_ITEM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/callapp/contacts/action/Action$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/callapp/contacts/action/Action$ContextType;->BLOCKED_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    .line 21
    new-instance v7, Lcom/callapp/contacts/action/Action$ContextType;

    const-string v9, "BIRTHDAY_ITEM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/callapp/contacts/action/Action$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/callapp/contacts/action/Action$ContextType;->BIRTHDAY_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    .line 22
    new-instance v9, Lcom/callapp/contacts/action/Action$ContextType;

    const-string v11, "MISSED_CALL_ITEM"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/callapp/contacts/action/Action$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/callapp/contacts/action/Action$ContextType;->MISSED_CALL_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    .line 23
    new-instance v11, Lcom/callapp/contacts/action/Action$ContextType;

    const-string v13, "NOTES_ITEM"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/callapp/contacts/action/Action$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/callapp/contacts/action/Action$ContextType;->NOTES_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    .line 24
    new-instance v13, Lcom/callapp/contacts/action/Action$ContextType;

    const-string v15, "CALL_LOG_ITEM"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/callapp/contacts/action/Action$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/callapp/contacts/action/Action$ContextType;->CALL_LOG_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    .line 25
    new-instance v15, Lcom/callapp/contacts/action/Action$ContextType;

    const-string v14, "CONTACT_DETAILS_ACTION_BOTTOM_SHEET"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/callapp/contacts/action/Action$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/callapp/contacts/action/Action$ContextType;->CONTACT_DETAILS_ACTION_BOTTOM_SHEET:Lcom/callapp/contacts/action/Action$ContextType;

    .line 26
    new-instance v14, Lcom/callapp/contacts/action/Action$ContextType;

    const-string v12, "CALL_RECORDER_ITEM"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/callapp/contacts/action/Action$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/callapp/contacts/action/Action$ContextType;->CALL_RECORDER_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    .line 27
    new-instance v12, Lcom/callapp/contacts/action/Action$ContextType;

    const-string v10, "CALLAPP_PLUS_STARRED_ITEM"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/callapp/contacts/action/Action$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/callapp/contacts/action/Action$ContextType;->CALLAPP_PLUS_STARRED_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    .line 28
    new-instance v10, Lcom/callapp/contacts/action/Action$ContextType;

    const-string v8, "CALLAPP_PLUS_ITEM"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/callapp/contacts/action/Action$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/callapp/contacts/action/Action$ContextType;->CALLAPP_PLUS_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    .line 29
    new-instance v8, Lcom/callapp/contacts/action/Action$ContextType;

    const-string v6, "NETWORK_ITEM"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/callapp/contacts/action/Action$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/callapp/contacts/action/Action$ContextType;->NETWORK_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    .line 30
    new-instance v6, Lcom/callapp/contacts/action/Action$ContextType;

    const-string v4, "MISSED_CALL_CARD_ITEM"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/callapp/contacts/action/Action$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/callapp/contacts/action/Action$ContextType;->MISSED_CALL_CARD_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    .line 31
    new-instance v4, Lcom/callapp/contacts/action/Action$ContextType;

    const-string v2, "SUMMARY_CALLAPP_PLUS"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/callapp/contacts/action/Action$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/callapp/contacts/action/Action$ContextType;->SUMMARY_CALLAPP_PLUS:Lcom/callapp/contacts/action/Action$ContextType;

    .line 32
    new-instance v2, Lcom/callapp/contacts/action/Action$ContextType;

    const-string v6, "WHO_VIEW_PROFILE_ITEM"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/callapp/contacts/action/Action$ContextType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/callapp/contacts/action/Action$ContextType;->WHO_VIEW_PROFILE_ITEM:Lcom/callapp/contacts/action/Action$ContextType;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/callapp/contacts/action/Action$ContextType;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    .line 16
    sput-object v6, Lcom/callapp/contacts/action/Action$ContextType;->$VALUES:[Lcom/callapp/contacts/action/Action$ContextType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/action/Action$ContextType;
    .locals 1

    .line 16
    const-class v0, Lcom/callapp/contacts/action/Action$ContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/action/Action$ContextType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/action/Action$ContextType;
    .locals 1

    .line 16
    sget-object v0, Lcom/callapp/contacts/action/Action$ContextType;->$VALUES:[Lcom/callapp/contacts/action/Action$ContextType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/action/Action$ContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/action/Action$ContextType;

    return-object v0
.end method
