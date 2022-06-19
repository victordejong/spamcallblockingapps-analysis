.class public final enum Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

.field public static final enum BLOCK:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

.field public static final enum EMPTY:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

.field public static final enum REGULAR:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    const-string v1, "REGULAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;->REGULAR:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    new-instance v1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    const-string v3, "EMPTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;->EMPTY:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    new-instance v3, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    const-string v5, "BLOCK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;->BLOCK:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 13
    sput-object v5, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;->$VALUES:[Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;
    .locals 1

    .line 13
    const-class v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;
    .locals 1

    .line 13
    sget-object v0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;->$VALUES:[Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsGridItem$STATE;

    return-object v0
.end method
