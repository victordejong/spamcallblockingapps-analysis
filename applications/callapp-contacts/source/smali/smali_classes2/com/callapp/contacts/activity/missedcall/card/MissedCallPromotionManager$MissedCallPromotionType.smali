.class public final enum Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MissedCallPromotionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

.field public static final enum CALL_REMINDER:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

.field public static final enum CALL_SCREEN:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

.field public static final enum CONFIG:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

.field public static final enum NOTE:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 19
    new-instance v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    const-string v1, "CALL_SCREEN"

    const/4 v2, 0x0

    const-string v3, "call_screen"

    invoke-direct {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->CALL_SCREEN:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    .line 20
    new-instance v1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    const-string v3, "CALL_REMINDER"

    const/4 v4, 0x1

    const-string v5, "call_reminder"

    invoke-direct {v1, v3, v4, v5}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->CALL_REMINDER:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    .line 21
    new-instance v3, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    const-string v5, "NOTE"

    const/4 v6, 0x2

    const-string v7, "note"

    invoke-direct {v3, v5, v6, v7}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->NOTE:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    .line 22
    new-instance v5, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    const-string v7, "CONFIG"

    const/4 v8, 0x3

    const-string v9, "config"

    invoke-direct {v5, v7, v8, v9}, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->CONFIG:Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 18
    sput-object v7, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->$VALUES:[Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;)Ljava/lang/String;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;
    .locals 1

    .line 18
    const-class v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;
    .locals 1

    .line 18
    sget-object v0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->$VALUES:[Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/card/MissedCallPromotionManager$MissedCallPromotionType;->name:Ljava/lang/String;

    return-object v0
.end method
