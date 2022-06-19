.class public final enum Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;
.super Ljava/lang/Enum;
.source "PhoneEventLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/numberLookup/PhoneEventLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallLogUpdateState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

.field public static final enum NOT_UPDATED:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

.field public static final enum UPDATED:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

.field public static final enum UPDATING:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 69
    new-instance v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    const-string v1, "NOT_UPDATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;->NOT_UPDATED:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    new-instance v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    const-string v3, "UPDATING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;->UPDATING:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    new-instance v3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    const-string v5, "UPDATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;->UPDATED:Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;->$VALUES:[Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;
    .locals 1

    .line 69
    const-class v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    return-object p0
.end method

.method public static values()[Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;
    .locals 1

    .line 69
    sget-object v0, Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;->$VALUES:[Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    invoke-virtual {v0}, [Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateState;

    return-object v0
.end method
