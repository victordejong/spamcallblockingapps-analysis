.class Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;

.field final synthetic b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$1;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$1;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 103
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const/4 p1, 0x0

    new-array v6, p1, [Ljava/lang/String;

    const-string v1, "Optimize contacts"

    const-string v2, "Contact Opt. card "

    const-string v3, "Dismiss"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$1;->a:Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;

    iget-object v0, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder$1;->b:Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsAdapter$OnIdentifyContactClickListener;->b(I)V

    return-void
.end method
