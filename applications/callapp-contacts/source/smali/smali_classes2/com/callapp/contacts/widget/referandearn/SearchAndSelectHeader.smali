.class public final Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeader;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J$\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0014\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeader;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "_binding",
        "Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;",
        "binding",
        "getBinding",
        "()Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;",
        "setData",
        "",
        "title",
        "",
        "subtitle",
        "imageUrl",
        "setSubtitle",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private a:Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeader;->a:Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 15
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getBinding()Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeader;->a:Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic setData$default(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 26
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeader;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeader;->getBinding()Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;->c:Landroid/widget/TextView;

    .line 28
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f060088

    .line 29
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeader;->getBinding()Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;->b:Landroid/widget/TextView;

    .line 32
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0601ec

    .line 33
    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p3, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeader;->getBinding()Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;->a:Lcom/callapp/contacts/widget/RoundedCornersImageView;

    const-string p2, "binding.searchAndSelectHeaderImage"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/RoundedCornersImageView;->setVisibility(I)V

    .line 37
    new-instance p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeader;->getBinding()Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;->a:Lcom/callapp/contacts/widget/RoundedCornersImageView;

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p2, p3, v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/high16 p2, 0x41300000    # 11.0f

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result p2

    float-to-int p2, p2

    sget-object p3, Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;->ALL:Lcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;

    invoke-virtual {p1, p2, p3}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->a(ILcom/callapp/contacts/util/glide/RoundedCornersTransformation$CornerType;)Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    move-result-object p1

    const/4 p2, 0x1

    .line 1359
    iput-boolean p2, p1, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->s:Z

    .line 37
    invoke-virtual {p1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    :cond_0
    return-void
.end method

.method public final setSubtitle(Ljava/lang/String;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectHeader;->getBinding()Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectHeaderBinding;->b:Landroid/widget/TextView;

    const-string v1, "binding.searchAndSelectSubTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
