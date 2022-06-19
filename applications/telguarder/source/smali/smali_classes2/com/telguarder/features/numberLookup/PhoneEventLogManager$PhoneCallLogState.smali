.class public final enum Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;
.super Ljava/lang/Enum;
.source "PhoneEventLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/numberLookup/PhoneEventLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneCallLogState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

.field public static final enum EMPTY:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

.field public static final enum LOADED:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

.field public static final enum LOADING:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 66
    new-instance v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;->EMPTY:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    new-instance v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    const-string v3, "LOADING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;->LOADING:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    new-instance v3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    const-string v5, "LOADED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;->LOADED:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;->$VALUES:[Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;
    .locals 1

    .line 66
    const-class v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    return-object p0
.end method

.method public static values()[Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;
    .locals 1

    .line 66
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;->$VALUES:[Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    invoke-virtual {v0}, [Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telguarder/features/numberLookup/PhoneEventLogManager$PhoneCallLogState;

    return-object v0
.end method
