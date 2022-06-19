.class public final enum Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EdgeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

.field public static final enum EDGE_INNER:Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

.field public static final enum EDGE_OUTER:Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 106
    new-instance v0, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    const-string v1, "EDGE_INNER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;->EDGE_INNER:Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    .line 107
    new-instance v1, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    const-string v3, "EDGE_OUTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;->EDGE_OUTER:Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 104
    sput-object v3, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;->$VALUES:[Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;
    .locals 1

    .line 104
    const-class v0, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;
    .locals 1

    .line 104
    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;->$VALUES:[Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/analytics/graph/charts/EdgeDetail$EdgeType;

    return-object v0
.end method
