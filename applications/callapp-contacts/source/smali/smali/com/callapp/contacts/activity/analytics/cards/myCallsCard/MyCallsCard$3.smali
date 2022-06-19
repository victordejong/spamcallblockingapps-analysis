.class Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->setAdapters(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;Ljava/util/List;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$3;->c:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$3;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;

    iput-object p3, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$3;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$3;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$3;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter;->setItemsData(Ljava/util/List;)V

    return-void
.end method
