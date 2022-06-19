.class public final Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;,
        Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/lifecycle/u<",
        "Ljava/util/List<",
        "+",
        "Lcom/callapp/contacts/model/invites/ReferAndEarnData;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \'2\u00020\u00012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002:\u0002\'(B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\u00162\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u0016J$\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0008\u0010$\u001a\u00020\u0016H\u0016J\u001a\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u001d2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u000eX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;",
        "Landroidx/fragment/app/Fragment;",
        "Landroidx/lifecycle/Observer;",
        "",
        "Lcom/callapp/contacts/model/invites/ReferAndEarnData;",
        "()V",
        "_binding",
        "Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;",
        "binding",
        "getBinding",
        "()Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;",
        "jsonReferAndEarnRewards",
        "Lcom/callapp/common/model/json/JSONReferAndEarnRewards;",
        "trophyViewType",
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;",
        "getTrophyViewType",
        "()Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;",
        "setTrophyViewType",
        "(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;)V",
        "viewModel",
        "Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;",
        "changeTextViewPosition",
        "",
        "onAttach",
        "context",
        "Landroid/content/Context;",
        "onChanged",
        "referAndEarnList",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "onViewCreated",
        "view",
        "Companion",
        "TrophyViewType",
        "callapp-client_playRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$Companion;


# instance fields
.field public a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;

.field private c:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/common/model/json/JSONReferAndEarnRewards;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->b:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->d:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic a(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->c:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;Ljava/util/List;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->d:Ljava/util/List;

    return-void
.end method

.method public static final synthetic b(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->getBinding()Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;
    .locals 1

    .line 31
    iget-object p0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->c:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnViewModel;

    if-nez p0, :cond_0

    const-string v0, "viewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final getBinding()Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->e:Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final getTrophyViewType()Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;

    if-nez v0, :cond_0

    const-string v1, "trophyViewType"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "extra_trophy_view"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;->valueOf(Ljava/lang/String;)Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;

    :cond_1
    return-void
.end method

.method public final synthetic onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 31
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 1181
    check-cast p1, Ljava/lang/Iterable;

    .line 1195
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1196
    check-cast v2, Lcom/callapp/contacts/model/invites/ReferAndEarnData;

    .line 1181
    invoke-virtual {v2}, Lcom/callapp/contacts/model/invites/ReferAndEarnData;->getEarnedPoints()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    int-to-float p1, v1

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-nez v1, :cond_1

    .line 1183
    sget-object v1, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager;->Companion:Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/invites/ReferAndEarnDataManager$Companion;->addSelfPoint()V

    .line 1185
    :cond_1
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->getBinding()Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->e:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    const-string v2, "binding.referAndEarnProgress"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setProgress(F)V

    .line 1186
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->getBinding()Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->a:Landroid/widget/TextView;

    const-string v2, "binding.earnedTextView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1187
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->ht:Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/IntegerPref;->set(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {p1, p2}, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->e:Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    .line 46
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->getBinding()Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    .line 73
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 74
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->getBinding()Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->e:Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->setOnProgressChangedListener(Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$a;)V

    .line 75
    iput-object v1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->e:Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1167
    iget-object p1, p0, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->a:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;

    if-nez p1, :cond_0

    const-string p2, "trophyViewType"

    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    sget-object p2, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;->MINIMAL:Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$TrophyViewType;

    if-ne p1, p2, :cond_1

    .line 1168
    new-instance p1, Landroidx/constraintlayout/widget/c;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 1169
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->getBinding()Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1170
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->getBinding()Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->c:Landroid/widget/LinearLayout;

    const-string v0, "binding.pointsTextContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getId()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p1, p2, v1, v2}, Landroidx/constraintlayout/widget/c;->a(III)V

    .line 1171
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->getBinding()Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->c:Landroid/widget/LinearLayout;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getId()I

    move-result p2

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/widget/c;->a(II)V

    .line 1173
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->getBinding()Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->f:Landroid/widget/RelativeLayout;

    const-string v2, "binding.referAndEarnProgressLayout"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getId()I

    move-result p2

    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->getBinding()Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->c:Landroid/widget/LinearLayout;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-virtual {p1, p2, v0, v1}, Landroidx/constraintlayout/widget/c;->a(III)V

    .line 1174
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->getBinding()Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->f:Landroid/widget/RelativeLayout;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getId()I

    move-result p2

    invoke-virtual {p1, p2, v1}, Landroidx/constraintlayout/widget/c;->a(II)V

    .line 1175
    invoke-direct {p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;->getBinding()Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/ReferAndEarnTrophyViewBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 81
    :cond_1
    new-instance p1, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;-><init>(Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView;)V

    .line 162
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/referandearn/ReferAndEarnTrophyView$onViewCreated$1;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method
