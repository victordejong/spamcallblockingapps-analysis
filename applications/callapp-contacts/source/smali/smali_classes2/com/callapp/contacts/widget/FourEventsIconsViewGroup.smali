.class public Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance p1, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;-><init>(Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->a:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;

    .line 34
    invoke-direct {p0}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p1, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;-><init>(Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->a:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;

    .line 29
    invoke-direct {p0}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    new-instance p1, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;-><init>(Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->a:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;

    .line 24
    invoke-direct {p0}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d016a

    invoke-static {v0, v1, p0}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public setEventIcon(II)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->setEventIcon(III)V

    return-void
.end method

.method public setEventIcon(III)V
    .locals 2

    if-nez p2, :cond_0

    .line 116
    iget-object v0, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->a:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;

    invoke-static {v0}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->a(Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;)[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->isViewInflated(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->a:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;

    invoke-static {v0}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->a(Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;)[I

    move-result-object v1

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 122
    invoke-static {p1, p2, v0}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    if-eqz p3, :cond_1

    .line 124
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    const/16 p2, 0x8

    .line 126
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setIconsToEvents([I)V
    .locals 2

    if-eqz p1, :cond_2

    .line 101
    array-length v0, p1

    iget-object v1, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->a:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;

    invoke-static {v1}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->a(Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;)[I

    move-result-object v1

    array-length v1, v1

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 107
    aget v1, p1, v0

    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->setEventIcon(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 102
    :cond_2
    :goto_1
    const-class p1, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;

    const-string v0, "Incorrect drawables array size"

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->a:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;

    const v1, 0x7f0a0091

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->setLazyTag(ILjava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->a:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;

    const v1, 0x7f0a0092

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->setLazyTag(ILjava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->a:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;

    const v1, 0x7f0a0093

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->setLazyTag(ILjava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup;->a:Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;

    const v1, 0x7f0a0094

    invoke-virtual {v0, v1, p1}, Lcom/callapp/contacts/widget/FourEventsIconsViewGroup$LazyInflatedViews;->setLazyTag(ILjava/lang/Object;)V

    return-void
.end method
