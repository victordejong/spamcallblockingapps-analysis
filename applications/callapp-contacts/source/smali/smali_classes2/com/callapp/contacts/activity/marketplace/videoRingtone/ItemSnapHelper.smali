.class public final Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;
.super Landroidx/recyclerview/widget/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0017\u001a\u00020\u0008H\u0016J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u0011\u001a\u00020\u0012H\u0014J\u0018\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;",
        "Landroidx/recyclerview/widget/LinearSnapHelper;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "helper",
        "Landroidx/recyclerview/widget/OrientationHelper;",
        "maxScrollDistance",
        "",
        "scroller",
        "Landroid/widget/Scroller;",
        "attachToRecyclerView",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "calculateDistanceToFinalSnap",
        "",
        "layoutManager",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "targetView",
        "Landroid/view/View;",
        "calculateScrollDistance",
        "velocityX",
        "velocityY",
        "createScroller",
        "Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;",
        "distanceToStart",
        "findFirstView",
        "findSnapView",
        "Companion",
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
.field public static final b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$Companion;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroidx/recyclerview/widget/j;

.field private e:Landroid/widget/Scroller;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->b:Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/recyclerview/widget/h;-><init>()V

    return-void
.end method

.method private final c(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->d:Landroidx/recyclerview/widget/j;

    if-nez v0, :cond_0

    .line 108
    invoke-static {p1}, Landroidx/recyclerview/widget/j;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->d:Landroidx/recyclerview/widget/j;

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->d:Landroidx/recyclerview/widget/j;

    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroid/view/View;
    .locals 8

    .line 37
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->c(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 1087
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const v3, 0x7fffffff

    .line 1092
    invoke-virtual {v0}, Landroidx/recyclerview/widget/j;->b()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    .line 1095
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$i;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1096
    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/j;->a(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v7, v4

    .line 1097
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v3, :cond_2

    move-object v1, v6

    move v3, v7

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->c:Landroid/content/Context;

    .line 28
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->c:Landroid/content/Context;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast v2, Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->e:Landroid/widget/Scroller;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->e:Landroid/widget/Scroller;

    .line 31
    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->c:Landroid/content/Context;

    .line 33
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/h;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$i;Landroid/view/View;)[I
    .locals 1

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 41
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->c(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/j;

    move-result-object p1

    .line 2079
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/j;->a(Landroid/view/View;)I

    move-result p2

    .line 2080
    invoke-virtual {p1}, Landroidx/recyclerview/widget/j;->b()I

    move-result p1

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    aput p2, v0, p1

    return-object v0
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/RecyclerView$r;
    .locals 2

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$r$b;

    if-nez v0, :cond_0

    .line 61
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/h;->b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/RecyclerView$r;

    move-result-object p1

    return-object p1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 63
    :cond_1
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$createScroller$1;

    invoke-direct {v1, p0, p1, v0, v0}, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper$createScroller$1;-><init>(Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;Landroidx/recyclerview/widget/RecyclerView$i;Landroid/content/Context;Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$r;

    return-object v1
.end method

.method public final b(II)[I
    .locals 13

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 47
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->d:Landroidx/recyclerview/widget/j;

    if-nez v2, :cond_0

    return-object v1

    .line 49
    :cond_0
    iget v3, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->f:I

    if-nez v3, :cond_1

    .line 50
    invoke-virtual {v2}, Landroidx/recyclerview/widget/j;->c()I

    move-result v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/j;->b()I

    move-result v2

    sub-int/2addr v3, v2

    div-int/2addr v3, v0

    iput v3, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->f:I

    .line 53
    :cond_1
    iget-object v4, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->e:Landroid/widget/Scroller;

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v10, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->f:I

    neg-int v9, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v7, p1

    move v8, p2

    invoke-virtual/range {v4 .. v12}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 54
    :cond_2
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->e:Landroid/widget/Scroller;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalX()I

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    aput p1, v1, p2

    const/4 p1, 0x1

    .line 55
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/videoRingtone/ItemSnapHelper;->e:Landroid/widget/Scroller;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result p2

    :cond_4
    aput p2, v1, p1

    return-object v1
.end method
