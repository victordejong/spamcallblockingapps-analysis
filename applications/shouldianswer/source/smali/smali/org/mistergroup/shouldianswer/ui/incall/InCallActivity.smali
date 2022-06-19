.class public final Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;
.super Lorg/mistergroup/shouldianswer/ui/a;
.source "InCallActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$a;
    }
.end annotation


# static fields
.field private static N:J

.field private static O:I

.field public static final l:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$a;


# instance fields
.field private A:Landroid/os/PowerManager$WakeLock;

.field private B:Z

.field private C:Lorg/mistergroup/shouldianswer/ui/incall/a;

.field private D:Lorg/mistergroup/shouldianswer/services/incall/a;

.field private E:Z

.field private F:Lorg/mistergroup/shouldianswer/utils/b;

.field private G:Lorg/mistergroup/shouldianswer/utils/b;

.field private H:Lorg/mistergroup/shouldianswer/utils/b;

.field private I:Z

.field private J:Z

.field private K:Ljava/lang/Integer;

.field private L:Ljava/lang/Integer;

.field private M:Z

.field private m:Lorg/mistergroup/shouldianswer/a/ai;

.field private n:Lorg/mistergroup/shouldianswer/services/incall/a;

.field private o:Z

.field private p:Z

.field private q:Lorg/mistergroup/shouldianswer/utils/t;

.field private r:Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->l:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/a;-><init>()V

    const/4 v0, 0x0

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->K:Ljava/lang/Integer;

    .line 73
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->L:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic A(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->n()V

    return-void
.end method

.method public static final synthetic B(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->o()V

    return-void
.end method

.method public static final synthetic C(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->u()V

    return-void
.end method

.method public static final synthetic D(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->v()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/a/ai;
    .locals 1

    .line 44
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final a(Ljava/lang/String;)V
    .locals 4

    .line 77
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->A:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InCallActivity.enableProximityScreenOff acquire lock ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 80
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->K:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Lorg/mistergroup/shouldianswer/services/incall/a;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->n:Lorg/mistergroup/shouldianswer/services/incall/a;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Lorg/mistergroup/shouldianswer/utils/t;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->q:Lorg/mistergroup/shouldianswer/utils/t;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->E:Z

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/services/incall/a;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->n:Lorg/mistergroup/shouldianswer/services/incall/a;

    return-object p0
.end method

.method private final b(Ljava/lang/String;)V
    .locals 4

    .line 87
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->A:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InCallActivity.disableProximityScreenOff RELEASE lock ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, p1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 90
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->L:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Lorg/mistergroup/shouldianswer/services/incall/a;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->D:Lorg/mistergroup/shouldianswer/services/incall/a;

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->J:Z

    return-void
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/services/incall/a;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->D:Lorg/mistergroup/shouldianswer/services/incall/a;

    return-object p0
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->I:Z

    return-void
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->B:Z

    return-void
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->E:Z

    return p0
.end method

.method public static final synthetic e(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->J:Z

    return p0
.end method

.method public static final synthetic f(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->I:Z

    return p0
.end method

.method public static final synthetic g(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/ui/incall/a;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->C:Lorg/mistergroup/shouldianswer/ui/incall/a;

    return-object p0
.end method

.method public static final synthetic h(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Ljava/lang/Integer;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->K:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic i(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Lorg/mistergroup/shouldianswer/utils/b;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->H:Lorg/mistergroup/shouldianswer/utils/b;

    return-object p0
.end method

.method public static final synthetic j(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->t()V

    return-void
.end method

.method public static final synthetic k(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->B:Z

    return p0
.end method

.method public static final synthetic l(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Ljava/lang/Integer;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->L:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic m(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->s:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private final m()V
    .locals 2

    .line 97
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v1, "InCallActivity.dialpad"

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->r:Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->a(I)V

    :cond_0
    return-void
.end method

.method public static final synthetic n(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->t:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private final n()V
    .locals 12

    .line 105
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v1, "InCallActivity.loadReviews"

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->q:Lorg/mistergroup/shouldianswer/utils/t;

    if-eqz v0, :cond_1c

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "connectivity"

    .line 109
    invoke-virtual {p0, v5}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 110
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 111
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-ne v6, v2, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    if-eqz v5, :cond_1

    .line 112
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v2, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    .line 113
    :goto_1
    sget-object v7, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "InCallActivity.loadReviews isConnected="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isWifi="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v4, v1, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    .line 109
    :cond_2
    new-instance v5, Lkotlin/TypeCastException;

    const-string v6, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {v5, v6}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    .line 115
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v6, v5, v4, v1, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 117
    :goto_2
    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->p:Z

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->p:Z

    .line 118
    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->p:Z

    const-string v2, "binding.llPositiveNegativeCounts"

    const-string v5, "binding.llLocalReviews"

    const-string v6, "binding.butMoreInfo"

    const-string v7, "binding.llCommunityReviews"

    const-string v8, "binding.loadReviewsError"

    const/16 v9, 0x8

    const-string v10, "binding"

    if-eqz v1, :cond_15

    .line 119
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v1, :cond_3

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->f:Landroid/widget/Button;

    const v11, 0x7f0800d0

    invoke-virtual {p0, v11}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v1, v4, v4, v4, v11}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v1, :cond_4

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->z:Landroid/widget/LinearLayout;

    invoke-static {v1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->j()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v3

    goto :goto_3

    :cond_5
    move v4, v9

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v1, :cond_6

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->v:Landroid/widget/LinearLayout;

    invoke-static {v1, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->k()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v3

    goto :goto_4

    :cond_7
    move v4, v9

    :goto_4
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v1, :cond_8

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->C:Landroid/widget/LinearLayout;

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v1, :cond_9

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->G:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v1, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v1, :cond_a

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->h:Landroid/widget/Button;

    invoke-static {v1, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->m()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    move v3, v9

    :goto_5
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    new-instance v1, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$o;

    invoke-direct {v1, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$o;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    check-cast v1, Lkotlin/e/a/b;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/utils/t;->a(Lkotlin/e/a/b;)V

    .line 127
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->k()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->l()Z

    move-result v1

    if-nez v1, :cond_10

    .line 129
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v1, :cond_c

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_c
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->v:Landroid/widget/LinearLayout;

    invoke-static {v1, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v2, :cond_d

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->h:Landroid/widget/Button;

    invoke-static {v2, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v3, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v3, :cond_e

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object v3, v3, Lorg/mistergroup/shouldianswer/a/ai;->H:Landroid/widget/ProgressBar;

    const-string v4, "binding.progressBar1"

    invoke-static {v3, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v4, :cond_f

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_f
    iget-object v4, v4, Lorg/mistergroup/shouldianswer/a/ai;->G:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v4, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/mistergroup/shouldianswer/utils/t;->a(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/ProgressBar;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 134
    :cond_10
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v0, :cond_11

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_11
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->f:Landroid/widget/Button;

    const-string v1, "binding.butLoadReviews"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v0, :cond_12

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_12
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->I:Lorg/mistergroup/shouldianswer/components/LimitedScrollView;

    const-string v1, "binding.scrollView"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/components/LimitedScrollView;->getTop()I

    move-result v0

    .line 136
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v1, :cond_13

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_13
    iget-object v1, v1, Lorg/mistergroup/shouldianswer/a/ai;->D:Landroid/widget/LinearLayout;

    const-string v2, "binding.llRingingActions"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 137
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v2, :cond_14

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_14
    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->I:Lorg/mistergroup/shouldianswer/components/LimitedScrollView;

    sub-int/2addr v1, v0

    int-to-float v0, v1

    sget-object v1, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/x;->a()F

    move-result v1

    const/16 v3, 0xa

    int-to-float v3, v3

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/mistergroup/shouldianswer/components/LimitedScrollView;->setMaxHeight(I)V

    goto :goto_6

    .line 139
    :cond_15
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v0, :cond_16

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_16
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->f:Landroid/widget/Button;

    const v1, 0x7f0800cc

    .line 143
    invoke-virtual {p0, v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v0, :cond_17

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_17
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->z:Landroid/widget/LinearLayout;

    invoke-static {v0, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v0, :cond_18

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_18
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->G:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v0, :cond_19

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_19
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->v:Landroid/widget/LinearLayout;

    invoke-static {v0, v7}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v0, :cond_1a

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1a
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->h:Landroid/widget/Button;

    invoke-static {v0, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v0, :cond_1b

    invoke-static {v10}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1b
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->C:Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1c
    :goto_6
    return-void
.end method

.method public static final synthetic o(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->v:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private final o()V
    .locals 6

    .line 156
    :try_start_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v1, "InCallActivity.moreReviews"

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->q:Lorg/mistergroup/shouldianswer/utils/t;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/t;->n()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v1

    .line 159
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/mistergroup/shouldianswer/model/t;->a:Lorg/mistergroup/shouldianswer/model/t;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/t;->a()Lorg/mistergroup/shouldianswer/model/t$a;

    move-result-object v5

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/t$a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/search?q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&src=sian&countryOperator="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 160
    invoke-virtual {p0, v2}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 163
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final synthetic p(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->u:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private final p()V
    .locals 4

    .line 170
    :try_start_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v1, "InCallActivity.microphone"

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 171
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/incall/c;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;

    if-eqz v0, :cond_2

    const-string v1, "inCallService"

    .line 172
    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    const-string v2, "audioState"

    .line 173
    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 174
    :goto_0
    iget-object v2, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v2, :cond_1

    const-string v3, "binding"

    invoke-static {v3}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v2, v2, Lorg/mistergroup/shouldianswer/a/ai;->g:Landroid/widget/ToggleButton;

    const-string v3, "binding.butMicrophone"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 175
    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;->setMuted(Z)V

    .line 176
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 179
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static final synthetic q(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->z:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private final q()V
    .locals 4

    .line 185
    :try_start_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v1, "InCallActivity.reproductor"

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 186
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/incall/c;->b()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;

    if-eqz v0, :cond_1

    const-string v1, "inCallService"

    .line 187
    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    const-string v2, "audioState"

    .line 188
    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 192
    :goto_0
    invoke-virtual {v0, v2}, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;->setAudioRoute(I)V

    .line 193
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 197
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static final synthetic r(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->y:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private final r()V
    .locals 4

    const/4 v0, 0x2

    .line 203
    :try_start_0
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v2, "InCallActivity.bluetooth"

    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 204
    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/services/incall/c;->b()Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;

    if-eqz v1, :cond_1

    const-string v2, "inCallService"

    .line 205
    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v2

    const-string v3, "audioState"

    .line 207
    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v2

    if-eq v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 208
    :goto_0
    invoke-virtual {v1, v2}, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;->setAudioRoute(I)V

    .line 209
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->u()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 212
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private final s()V
    .locals 2

    .line 218
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v1, "InCallActivity.hold"

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/utils/a;->d(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->n:Lorg/mistergroup/shouldianswer/services/incall/a;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/incall/a;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->o:Z

    .line 220
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->n:Lorg/mistergroup/shouldianswer/services/incall/a;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    iget-boolean v1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->o:Z

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/services/incall/a;->a(Z)V

    .line 221
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->u()V

    return-void
.end method

.method public static final synthetic s(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->o:Z

    return p0
.end method

.method public static final synthetic t(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->x:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private final t()V
    .locals 7

    .line 233
    iget-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->M:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->M:Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 236
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/utils/y;->h()Landroid/telecom/TelecomManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v3

    .line 238
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/PhoneAccountHandle;

    .line 239
    sget-object v6, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v6}, Lorg/mistergroup/shouldianswer/utils/y;->h()Landroid/telecom/TelecomManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v5

    const-string v6, "phoneAccount"

    .line 240
    invoke-static {v5, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_1
    check-cast v2, Ljava/util/Collection;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/CharSequence;

    .line 677
    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 242
    check-cast v2, [Ljava/lang/CharSequence;

    .line 244
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v5, "InCallActivity.onSelectPhoneAccountState showPhoneAccounts dialog"

    invoke-static {v4, v5, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 245
    new-instance v4, Landroidx/appcompat/app/d$a;

    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    const v5, 0x7f1000ae

    .line 247
    invoke-virtual {p0, v5}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroidx/appcompat/app/d$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    move-result-object v4

    .line 248
    new-instance v5, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$p;

    invoke-direct {v5, p0, v3}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$p;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Ljava/util/List;)V

    check-cast v5, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v2, v5}, Landroidx/appcompat/app/d$a;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object v2

    .line 257
    new-instance v3, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$q;

    invoke-direct {v3, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$q;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    check-cast v3, Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/d$a;->a(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/d$a;

    move-result-object v2

    .line 261
    invoke-virtual {v2}, Landroidx/appcompat/app/d$a;->b()Landroidx/appcompat/app/d;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Landroidx/appcompat/app/d;->show()V

    goto :goto_1

    .line 677
    :cond_2
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 264
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static final synthetic u(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 44
    iget-object p0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->w:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private final u()V
    .locals 7

    .line 271
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/c/f;

    new-instance v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$r;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;Lkotlin/c/c;)V

    move-object v4, v0

    check-cast v4, Lkotlin/e/a/m;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    return-void
.end method

.method private final v()V
    .locals 3

    .line 515
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->u()I

    move-result v0

    const-string v1, "binding"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 517
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->A:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 519
    :cond_1
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lorg/mistergroup/shouldianswer/a/ai;->A:Landroid/widget/FrameLayout;

    const-string v1, "binding.llMainFrame"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f080079

    invoke-virtual {p0, v1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public static final synthetic v(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->p()V

    return-void
.end method

.method public static final synthetic w(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->q()V

    return-void
.end method

.method public static final synthetic x(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->r()V

    return-void
.end method

.method public static final synthetic y(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m()V

    return-void
.end method

.method public static final synthetic z(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->s()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 525
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "InCallActivity.onCreate"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 526
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v1, "InCallActivity created"

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    .line 527
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/a;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1100e6

    .line 528
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->setTheme(I)V

    const-string p1, "power"

    .line 530
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_30

    check-cast p1, Landroid/os/PowerManager;

    const/16 v0, 0x20

    .line 532
    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ShouldIAnswer::InCall"

    .line 533
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->A:Landroid/os/PowerManager$WakeLock;

    .line 537
    :cond_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    .line 539
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x680080

    .line 540
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/16 p1, 0x9

    .line 545
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(I)Z

    const p1, 0x7f0800d5

    .line 546
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->s:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0800d4

    .line 547
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->t:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0800ec

    .line 548
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->u:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0800eb

    .line 549
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->v:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0800da

    .line 550
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->w:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0800df

    .line 551
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->x:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0800a6

    .line 552
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->y:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0800a5

    .line 553
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->z:Landroid/graphics/drawable/Drawable;

    .line 555
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f0d003c

    invoke-static {p1, v0}, Landroidx/databinding/f;->a(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string v0, "DataBindingUtil.setConte\u2026R.layout.incall_activity)"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/mistergroup/shouldianswer/a/ai;

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    .line 557
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    const-string v0, "binding"

    if-nez p1, :cond_1

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->N:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.tvDuration"

    invoke-static {p1, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 558
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->B:Landroid/widget/LinearLayout;

    const-string v2, "binding.llOffHookActions"

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 559
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_3

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_3
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->D:Landroid/widget/LinearLayout;

    const-string v3, "binding.llRingingActions"

    invoke-static {p1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 560
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->I:Lorg/mistergroup/shouldianswer/components/LimitedScrollView;

    const-string v3, "binding.scrollView"

    invoke-static {p1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lorg/mistergroup/shouldianswer/components/LimitedScrollView;->setVisibility(I)V

    .line 561
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_5

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->w:Landroid/widget/LinearLayout;

    const-string v3, "binding.llContent"

    invoke-static {p1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 562
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->o:Landroid/widget/ImageView;

    const-string v4, "binding.imgChangeTheme"

    invoke-static {p1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_7

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->s:Landroid/widget/ImageView;

    const-string v5, "binding.imgMainRatingInTitle"

    invoke-static {p1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_8

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_8
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->m:Landroid/widget/FrameLayout;

    const-string v5, "binding.frameContactPhotoInTitle"

    invoke-static {p1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 565
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_9

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->r:Landroid/widget/ImageView;

    const-string v5, "binding.imgMainRatingInSubtitle"

    invoke-static {p1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_a

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_a
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->l:Landroid/widget/FrameLayout;

    const-string v5, "binding.frameContactPhotoBig"

    invoke-static {p1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 567
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_b

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_b
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->U:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, "binding.tvTitle"

    invoke-static {p1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, ""

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_c

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_c
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->R:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v6, "binding.tvSubtitle"

    invoke-static {p1, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {p1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_d

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_d
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->O:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, "binding.tvFeaturedInfo"

    invoke-static {p1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 570
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_e

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_e
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->z:Landroid/widget/LinearLayout;

    const-string v5, "binding.llLocalReviews"

    invoke-static {p1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 571
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_f

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_f
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->v:Landroid/widget/LinearLayout;

    const-string v5, "binding.llCommunityReviews"

    invoke-static {p1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 572
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_10

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_10
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->F:Landroid/widget/LinearLayout;

    const-string v5, "binding.llUnknownNumberInfo"

    invoke-static {p1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 573
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_11

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_11
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->x:Landroid/widget/LinearLayout;

    const-string v5, "binding.llExpandPanel"

    invoke-static {p1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 574
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_12

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_12
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->h:Landroid/widget/Button;

    const-string v5, "binding.butMoreInfo"

    invoke-static {p1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 575
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_13

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_13
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->f:Landroid/widget/Button;

    const-string v5, "binding.butLoadReviews"

    invoke-static {p1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 576
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_14

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_14
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->G:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, "binding.loadReviewsError"

    invoke-static {p1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 577
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_15

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_15
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->H:Landroid/widget/ProgressBar;

    const-string v5, "binding.progressBar1"

    invoke-static {p1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 578
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_16

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_16
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->M:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, "binding.tvDbSensitivityInfo"

    invoke-static {p1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 581
    new-instance p1, Lorg/mistergroup/shouldianswer/utils/b;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v5, :cond_17

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_17
    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ai;->n:Landroid/widget/ImageView;

    const-string v6, "binding.imgAccept"

    invoke-static {v5, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    const v7, 0x7f010020

    invoke-direct {p1, v5, v7, v4}, Lorg/mistergroup/shouldianswer/utils/b;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->F:Lorg/mistergroup/shouldianswer/utils/b;

    .line 582
    new-instance p1, Lorg/mistergroup/shouldianswer/utils/b;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v5, :cond_18

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_18
    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ai;->T:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v8, "binding.tvSwipeUp"

    invoke-static {v5, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    const v8, 0x7f010021

    invoke-direct {p1, v5, v8, v4}, Lorg/mistergroup/shouldianswer/utils/b;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->G:Lorg/mistergroup/shouldianswer/utils/b;

    .line 583
    new-instance p1, Lorg/mistergroup/shouldianswer/utils/b;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v5, :cond_19

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_19
    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ai;->J:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v8, "binding.tvCallType"

    invoke-static {v5, v8}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    invoke-direct {p1, v5, v7, v4}, Lorg/mistergroup/shouldianswer/utils/b;-><init>(Landroid/view/View;II)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->H:Lorg/mistergroup/shouldianswer/utils/b;

    .line 586
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_1a

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1a
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->n:Landroid/widget/ImageView;

    invoke-static {p1, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setTranslationZ(F)V

    .line 587
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_1b

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1b
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->y:Landroid/widget/LinearLayout;

    const-string v5, "binding.llFadingOut"

    invoke-static {p1, v5}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 588
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v5, :cond_1c

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1c
    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ai;->t:Landroid/widget/ImageView;

    const-string v6, "binding.imgRating1"

    invoke-static {v5, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lorg/mistergroup/shouldianswer/model/ag;->b:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {p1, v4, v5, v6}, Lorg/mistergroup/shouldianswer/utils/x;->b(Landroid/content/Context;Landroid/widget/ImageView;Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 589
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/x;->a:Lorg/mistergroup/shouldianswer/utils/x;

    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v5, :cond_1d

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1d
    iget-object v5, v5, Lorg/mistergroup/shouldianswer/a/ai;->u:Landroid/widget/ImageView;

    const-string v6, "binding.imgRating2"

    invoke-static {v5, v6}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lorg/mistergroup/shouldianswer/model/ag;->c:Lorg/mistergroup/shouldianswer/model/ag;

    invoke-virtual {p1, v4, v5, v6}, Lorg/mistergroup/shouldianswer/utils/x;->b(Landroid/content/Context;Landroid/widget/ImageView;Lorg/mistergroup/shouldianswer/model/ag;)V

    .line 591
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_1e

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1e
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->g:Landroid/widget/ToggleButton;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$b;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$b;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_1f

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_1f
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->j:Landroid/widget/ToggleButton;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$g;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$g;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_20

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_20
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->d:Landroid/widget/ToggleButton;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$h;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$h;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_21

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_21
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->e:Landroid/widget/Button;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$i;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$i;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_22

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_22
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->i:Landroid/widget/ToggleButton;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$j;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$j;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_23

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_23
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->k:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$k;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$k;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_24

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_24
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->f:Landroid/widget/Button;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$l;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$l;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_25

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_25
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->h:Landroid/widget/Button;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$m;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$m;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_26

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_26
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->c:Landroid/widget/Button;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$n;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$n;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->j()Landroidx/fragment/app/h;

    move-result-object p1

    const-string v4, "supportFragmentManager"

    invoke-static {p1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    invoke-virtual {p1}, Landroidx/fragment/app/h;->a()Landroidx/fragment/app/l;

    move-result-object p1

    const-string v4, "fragmentManager.beginTransaction()"

    invoke-static {p1, v4}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    new-instance v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;

    invoke-direct {v4}, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;-><init>()V

    iput-object v4, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->r:Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;

    const v4, 0x7f0a019e

    .line 606
    iget-object v5, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->r:Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;

    if-nez v5, :cond_27

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_27
    check-cast v5, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v4, v5}, Landroidx/fragment/app/l;->a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/l;

    .line 607
    invoke-virtual {p1}, Landroidx/fragment/app/l;->b()I

    .line 609
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->r:Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;

    if-eqz p1, :cond_28

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$c;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$c;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    check-cast v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$a;

    invoke-virtual {p1, v4}, Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment;->a(Lorg/mistergroup/shouldianswer/ui/incall/InCallDialpadFragment$a;)V

    .line 622
    :cond_28
    new-instance p1, Lorg/mistergroup/shouldianswer/ui/incall/a;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez v4, :cond_29

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_29
    new-instance v5, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$d;

    invoke-direct {v5, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$d;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    check-cast v5, Lkotlin/e/a/b;

    invoke-direct {p1, v4, v5}, Lorg/mistergroup/shouldianswer/ui/incall/a;-><init>(Lorg/mistergroup/shouldianswer/a/ai;Lkotlin/e/a/b;)V

    iput-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->C:Lorg/mistergroup/shouldianswer/ui/incall/a;

    .line 636
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_2a

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2a
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->D:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->C:Lorg/mistergroup/shouldianswer/ui/incall/a;

    check-cast v4, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 638
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->v()V

    .line 639
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_2b

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2b
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->o:Landroid/widget/ImageView;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$e;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$e;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    check-cast v4, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 647
    sget-object p1, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    new-instance v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$f;

    invoke-direct {v4, p0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$f;-><init>(Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;)V

    check-cast v4, Lkotlin/e/a/b;

    invoke-virtual {p1, v4}, Lorg/mistergroup/shouldianswer/services/incall/c;->a(Lkotlin/e/a/b;)V

    .line 657
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_2c

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2c
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->B:Landroid/widget/LinearLayout;

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 658
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->m:Lorg/mistergroup/shouldianswer/a/ai;

    if-nez p1, :cond_2d

    invoke-static {v0}, Lkotlin/e/b/h;->b(Ljava/lang/String;)V

    :cond_2d
    iget-object p1, p1, Lorg/mistergroup/shouldianswer/a/ai;->w:Landroid/widget/LinearLayout;

    invoke-static {p1, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 659
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->F:Lorg/mistergroup/shouldianswer/utils/b;

    if-nez p1, :cond_2e

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2e
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/b;->a()V

    .line 660
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->G:Lorg/mistergroup/shouldianswer/utils/b;

    if-nez p1, :cond_2f

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2f
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/b;->a()V

    return-void

    .line 530
    :cond_30
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 102
    invoke-super {p0, p1, p2}, Lorg/mistergroup/shouldianswer/ui/a;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 509
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/a;->onDestroy()V

    const-string v0, "destroy"

    .line 510
    invoke-direct {p0, v0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 225
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/a;->onNewIntent(Landroid/content/Intent;)V

    .line 226
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v0, 0x0

    const-string v1, "InCallActivity.onNewIntent"

    const/4 v2, 0x2

    invoke-static {p1, v1, v0, v2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 489
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/a;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 504
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/a;->onResume()V

    const-string v0, "resume"

    .line 505
    invoke-direct {p0, v0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 8

    .line 467
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/a;->onStart()V

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 469
    sget-wide v2, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->N:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    sget-object v2, Lorg/mistergroup/shouldianswer/ui/a;->k:Lorg/mistergroup/shouldianswer/ui/a$a;

    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/ui/a$a;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 470
    sget-wide v2, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->N:J

    sub-long v2, v0, v2

    .line 471
    sget v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->O:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    sput v4, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->O:I

    const/16 v4, 0x7d0

    int-to-long v6, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 472
    sput v2, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->O:I

    .line 473
    :cond_0
    sget v2, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->O:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    .line 474
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "InCallActivity too much of starts!"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v6, v4, v6}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 475
    sget-object v2, Lorg/mistergroup/shouldianswer/ui/a;->k:Lorg/mistergroup/shouldianswer/ui/a$a;

    invoke-virtual {v2, v5}, Lorg/mistergroup/shouldianswer/ui/a$a;->a(Z)V

    .line 478
    :cond_1
    sput-wide v0, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->N:J

    .line 479
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/services/incall/c;->a(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 483
    invoke-super {p0}, Lorg/mistergroup/shouldianswer/ui/a;->onStop()V

    .line 484
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/services/incall/c;->a(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 494
    invoke-super {p0, p1}, Lorg/mistergroup/shouldianswer/ui/a;->onWindowFocusChanged(Z)V

    const-string v0, "focus"

    if-eqz p1, :cond_0

    .line 496
    invoke-direct {p0, v0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 498
    :cond_0
    invoke-direct {p0, v0}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
