.class public final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "_binding",
        "Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;",
        "binding",
        "getBinding",
        "()Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;",
        "setData",
        "",
        "jSONReferAndEarnRewards",
        "Lcom/callapp/common/model/json/JSONReferAndEarnRewards;",
        "trophyViewType",
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;",
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
.field private a:Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-static {p1, p2}, Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;->a:Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getBinding()Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;->a:Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final setData(Lcom/callapp/common/model/json/JSONReferAndEarnRewards;Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;)V
    .locals 5

    const-string v0, "jSONReferAndEarnRewards"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trophyViewType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;->EXPENDED:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;

    const-string v1, "binding.progressTopTitle"

    if-ne p2, v0, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;->getBinding()Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;->e:Landroid/widget/TextView;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;->getBinding()Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;->d:Landroid/widget/ImageView;

    const-string v2, "binding.progressImage"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;->getBinding()Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;->a:Landroid/widget/TextView;

    const-string v2, "binding.progressBottomSubtitle"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;->getBinding()Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "binding.progressContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    const-string v3, "CallAppApplication.get()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07035f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07035e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    :goto_0
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;->getBinding()Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;->e:Landroid/widget/TextView;

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->isMilestone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->getKey()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->getTitle()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 36
    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;->getBinding()Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;->e:Landroid/widget/TextView;

    const v0, 0x7f0601ec

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;->getBinding()Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->isMilestone()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0804ce

    goto :goto_2

    :cond_2
    const v2, 0x7f080367

    :goto_2
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->isMilestone()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 50
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->getTitle()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 51
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;->getBinding()Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;->b:Landroid/widget/TextView;

    .line 52
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    :cond_3
    invoke-virtual {p1}, Lcom/callapp/common/model/json/JSONReferAndEarnRewards;->getSubtitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 57
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;->getBinding()Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;->a:Landroid/widget/TextView;

    .line 58
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0601cc

    .line 59
    invoke-static {p1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    return-void

    .line 63
    :cond_5
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnProgress;->getBinding()Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/LayoutReferAndEarnProgressBinding;->e:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p2, 0x41000000    # 8.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method
