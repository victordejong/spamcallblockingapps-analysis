.class public Lcom/callapp/contacts/activity/missedcall/missedAnswer/SingleMissedCallItemView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/missedcall/missedAnswer/SingleMissedCallItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/activity/missedcall/missedAnswer/SingleMissedCallItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1034
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/missedcall/missedAnswer/SingleMissedCallItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0d01f2

    invoke-static {p1, p2, p0}, Lcom/callapp/contacts/activity/missedcall/missedAnswer/SingleMissedCallItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f0a0691

    .line 1035
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/missedcall/missedAnswer/SingleMissedCallItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/activity/missedcall/missedAnswer/SingleMissedCallItemView;->a:Landroid/widget/TextView;

    const p2, 0x7f060088

    .line 1036
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
