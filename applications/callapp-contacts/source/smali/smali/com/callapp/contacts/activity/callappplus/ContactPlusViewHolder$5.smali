.class Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;

.field final synthetic b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

.field final synthetic c:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$5;->c:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$5;->a:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;

    iput-object p3, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$5;->b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    .line 250
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 251
    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$5;->a:Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$5;->b:Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;

    invoke-interface {v0, p1, v1}, Lcom/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents;->a(Landroid/content/Context;Lcom/callapp/contacts/activity/callappplus/CallAppPlusData;)V

    .line 252
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object p1

    const-string v0, "CallAppPlus"

    const-string v1, "ClickAddToContact"

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
