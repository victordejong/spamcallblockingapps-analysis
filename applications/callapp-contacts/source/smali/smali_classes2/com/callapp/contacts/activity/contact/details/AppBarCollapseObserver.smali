.class public Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;,
        Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;,
        Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$CoordinatorLayoutObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:F

.field private static final e:F

.field private static final f:F

.field private static final g:F

.field private static final h:F


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$CoordinatorLayoutObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->d:F

    .line 23
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->e:F

    .line 24
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/CallAppApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sput v2, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->f:F

    sub-float/2addr v1, v0

    .line 25
    sput v1, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->g:F

    sub-float/2addr v0, v2

    .line 26
    sput v0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->h:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p1, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;-><init>(Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$1;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->b:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->a:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->c:Z

    return-void
.end method

.method private a(Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;F)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->b:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->b:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;

    invoke-static {v1, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;->a(Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;F)V

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$CoordinatorLayoutObserver;

    .line 86
    invoke-interface {v1, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$CoordinatorLayoutObserver;->a(Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;F)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 84
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static getFullHeight()F
    .locals 1

    .line 68
    sget v0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->e:F

    return v0
.end method

.method static getSemiHeight()F
    .locals 1

    .line 72
    sget v0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->d:F

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 97
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0a00e3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .line 1108
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->c:Z

    const/4 v1, 0x0

    .line 1110
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1109
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->c:Z

    .line 1110
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;->LOW_TO_MID:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_2

    .line 1113
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1114
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;->MID_TO_HIGH:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_2

    .line 1117
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 1120
    sget v2, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->d:F

    cmpg-float v3, v0, v2

    if-gtz v3, :cond_2

    .line 1121
    sget-object v3, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;->LOW_TO_MID:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    sub-float/2addr v2, v0

    .line 1123
    sget v0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->h:F

    goto :goto_0

    .line 1125
    :cond_2
    sget-object v3, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;->MID_TO_HIGH:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    .line 1127
    sget v2, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->e:F

    sub-float/2addr v2, v0

    sget v0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->g:F

    :goto_0
    div-float/2addr v2, v0

    float-to-double v4, v2

    const-wide v6, 0x3feff7ced916872bL    # 0.999

    cmpl-double v0, v4, v6

    if-lez v0, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v4, v6

    if-gez v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 1136
    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 103
    :goto_2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p3, v1, v0}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->a(Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;F)V

    .line 104
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method final b()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->b:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;->a(Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->b:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;->a(Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->b:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;->b(Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;)Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->b:Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;->c(Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$LastNotificationSent;)F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver;->a(Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/AppBarCollapseObserver$Range;F)V

    :cond_0
    return-void
.end method
