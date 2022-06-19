.class Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->setOnClickListener(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

.field final synthetic b:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$1;->b:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$1;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$1;->b:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->a(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;)Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$OnProfilePictureListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$1;->b:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;->a(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder;)Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$OnProfilePictureListener;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$1;->a:Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItemHolder$OnProfilePictureListener;->a(Lcom/callapp/contacts/activity/callappplus/daySummary/CallAppPlusSummaryItem;)V

    :cond_0
    return-void
.end method
