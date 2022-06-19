.class Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->handleGraph(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$CustomizationCardHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;Ljava/util/List;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$4;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$4;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$4;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$1500(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$4;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCardAdapter;->setData(Ljava/util/List;)V

    return-void
.end method
