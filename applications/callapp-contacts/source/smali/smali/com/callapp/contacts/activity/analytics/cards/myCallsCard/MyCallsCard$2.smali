.class Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsAdapter$onUnlockClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->setAdapters(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$MyCallsCardHolder;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard$2;->a:Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/cards/myCallsCard/MyCallsCard;->setDefaultDialer()V

    return-void
.end method
