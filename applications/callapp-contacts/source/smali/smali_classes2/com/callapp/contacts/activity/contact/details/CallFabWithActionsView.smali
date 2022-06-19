.class public final Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;,
        Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0002LMB%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001bH\u0002J\u0016\u0010\'\u001a\u00020%2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002J\u0010\u0010)\u001a\u00020%2\u0006\u0010*\u001a\u00020\u000eH\u0002J\u0008\u0010+\u001a\u00020%H\u0002J\u0018\u0010,\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0007H\u0002J\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aJ\u0006\u00100\u001a\u00020%J\u0008\u00101\u001a\u00020%H\u0002J\u0010\u00102\u001a\u00020%2\u0006\u00103\u001a\u00020\u000eH\u0002J\u001c\u00104\u001a\u00020%2\u0008\u0008\u0002\u00105\u001a\u00020\u000e2\u0008\u0008\u0002\u00106\u001a\u000207H\u0002J\u0016\u00108\u001a\u00020%2\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020%0:H\u0002J\u001c\u0010;\u001a\u00020%2\u0006\u0010<\u001a\u00020=2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aJ\u0006\u0010>\u001a\u000207J\u0006\u0010?\u001a\u000207J\u0010\u0010@\u001a\u00020%2\u0006\u0010&\u001a\u00020\u001bH\u0002J\u0008\u0010A\u001a\u00020%H\u0002J\u0008\u0010B\u001a\u00020%H\u0002J\u0008\u0010C\u001a\u00020%H\u0014J\u000e\u0010D\u001a\u00020%2\u0006\u0010E\u001a\u00020FJ\u000e\u0010G\u001a\u00020%2\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010H\u001a\u00020%J\u0010\u0010I\u001a\u00020%2\u0006\u00105\u001a\u00020\u000eH\u0002J\u0012\u0010J\u001a\u00020%2\u0008\u0008\u0002\u0010*\u001a\u00020\u000eH\u0002J\u0006\u0010K\u001a\u00020%R\u000e\u0010\t\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R&\u0010\"\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0#0\u001a0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006N"
    }
    d2 = {
        "Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "BG_TRANSLATION_DELTA",
        "",
        "SCALE_HIDE",
        "SCALE_SHOW",
        "SHOW_TIMEOUT",
        "",
        "_binding",
        "Lcom/callapp/contacts/databinding/CallFabLayoutBinding;",
        "actionsViews",
        "",
        "Landroid/view/View;",
        "binding",
        "getBinding",
        "()Lcom/callapp/contacts/databinding/CallFabLayoutBinding;",
        "callFabActionListener",
        "Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;",
        "contactActions",
        "",
        "Lcom/callapp/contacts/activity/contact/details/ContactAction;",
        "delayHandler",
        "Landroid/os/Handler;",
        "runnableAutoHide",
        "Ljava/lang/Runnable;",
        "state",
        "Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;",
        "transfersCoordinates",
        "Lkotlin/Pair;",
        "addAction",
        "",
        "action",
        "addActionsToContainer",
        "list",
        "animateHandOff",
        "delay",
        "clearAll",
        "getActionView",
        "Landroid/widget/ImageView;",
        "res",
        "getActions",
        "hide",
        "hideActionsAndBg",
        "hideAfterTimeOut",
        "timeOut",
        "hideBg",
        "startDelay",
        "fast",
        "",
        "hideImmediate",
        "onHiddenComplete",
        "Lkotlin/Function0;",
        "init",
        "activity",
        "Landroid/app/Activity;",
        "isActionsHidden",
        "isValid",
        "onActionClicked",
        "onActionsHidden",
        "onAllActionsShow",
        "onDetachedFromWindow",
        "onTouchUpPerformed",
        "e",
        "Landroid/view/MotionEvent;",
        "setActionListener",
        "show",
        "showActions",
        "showBgAndActions",
        "showIntro",
        "OnCallFabActionListener",
        "State",
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
.field a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/activity/contact/details/ContactAction;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/lang/Runnable;

.field final f:Landroid/os/Handler;

.field private g:Lcom/callapp/contacts/databinding/CallFabLayoutBinding;

.field private final h:F

.field private final i:F

.field private final j:J

.field private final k:F

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lkotlin/n<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    iput-object v2, v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b:Ljava/util/List;

    .line 30
    sget-object v2, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;->Hide:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    iput-object v2, v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->c:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    .line 2071
    sget-object v2, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v2, Ljava/util/List;

    .line 31
    iput-object v2, v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->d:Ljava/util/List;

    .line 34
    new-instance v2, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$runnableAutoHide$1;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$runnableAutoHide$1;-><init>(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)V

    check-cast v2, Ljava/lang/Runnable;

    iput-object v2, v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->e:Ljava/lang/Runnable;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 39
    iput v2, v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->h:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 40
    iput v2, v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->i:F

    const-wide/16 v2, 0xdac

    .line 41
    iput-wide v2, v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->j:J

    const/high16 v2, 0x42340000    # 45.0f

    .line 42
    iput v2, v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->k:F

    .line 43
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->f:Landroid/os/Handler;

    const/4 v2, 0x5

    new-array v3, v2, [Ljava/util/List;

    .line 46
    new-instance v4, Lkotlin/n;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/high16 v6, -0x3d6a0000    # -75.0f

    invoke-static {v1, v6}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v3, v7

    const/4 v4, 0x2

    new-array v8, v4, [Lkotlin/n;

    .line 47
    new-instance v9, Lkotlin/n;

    const/high16 v10, -0x3db80000    # -50.0f

    invoke-static {v1, v10}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v1, v6}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v8, v7

    new-instance v9, Lkotlin/n;

    const/high16 v11, 0x42480000    # 50.0f

    invoke-static {v1, v11}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v1, v6}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v12, 0x1

    aput-object v9, v8, v12

    invoke-static {v8}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    aput-object v8, v3, v12

    const/4 v8, 0x3

    new-array v9, v8, [Lkotlin/n;

    .line 48
    new-instance v13, Lkotlin/n;

    const/high16 v14, -0x3d7e0000    # -65.0f

    invoke-static {v1, v14}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v1, v10}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct {v13, v15, v11}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v7

    new-instance v11, Lkotlin/n;

    invoke-static {v1, v6}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-direct {v11, v5, v13}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v9, v12

    new-instance v11, Lkotlin/n;

    const/high16 v13, 0x42820000    # 65.0f

    invoke-static {v1, v13}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v1, v10}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-direct {v11, v13, v15}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v9, v4

    invoke-static {v9}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    aput-object v9, v3, v4

    const/4 v9, 0x4

    new-array v11, v9, [Lkotlin/n;

    .line 49
    new-instance v13, Lkotlin/n;

    invoke-static {v1, v6}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/high16 v9, -0x3dfc0000    # -33.0f

    invoke-static {v1, v9}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-direct {v13, v15, v14}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v11, v7

    new-instance v13, Lkotlin/n;

    invoke-static {v1, v9}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v1, v6}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v11, v12

    new-instance v13, Lkotlin/n;

    const/high16 v14, 0x42040000    # 33.0f

    invoke-static {v1, v14}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v14

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-static {v1, v6}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v11, v4

    new-instance v13, Lkotlin/n;

    const/high16 v14, 0x42960000    # 75.0f

    invoke-static {v1, v14}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-static {v1, v9}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v13, v15, v9}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v11, v8

    invoke-static {v11}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    aput-object v9, v3, v8

    new-array v2, v2, [Lkotlin/n;

    .line 50
    new-instance v9, Lkotlin/n;

    invoke-static {v1, v6}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/high16 v11, -0x3e900000    # -15.0f

    invoke-static {v1, v11}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-direct {v9, v6, v13}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v2, v7

    .line 51
    new-instance v6, Lkotlin/n;

    invoke-static {v1, v10}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/high16 v9, -0x3d7e0000    # -65.0f

    invoke-static {v1, v9}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v6, v7, v9}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v12

    .line 52
    new-instance v6, Lkotlin/n;

    const/high16 v7, -0x3d4c0000    # -90.0f

    invoke-static {v1, v7}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v2, v4

    .line 53
    new-instance v4, Lkotlin/n;

    const/high16 v5, 0x42480000    # 50.0f

    invoke-static {v1, v5}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/high16 v6, -0x3d7e0000    # -65.0f

    invoke-static {v1, v6}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v2, v8

    .line 54
    new-instance v4, Lkotlin/n;

    invoke-static {v1, v14}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v1, v11}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lkotlin/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x4

    aput-object v4, v2, v5

    .line 50
    invoke-static {v2}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v3, v5

    .line 45
    invoke-static {v3}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->l:Ljava/util/List;

    .line 67
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v1, v2}, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/callapp/contacts/databinding/CallFabLayoutBinding;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->g:Lcom/callapp/contacts/databinding/CallFabLayoutBinding;

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

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)Lcom/callapp/contacts/databinding/CallFabLayoutBinding;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->getBinding()Lcom/callapp/contacts/databinding/CallFabLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method private final a(JZ)V
    .locals 8

    .line 253
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->getBinding()Lcom/callapp/contacts/databinding/CallFabLayoutBinding;

    move-result-object v0

    iget-object v2, v0, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;->d:Landroid/view/View;

    .line 254
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 255
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_0

    const-wide/16 v0, 0xc8

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/high16 v1, 0x43960000    # 300.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 257
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->k:F

    invoke-static {v4, v5}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v7, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$hideBg$$inlined$apply$lambda$1;

    move-object v1, v7

    move-object v3, p0

    move v4, p3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$hideBg$$inlined$apply$lambda$1;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;ZJ)V

    check-cast v7, Ljava/lang/Runnable;

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 260
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;J)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b(J)V

    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;Ljava/util/List;)V
    .locals 4

    .line 3144
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->c()V

    .line 3145
    check-cast p1, Ljava/lang/Iterable;

    .line 3288
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/details/ContactAction;

    .line 4175
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/ContactAction;->getLargeIcon()I

    move-result v0

    .line 4189
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4190
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4192
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x51

    .line 4193
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/high16 v3, 0x420c0000    # 35.0f

    .line 4194
    invoke-static {v1, v3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v1, 0x1

    .line 4195
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 4196
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4197
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->h:F

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 4198
    iget v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->h:F

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 4176
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 4177
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4178
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->getBinding()Lcom/callapp/contacts/databinding/CallFabLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;->a:Landroid/widget/FrameLayout;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;Lkotlin/jvm/functions/Function0;)V
    .locals 4

    .line 2242
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;->AnimatingHide:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->c:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    .line 2243
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 2298
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2244
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 2245
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->h:F

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->h:F

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x32

    .line 2246
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x226

    const/4 v2, 0x1

    .line 2248
    invoke-direct {p0, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(JZ)V

    .line 2249
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->f:Landroid/os/Handler;

    new-instance v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$hideImmediate$2;

    invoke-direct {v0, p1}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$hideImmediate$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final synthetic b(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->c:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    return-object p0
.end method

.method private final b(J)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final c()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 290
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 152
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->getBinding()Lcom/callapp/contacts/databinding/CallFabLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 155
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static final synthetic c(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)V
    .locals 2

    const-wide/16 v0, 0x2ee

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(J)V

    return-void
.end method

.method public static final synthetic d(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)V
    .locals 3

    .line 5165
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->getBinding()Lcom/callapp/contacts/databinding/CallFabLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3fb33333    # 1.4f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x6a4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x352

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$animateHandOff$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$animateHandOff$1;-><init>(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static final synthetic e(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->j:J

    return-wide v0
.end method

.method public static final synthetic f(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)Ljava/util/List;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic g(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)V
    .locals 2

    .line 5223
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;->Show:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->c:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    .line 5224
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;->onCallFabActionsShown(Ljava/util/List;)V

    .line 5225
    :cond_0
    iget-wide v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->j:J

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b(J)V

    return-void
.end method

.method public static final synthetic h(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)V
    .locals 1

    .line 5266
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;->Hide:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->c:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    .line 5267
    iget-object p0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;->onCallFabActionsHidden()V

    :cond_0
    return-void
.end method

.method public static final synthetic i(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;)V
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->c:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;->Hide:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->c:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;->AnimatingHide:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method final a(J)V
    .locals 11

    .line 271
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;->AnimatingShow:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->c:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    .line 272
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->getBinding()Lcom/callapp/contacts/databinding/CallFabLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;->d:Landroid/view/View;

    .line 273
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v1, 0x0

    .line 274
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->k:F

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    .line 276
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    const/high16 v4, 0x432f0000    # 175.0f

    mul-float v2, v2, v4

    float-to-long v4, v2

    .line 277
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showBgAndActions$$inlined$apply$lambda$1;

    invoke-direct {v3, v0, p0, p1, p2}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showBgAndActions$$inlined$apply$lambda$1;-><init>(Landroid/view/View;Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;J)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1203
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1204
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->l:Ljava/util/List;

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1205
    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    .line 1293
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v9, v3, 0x1

    if-gez v3, :cond_0

    invoke-static {}, Lkotlin/a/n;->a()V

    :cond_0
    check-cast v1, Landroid/view/View;

    .line 1206
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1207
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1208
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/n;

    .line 2027
    iget-object v2, v2, Lkotlin/n;->a:Ljava/lang/Object;

    .line 1208
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/n;

    .line 2028
    iget-object v2, v2, Lkotlin/n;->b:Ljava/lang/Object;

    .line 1208
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->i:F

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->i:F

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0x46

    int-to-long v6, v3

    mul-long v6, v6, v4

    add-long/2addr v6, p1

    .line 1209
    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v4, 0x226

    .line 1211
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v10, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showActions$$inlined$forEachIndexed$lambda$1;

    move-object v2, v10

    move-object v4, p0

    move-object v5, v0

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$showActions$$inlined$forEachIndexed$lambda$1;-><init>(ILcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;Ljava/util/List;J)V

    check-cast v10, Ljava/lang/Runnable;

    invoke-virtual {v1, v10}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1215
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    move v3, v9

    goto :goto_0

    :cond_1
    return-void

    .line 1218
    :cond_2
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a()V

    return-void
.end method

.method public final a(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "+",
            "Lcom/callapp/contacts/activity/contact/details/ContactAction;",
            ">;)V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->d:Ljava/util/List;

    .line 90
    new-instance v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;

    invoke-direct {v0, p0, p2}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$init$1;-><init>(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;Ljava/util/List;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 87
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Number of actions cant be greater then "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " or empty"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method final b()V
    .locals 10

    .line 229
    sget-object v0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;->AnimatingHide:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->c:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    const-wide/16 v0, 0x12c

    const/4 v2, 0x0

    .line 230
    invoke-direct {p0, v0, v1, v2}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a(JZ)V

    .line 231
    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .line 296
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/a/n;->a()V

    :cond_0
    check-cast v4, Landroid/view/View;

    .line 232
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 233
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v6, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->h:F

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget v6, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->h:F

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 234
    iget-object v6, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    int-to-long v6, v6

    const-wide/16 v8, 0x37

    mul-long v6, v6, v8

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 235
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 236
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    move v2, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/contact/details/ContactAction;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->d:Ljava/util/List;

    return-object v0
.end method

.method final getBinding()Lcom/callapp/contacts/databinding/CallFabLayoutBinding;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->g:Lcom/callapp/contacts/databinding/CallFabLayoutBinding;

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final isActionsHidden()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->c:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    sget-object v1, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;->Hide:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->getBinding()Lcom/callapp/contacts/databinding/CallFabLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/callapp/contacts/databinding/CallFabLayoutBinding;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 160
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->c()V

    .line 161
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final setActionListener(Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;)V
    .locals 1

    const-string v0, "callFabActionListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView;->a:Lcom/callapp/contacts/activity/contact/details/CallFabWithActionsView$OnCallFabActionListener;

    return-void
.end method
