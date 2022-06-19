.class public final Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;
.super Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0014J\"\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0014R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;",
        "Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "profilePictureProgressBar",
        "Lcom/callapp/contacts/widget/ProfilePictureView;",
        "getProfilePictureProgressBar",
        "()Lcom/callapp/contacts/widget/ProfilePictureView;",
        "setProfilePictureProgressBar",
        "(Lcom/callapp/contacts/widget/ProfilePictureView;)V",
        "initLayout",
        "",
        "initView",
        "",
        "onProgressChangeAnimationUpdate",
        "layout",
        "Landroid/widget/LinearLayout;",
        "current",
        "",
        "to",
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
.field public a:Lcom/callapp/contacts/widget/ProfilePictureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final initLayout()I
    .locals 1

    const v0, 0x7f0d025b

    return v0
.end method

.method public final initView()V
    .locals 3

    .line 21
    invoke-super {p0}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->initView()V

    const v0, 0x7f0a06ea

    .line 22
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.profilePictureProgressBar)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;->a:Lcom/callapp/contacts/widget/ProfilePictureView;

    const-string v1, "profilePictureProgressBar"

    if-nez v0, :cond_0

    .line 23
    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setRotation(F)V

    .line 24
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;->a:Lcom/callapp/contacts/widget/ProfilePictureView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/ProfilePictureView;->setVisibility(I)V

    return-void
.end method

.method public final onProgressChangeAnimationUpdate(Landroid/widget/LinearLayout;FF)V
    .locals 2

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/akexorcist/roundcornerprogressbar/RoundCornerProgressBar;->onProgressChangeAnimationUpdate(Landroid/widget/LinearLayout;FF)V

    .line 32
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;->a:Lcom/callapp/contacts/widget/ProfilePictureView;

    if-nez p1, :cond_0

    const-string p3, "profilePictureProgressBar"

    invoke-static {p3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p3, 0x1

    new-array p3, p3, [F

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float p2, p2, v1

    iget v1, p0, Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;->max:F

    div-float/2addr p2, v1

    neg-float p2, p2

    aput p2, p3, v0

    const-string p2, "translationX"

    .line 31
    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0x0

    .line 36
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 37
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final setProfilePictureProgressBar(Lcom/callapp/contacts/widget/ProfilePictureView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/CallAllRoundedCornerProgressBar;->a:Lcom/callapp/contacts/widget/ProfilePictureView;

    return-void
.end method
