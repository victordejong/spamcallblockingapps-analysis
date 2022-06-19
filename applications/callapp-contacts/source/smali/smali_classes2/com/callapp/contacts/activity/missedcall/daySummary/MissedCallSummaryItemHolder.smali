.class public Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;
.super Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$OnProfilePictureListener;
    }
.end annotation


# instance fields
.field s:Lcom/callapp/contacts/widget/ProfilePictureView;

.field t:Landroidx/appcompat/widget/AppCompatTextView;

.field u:Landroidx/appcompat/widget/AppCompatImageView;

.field v:Landroid/widget/TextView;

.field private w:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$OnProfilePictureListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$OnProfilePictureListener;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/base/BaseCallAppViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a06ed

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    const v0, 0x7f0a0613

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->v:Landroid/widget/TextView;

    const v0, 0x7f0a0117

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const v0, 0x7f0a0152

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->u:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f0a0153

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->t:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    iput-object p2, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->w:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$OnProfilePictureListener;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;)Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$OnProfilePictureListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->w:Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$OnProfilePictureListener;

    return-object p0
.end method


# virtual methods
.method setOnClickListener(Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;->s:Lcom/callapp/contacts/widget/ProfilePictureView;

    new-instance v1, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder$1;-><init>(Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItemHolder;Lcom/callapp/contacts/activity/missedcall/daySummary/MissedCallSummaryItem;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
