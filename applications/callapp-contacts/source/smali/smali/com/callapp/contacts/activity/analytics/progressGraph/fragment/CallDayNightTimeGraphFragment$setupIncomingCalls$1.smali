.class final Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment$setupIncomingCalls$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/akexorcist/roundcornerprogressbar/common/BaseRoundCornerProgressBar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->setupIncomingCalls(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\n\u00a2\u0006\u0002\u0008\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "progress",
        "",
        "<anonymous parameter 2>",
        "",
        "<anonymous parameter 3>",
        "onProgressChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment$setupIncomingCalls$1;->a:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;

    iput p2, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment$setupIncomingCalls$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment$setupIncomingCalls$1;->a:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getProgressIncoming()Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment$setupIncomingCalls$1;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setProgressText(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment$setupIncomingCalls$1;->a:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->a(Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;)Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->i:Landroid/widget/ImageView;

    const-string v1, "binding.nightImageIncoming"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 169
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment$setupIncomingCalls$1;->a:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->a(Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;)Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->i:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment$setupIncomingCalls$1;->a:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getProgressIncoming()Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    move-result-object v0

    const v1, 0x7f060244

    invoke-static {v1}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->setTextProgressColor(I)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment$setupIncomingCalls$1;->a:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->getProgressIncoming()Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/akexorcist/roundcornerprogressbar/TextRoundCornerProgressBar;->getMax()F

    move-result v0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_1

    .line 173
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment$setupIncomingCalls$1;->a:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->a(Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;)Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->c:Landroid/widget/TextView;

    const-string v0, "binding.dayTextIncoming"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment$setupIncomingCalls$1;->a:Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;->a(Lcom/callapp/contacts/activity/analytics/progressGraph/fragment/CallDayNightTimeGraphFragment;)Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/callapp/contacts/databinding/CallTimelineLayoutBinding;->a:Landroid/widget/ImageView;

    const-string v0, "binding.dayImageIncoming"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
