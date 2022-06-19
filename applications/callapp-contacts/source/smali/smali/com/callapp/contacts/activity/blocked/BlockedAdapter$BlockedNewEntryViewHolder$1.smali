.class Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder;-><init>(Lcom/callapp/contacts/activity/blocked/BlockedAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/blocked/BlockedAdapter;

.field final synthetic b:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder;Lcom/callapp/contacts/activity/blocked/BlockedAdapter;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder$1;->b:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder$1;->a:Lcom/callapp/contacts/activity/blocked/BlockedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 123
    invoke-static {}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->get()Lcom/callapp/contacts/manager/analytics/AnalyticsManager;

    move-result-object v0

    const-string v1, "Block and Spam"

    const-string v2, "Add to block"

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/analytics/AnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder$1;->b:Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedNewEntryViewHolder;->s:Lcom/callapp/contacts/activity/blocked/BlockedAdapter;

    invoke-static {v0}, Lcom/callapp/contacts/activity/blocked/BlockedAdapter;->a(Lcom/callapp/contacts/activity/blocked/BlockedAdapter;)Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/view/View;Lcom/callapp/contacts/activity/blocked/BlockedAdapter$BlockedAdapterEvents;)V

    return-void
.end method
