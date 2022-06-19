.class public final Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$createScroller$1;
.super Landroidx/recyclerview/widget/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/RecyclerView$r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0014J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0014\u00a8\u0006\u000e"
    }
    d2 = {
        "com/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$createScroller$1",
        "Landroidx/recyclerview/widget/LinearSmoothScroller;",
        "calculateSpeedPerPixel",
        "",
        "displayMetrics",
        "Landroid/util/DisplayMetrics;",
        "onTargetFound",
        "",
        "targetView",
        "Landroid/view/View;",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "action",
        "Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;",
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
.field final synthetic f:Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;

.field final synthetic n:Landroidx/recyclerview/widget/RecyclerView$i;

.field final synthetic o:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;Landroidx/recyclerview/widget/RecyclerView$i;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$i;",
            "Landroid/content/Context;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$createScroller$1;->f:Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$createScroller$1;->n:Landroidx/recyclerview/widget/RecyclerView$i;

    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$createScroller$1;->o:Landroid/content/Context;

    invoke-direct {p0, p4}, Landroidx/recyclerview/widget/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/DisplayMetrics;)F
    .locals 1

    const-string v0, "displayMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public final a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$s;Landroidx/recyclerview/widget/RecyclerView$r$a;)V
    .locals 3

    const-string v0, "targetView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "action"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$createScroller$1;->f:Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$createScroller$1;->n:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p2, v0, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 66
    aget p2, p1, p2

    const/4 v0, 0x1

    .line 67
    aget p1, p1, v0

    .line 68
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$createScroller$1;->a(I)I

    move-result v1

    const/16 v2, 0xc8

    .line 69
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$createScroller$1;->b:Landroid/view/animation/DecelerateInterpolator;

    check-cast v1, Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$r$a;->a(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method
