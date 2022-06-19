.class public final enum Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InsightsPremuimDialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

.field public static final enum ADVANCED:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

.field public static final enum CONFIRM:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

.field public static final enum MASTER:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 30
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    const-string v1, "ADVANCED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;->ADVANCED:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    const-string v3, "MASTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;->MASTER:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    const-string v5, "CONFIRM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;->CONFIRM:Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 29
    sput-object v5, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;->$VALUES:[Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;
    .locals 1

    .line 29
    const-class v0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;
    .locals 1

    .line 29
    sget-object v0, Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;->$VALUES:[Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/analytics/cards/InsightsPremuimDialog$InsightsPremuimDialogType;

    return-object v0
.end method
