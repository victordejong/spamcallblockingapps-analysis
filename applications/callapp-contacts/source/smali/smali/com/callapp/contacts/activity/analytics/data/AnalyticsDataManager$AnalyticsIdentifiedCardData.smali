.class public Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnalyticsIdentifiedCardData"
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:F


# direct methods
.method public constructor <init>(JIF)V
    .locals 0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-wide p1, p0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->a:J

    .line 336
    iput p3, p0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->b:I

    .line 337
    iput p4, p0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->c:F

    return-void
.end method


# virtual methods
.method public getPercent()F
    .locals 1

    .line 349
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->c:F

    return v0
.end method

.method public getTotalIdentifiedCalls()J
    .locals 2

    .line 341
    iget-wide v0, p0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->a:J

    return-wide v0
.end method

.method public getTotalIdentifiedContacts()I
    .locals 1

    .line 345
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/data/AnalyticsDataManager$AnalyticsIdentifiedCardData;->b:I

    return v0
.end method
