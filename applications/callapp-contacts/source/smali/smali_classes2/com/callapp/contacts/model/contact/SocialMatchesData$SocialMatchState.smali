.class public final enum Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/model/contact/SocialMatchesData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SocialMatchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

.field public static final enum AUTO_SELECT:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

.field public static final enum HIDE:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

.field public static final enum MULTI_MATCH:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

.field public static final enum NOT_CONNECTED:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

.field public static final enum PLACES_SURE:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

.field public static final enum SEARCHING:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

.field public static final enum SURE:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

.field public static final enum UNKNOWN:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

.field public static final enum UNSURE:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 120
    new-instance v0, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    const-string v1, "SEARCHING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->SEARCHING:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    .line 121
    new-instance v1, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    const-string v3, "NOT_CONNECTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->NOT_CONNECTED:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    .line 122
    new-instance v3, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->UNKNOWN:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    .line 123
    new-instance v5, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    const-string v7, "SURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->SURE:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    .line 124
    new-instance v7, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    const-string v9, "UNSURE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->UNSURE:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    .line 125
    new-instance v9, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    const-string v11, "MULTI_MATCH"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->MULTI_MATCH:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    .line 126
    new-instance v11, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    const-string v13, "PLACES_SURE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->PLACES_SURE:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    .line 127
    new-instance v13, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    const-string v15, "AUTO_SELECT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->AUTO_SELECT:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    .line 128
    new-instance v15, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    const-string v14, "HIDE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->HIDE:Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    const/16 v14, 0x9

    new-array v14, v14, [Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    .line 119
    sput-object v14, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->$VALUES:[Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;
    .locals 1

    .line 119
    const-class v0, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;
    .locals 1

    .line 119
    sget-object v0, Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->$VALUES:[Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    invoke-virtual {v0}, [Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/model/contact/SocialMatchesData$SocialMatchState;

    return-object v0
.end method
