.class public final Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0008\u0010!\u001a\u00020\"H\u0016J\u001a\u0010#\u001a\u00020\"2\u0006\u0010$\u001a\u00020\u001a2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u000e\u0010%\u001a\u00020\"2\u0006\u0010&\u001a\u00020\'J\u0008\u0010(\u001a\u00020\"H\u0002J\u0010\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020\'H\u0002J\u0018\u0010+\u001a\u00020\"2\u0006\u0010,\u001a\u00020\'2\u0006\u0010-\u001a\u00020\u000fH\u0002J\u000e\u0010.\u001a\u00020\"2\u0006\u0010\u0008\u001a\u00020\tR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082D\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0011X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015\u00a8\u0006/"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;",
        "Landroidx/fragment/app/Fragment;",
        "()V",
        "_binding",
        "Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;",
        "binding",
        "getBinding",
        "()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;",
        "dataCurrent",
        "Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;",
        "getDataCurrent",
        "()Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;",
        "setDataCurrent",
        "(Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;)V",
        "minThreshold",
        "",
        "progressIncoming",
        "Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;",
        "getProgressIncoming",
        "()Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;",
        "setProgressIncoming",
        "(Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;)V",
        "progressOutgoing",
        "getProgressOutgoing",
        "setProgressOutgoing",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "",
        "onViewCreated",
        "view",
        "setHeaderVisibility",
        "visibility",
        "",
        "setUpEmpty",
        "setupIncomingCalls",
        "incomingChange",
        "setupOutgoingCalls",
        "outgoingChange",
        "progress",
        "updateData",
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
.field public final a:F

.field public b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

.field public c:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

.field public d:Lcom/callapp/contacts/activity/analytics/data/items/HoursCallDataItem;

.field private e:Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/high16 v0, 0x41f00000    # 30.0f

    .line 19
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->a:F

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;)Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->e:Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getProgressIncoming()Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->c:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v0, :cond_0

    const-string v1, "progressIncoming"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p1, p2}, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->e:Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    .line 30
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    .line 61
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 62
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->c:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v0, :cond_0

    const-string v1, "progressIncoming"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setOnProgressChangedListener(Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$a;)V

    .line 63
    iput-object v1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->e:Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->n:Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;->a:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    const-string p2, "null cannot be cast to non-null type com.akexorcist.roundcornerprogressbar.TextRoundCornerProgressBar"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    .line 37
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->m:Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallsTimelineItemBinding;->a:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->c:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    .line 38
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->l:Landroid/widget/TextView;

    const-string p2, "binding.outgoingCallTitle"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1201c1

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->e:Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;

    iget-object p1, p1, Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;->e:Landroid/widget/TextView;

    const-string v1, "binding.includeGraphsHeaderLayout.textHeader"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f1201c4

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->e:Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;

    iget-object p1, p1, Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;->e:Landroid/widget/TextView;

    const v1, 0x7f0601ec

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->e:Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;

    iget-object p1, p1, Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;->d:Landroid/widget/TextView;

    const-string v2, "binding.includeGraphsHeaderLayout.subTextHeader"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f1201c3

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->e:Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;

    iget-object p1, p1, Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;->d:Landroid/widget/TextView;

    const v2, 0x7f0601cc

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->g:Landroid/widget/TextView;

    const-string v2, "binding.incomingCallTitle"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->g:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->l:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p2, 0x7f1201c2

    invoke-static {p2}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->l:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->e:Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;

    iget-object p1, p1, Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;->c:Landroid/view/View;

    const p2, 0x7f0600f3

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public final setHeaderVisibility(I)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->e:Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;

    iget-object v0, v0, Lcom/callapp/contacts/databinding/GraphsHeaderLayoutBinding;->a:Landroid/widget/LinearLayout;

    const-string v1, "binding.includeGraphsHea\u2026rLayout.graphHeaderLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final setupIncomingCalls(I)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->c:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v0, :cond_0

    const-string v1, "progressIncoming"

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment$setupIncomingCalls$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment$setupIncomingCalls$1;-><init>(Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;I)V

    check-cast v1, Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$a;

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setOnProgressChangedListener(Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$a;)V

    .line 178
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->c:Landroid/widget/TextView;

    const-string v1, "binding.dayTextIncoming"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    rsub-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setupOutgoingCalls(IF)V
    .locals 9

    .line 116
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneManager;->get()Lcom/callapp/contacts/manager/phone/PhoneManager;

    move-result-object v0

    const-string v1, "PhoneManager.get()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneManager;->isDefaultPhoneApp()Z

    move-result v0

    const-string v1, "binding.lockImageOutgoing"

    const-string v2, "binding.dayTextOutgoing"

    const/4 v3, 0x0

    const/16 v4, 0x8

    const-string v5, "progressOutgoing"

    if-eqz v0, :cond_9

    .line 117
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v0, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->h:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->d:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v0, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x2

    new-array v6, v1, [I

    const v7, 0x7f0601bc

    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    aput v7, v6, v3

    const v7, 0x7f0601b7

    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    const/4 v8, 0x1

    aput v7, v6, v8

    invoke-virtual {v0, v6}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setProgressColors([I)V

    .line 124
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v0, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_2
    new-array v1, v1, [I

    const v6, 0x7f0601bb

    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    aput v6, v1, v3

    const v6, 0x7f0601b6

    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    aput v6, v1, v8

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setSecondaryProgressColors([I)V

    .line 126
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v0, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->getMax()F

    move-result v0

    sub-float/2addr v0, p2

    .line 127
    iget-object v1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v1, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->getMax()F

    move-result v1

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->j:Landroid/widget/ImageView;

    const-string v1, "binding.nightImageOutgoing"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 128
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->j:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v0, :cond_5

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_5
    const v1, 0x7f060244

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setTextProgressColor(I)V

    .line 131
    :cond_6
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez v0, :cond_7

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->getMax()F

    move-result v0

    cmpg-float p2, p2, v0

    if-nez p2, :cond_8

    .line 132
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->d:Landroid/widget/TextView;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->b:Landroid/widget/ImageView;

    const-string v0, "binding.dayImageOutgoing"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    :cond_8
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->d:Landroid/widget/TextView;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    rsub-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 139
    :cond_9
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez p1, :cond_a

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->disableAnimation()V

    .line 140
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez p1, :cond_b

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_b
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setProgress(F)V

    .line 141
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->d:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getBinding()Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->h:Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez p1, :cond_c

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_c
    const p2, 0x7f0601c7

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setProgressColor(I)V

    .line 146
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->b:Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    if-nez p1, :cond_d

    invoke-static {v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_d
    const p2, 0x7f060110

    invoke-static {p2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setSecondaryProgressColor(I)V

    return-void
.end method
