.class public Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateTexts"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->a:Ljava/lang/String;

    .line 379
    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->b:Ljava/lang/String;

    .line 380
    iput-object p3, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStartDay()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getToday()Ljava/lang/String;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/ui/BaseInsightsFragment$DateTexts;->c:Ljava/lang/String;

    return-object v0
.end method
