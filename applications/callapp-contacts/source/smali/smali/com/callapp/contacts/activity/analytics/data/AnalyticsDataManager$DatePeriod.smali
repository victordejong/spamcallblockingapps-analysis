.class public final enum Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DatePeriod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

.field public static final enum CURRENT:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

.field public static final enum PREVIOUS:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 74
    new-instance v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    const-string v1, "CURRENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->CURRENT:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    .line 75
    new-instance v1, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    const-string v3, "PREVIOUS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->PREVIOUS:Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 73
    sput-object v3, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->$VALUES:[Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;
    .locals 1

    .line 73
    const-class v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;
    .locals 1

    .line 73
    sget-object v0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->$VALUES:[Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    invoke-virtual {v0}, [Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$DatePeriod;

    return-object v0
.end method
