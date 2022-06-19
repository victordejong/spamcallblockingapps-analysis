.class public Lcom/callapp/contacts/widget/RatingView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/RatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/RatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x5

    new-array p1, p1, [Landroid/widget/ImageView;

    .line 20
    iput-object p1, p0, Lcom/callapp/contacts/widget/RatingView;->a:[Landroid/widget/ImageView;

    .line 1037
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/RatingView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0d0304

    invoke-static {p2, p3, p0}, Lcom/callapp/contacts/widget/RatingView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1039
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/RatingView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f06008a

    invoke-static {p2, p3}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    const p2, 0x7f0a071c

    .line 1041
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/RatingView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const p2, 0x7f0a071d

    .line 1042
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/RatingView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const/4 p3, 0x1

    aput-object p2, p1, p3

    const p2, 0x7f0a071e

    .line 1043
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/RatingView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const/4 p3, 0x2

    aput-object p2, p1, p3

    const p2, 0x7f0a071f

    .line 1044
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/RatingView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const p2, 0x7f0a0720

    .line 1045
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/RatingView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const/4 p3, 0x4

    aput-object p2, p1, p3

    return-void
.end method


# virtual methods
.method public setRating(D)V
    .locals 7

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_2

    .line 54
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x0

    :goto_0
    const v2, 0x7f060088

    if-ge v1, v0, :cond_1

    .line 58
    iget-object v3, p0, Lcom/callapp/contacts/widget/RatingView;->a:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    const v4, 0x7f0804a4

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v2, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v3, v4, v5}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    int-to-double v3, v0

    cmpg-double v0, v3, p1

    if-gez v0, :cond_2

    .line 62
    iget-object p1, p0, Lcom/callapp/contacts/widget/RatingView;->a:[Landroid/widget/ImageView;

    add-int/lit8 p2, v1, 0x1

    aget-object p1, p1, v1

    const v0, 0x7f0804a5

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    move v1, p2

    :cond_2
    :goto_1
    const/4 p1, 0x5

    if-ge v1, p1, :cond_3

    .line 66
    iget-object p1, p0, Lcom/callapp/contacts/widget/RatingView;->a:[Landroid/widget/ImageView;

    aget-object p1, p1, v1

    const p2, 0x7f0804a3

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p1, p2, v0}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 51
    :cond_4
    :goto_2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot initiate view with rating="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "RatingView"

    invoke-static {p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method
