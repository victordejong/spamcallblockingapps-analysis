.class public Lcom/callapp/contacts/widget/MultipleTitleLinesSwitchPreference;
.super Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 31
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 32
    check-cast p1, Landroid/view/ViewGroup;

    .line 33
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 34
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/widget/MultipleTitleLinesSwitchPreference;->a(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 36
    :cond_1
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 37
    check-cast p1, Landroid/widget/TextView;

    .line 38
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/settings/CustomSwitchPreference;->onBindView(Landroid/view/View;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/MultipleTitleLinesSwitchPreference;->a(Landroid/view/View;)V

    return-void
.end method
