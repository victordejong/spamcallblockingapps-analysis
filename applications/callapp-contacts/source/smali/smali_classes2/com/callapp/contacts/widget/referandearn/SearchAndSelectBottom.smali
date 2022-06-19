.class public final Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\"\u0010\u0014\u001a\u00020\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u0007R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "onActionButtonClicked",
        "Landroid/view/View$OnClickListener;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;)V",
        "_binding",
        "Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;",
        "binding",
        "getBinding",
        "()Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;",
        "getOnActionButtonClicked",
        "()Landroid/view/View$OnClickListener;",
        "setOnActionButtonClicked",
        "(Landroid/view/View$OnClickListener;)V",
        "setData",
        "",
        "text",
        "",
        "buttonText",
        "buttonColor",
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
.field private a:Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;

.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p4, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;->b:Landroid/view/View$OnClickListener;

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;->a:Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    .line 14
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final getBinding()Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;->a:Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic setData$default(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 24
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;->setData(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getOnActionButtonClicked()Landroid/view/View$OnClickListener;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final setData(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const-string v0, "buttonText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;->getBinding()Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;->c:Landroid/widget/TextView;

    const-string v1, "this"

    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0601ec

    .line 28
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    :cond_0
    sget-object p1, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew;->a:Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;

    .line 33
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;->getBinding()Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;

    move-result-object p1

    iget-object v0, p1, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;->b:Landroid/widget/TextView;

    .line 34
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const p1, 0x7f060244

    .line 35
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 36
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 p1, 0x0

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 38
    new-instance v6, Landroid/text/SpannableString;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-direct {v6, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const p1, 0x7f08058d

    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 32
    invoke-static/range {v0 .. v6}, Lcom/callapp/contacts/popup/contact/DialogMessageWithTopImageNew$Companion;->a(Landroid/widget/TextView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/text/SpannableString;)V

    .line 43
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;->getBinding()Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;->b:Landroid/widget/TextView;

    new-instance p2, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom$setData$2;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom$setData$2;-><init>(Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;->getBinding()Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/LayoutSearchAndSelectBottomBinding;->a:Landroid/view/View;

    const p2, 0x7f0805c4

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public final setOnActionButtonClicked(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/SearchAndSelectBottom;->b:Landroid/view/View$OnClickListener;

    return-void
.end method
