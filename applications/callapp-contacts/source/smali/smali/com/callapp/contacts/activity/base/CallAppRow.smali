.class public Lcom/callapp/contacts/activity/base/CallAppRow;
.super Lcom/callapp/contacts/activity/base/BaseSwipeView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/base/CallAppRow$Builder;
    }
.end annotation


# instance fields
.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/base/BaseSwipeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    invoke-static {}, Lcom/callapp/contacts/activity/base/CallAppRow;->isPageSwipeEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/CallAppRow;->o:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/base/CallAppViewTypes;Lcom/callapp/contacts/activity/base/CallAppViewTypes;Lcom/callapp/contacts/activity/base/CallAppViewTypes;)V
    .locals 5

    .line 39
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->a()V

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->setLongClickable(Z)V

    const v0, 0x7f0a020b

    .line 41
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a056a

    .line 42
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f0a075c

    .line 43
    invoke-virtual {p0, v2}, Lcom/callapp/contacts/activity/base/CallAppRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->getLayoutResId()I

    move-result p1

    invoke-virtual {v4, p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_0
    if-eqz p2, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->getLayoutResId()I

    move-result p2

    invoke-virtual {p1, p2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_1
    if-eqz p3, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/base/CallAppRow;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p3}, Lcom/callapp/contacts/activity/base/CallAppViewTypes;->getLayoutResId()I

    move-result p2

    invoke-virtual {p1, p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_2
    const p1, 0x7f0601f1

    .line 58
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/CallAppRow;->setBackgroundColor(I)V

    return-void
.end method

.method public getLayoutResId()I
    .locals 1

    const v0, 0x7f0d02dc

    return v0
.end method

.method public isSwipeable()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/base/CallAppRow;->o:Z

    return v0
.end method

.method public setSwipeable(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/base/CallAppRow;->o:Z

    return-void
.end method
