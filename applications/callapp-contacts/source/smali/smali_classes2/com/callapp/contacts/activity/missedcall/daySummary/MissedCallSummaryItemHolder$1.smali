.class Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->setOnClickListener(Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

.field final synthetic b:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$1;->b:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$1;->a:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$1;->b:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->a(Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;)Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$OnProfilePictureListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$1;->b:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->a(Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;)Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$OnProfilePictureListener;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$1;->a:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$OnProfilePictureListener;->a(Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;)V

    :cond_0
    return-void
.end method
