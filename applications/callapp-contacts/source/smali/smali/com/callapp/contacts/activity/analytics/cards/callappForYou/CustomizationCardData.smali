.class public Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->a:I

    .line 12
    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->b:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->c:Ljava/lang/String;

    .line 14
    iput p4, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->d:I

    .line 15
    iput p5, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->e:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->a:I

    return v0
.end method

.method public getMaxData()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->e:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->d:I

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardData;->b:Ljava/lang/String;

    return-object v0
.end method
