.class public final enum Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;
.super Ljava/lang/Enum;
.source "ArcMenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/phoneEventHistory/ArcMenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArcMenuAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

.field public static final enum BLOCK:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

.field public static final enum CALL:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

.field public static final enum DELETE:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

.field public static final enum DETAIL:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

.field public static final enum EMAIL:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

.field public static final enum REPORT:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

.field public static final enum SMS:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

.field public static final enum STAT:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 195
    new-instance v0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    const-string v1, "CALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;->CALL:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    new-instance v1, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    const-string v3, "SMS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;->SMS:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    new-instance v3, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    const-string v5, "EMAIL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;->EMAIL:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    new-instance v5, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;->DELETE:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    new-instance v7, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    const-string v9, "DETAIL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;->DETAIL:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    new-instance v9, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    const-string v11, "REPORT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;->REPORT:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    new-instance v11, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    const-string v13, "BLOCK"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;->BLOCK:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    new-instance v13, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    const-string v15, "STAT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;->STAT:Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 194
    sput-object v15, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;->$VALUES:[Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;
    .locals 1

    .line 194
    const-class v0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    return-object p0
.end method

.method public static values()[Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;
    .locals 1

    .line 194
    sget-object v0, Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;->$VALUES:[Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    invoke-virtual {v0}, [Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telguarder/features/phoneEventHistory/ArcMenuManager$ArcMenuAction;

    return-object v0
.end method
