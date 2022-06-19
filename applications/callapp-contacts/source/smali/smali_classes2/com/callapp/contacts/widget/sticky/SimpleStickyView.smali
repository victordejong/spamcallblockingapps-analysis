.class public final Lcom/callapp/contacts/widget/sticky/SimpleStickyView;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J&\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0007R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/sticky/SimpleStickyView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "_binding",
        "Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;",
        "binding",
        "getBinding",
        "()Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;",
        "setData",
        "",
        "title",
        "",
        "buttonText",
        "image",
        "backgroundResource",
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
.field private a:Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/widget/sticky/SimpleStickyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/widget/sticky/SimpleStickyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/sticky/SimpleStickyView;->a:Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;

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

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/sticky/SimpleStickyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getBinding()Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/callapp/contacts/widget/sticky/SimpleStickyView;->a:Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final setData(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/callapp/contacts/widget/sticky/SimpleStickyView;->getBinding()Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;->d:Landroid/widget/TextView;

    const-string v1, "binding.stickyTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-direct {p0}, Lcom/callapp/contacts/widget/sticky/SimpleStickyView;->getBinding()Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;->b:Landroid/widget/TextView;

    const-string v0, "binding.stickyButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-direct {p0}, Lcom/callapp/contacts/widget/sticky/SimpleStickyView;->getBinding()Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    invoke-direct {p0}, Lcom/callapp/contacts/widget/sticky/SimpleStickyView;->getBinding()Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/LayoutStickyRecorderTestBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackgroundResource(I)V

    return-void
.end method
