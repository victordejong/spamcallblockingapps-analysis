.class public final Lorg/mistergroup/shouldianswer/services/incall/c;
.super Ljava/lang/Object;
.source "MyInCallPresenter.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/services/incall/c;

# The value of this static final field might be set in the static constructor
.field private static final b:I = 0x51544

# The value of this static final field might be set in the static constructor
.field private static final c:Ljava/lang/String; = "org.mistergroup.shouldianswer.call_accept"

# The value of this static final field might be set in the static constructor
.field private static final d:Ljava/lang/String; = "org.mistergroup.shouldianswer.call_reject"

# The value of this static final field might be set in the static constructor
.field private static final e:Ljava/lang/String; = "org.mistergroup.shouldianswer.call_disconnect"

.field private static f:Z

.field private static g:Lorg/mistergroup/shouldianswer/model/NumberInfo;

.field private static h:Z

.field private static i:Lkotlin/e/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/e/a/b<",
            "-",
            "Lorg/mistergroup/shouldianswer/services/incall/a;",
            "Lkotlin/o;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Landroid/app/NotificationManager;

.field private static k:Ljava/util/Timer;

.field private static l:Z

.field private static m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/telecom/Call;",
            "Lorg/mistergroup/shouldianswer/services/incall/a;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Landroid/graphics/Bitmap;

.field private static q:J

.field private static r:Landroid/graphics/Bitmap;

.field private static s:Lorg/mistergroup/shouldianswer/model/ag;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/Integer;

.field private static w:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lorg/mistergroup/shouldianswer/services/incall/c;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/services/incall/c;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->a:Lorg/mistergroup/shouldianswer/services/incall/c;

    const v0, 0x51544

    .line 41
    sput v0, Lorg/mistergroup/shouldianswer/services/incall/c;->b:I

    const-string v0, "org.mistergroup.shouldianswer.call_accept"

    .line 42
    sput-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->c:Ljava/lang/String;

    const-string v0, "org.mistergroup.shouldianswer.call_reject"

    .line 43
    sput-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->d:Ljava/lang/String;

    const-string v0, "org.mistergroup.shouldianswer.call_disconnect"

    .line 44
    sput-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->e:Ljava/lang/String;

    const/4 v0, 0x1

    .line 51
    sput-boolean v0, Lorg/mistergroup/shouldianswer/services/incall/c;->l:Z

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->o:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->v:Ljava/lang/Integer;

    .line 85
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/y;->c()Landroid/app/NotificationManager;

    move-result-object v0

    sput-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->j:Landroid/app/NotificationManager;

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    sget-object v1, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v1

    new-instance v2, Lorg/mistergroup/shouldianswer/services/incall/b;

    invoke-direct {v2}, Lorg/mistergroup/shouldianswer/services/incall/b;-><init>()V

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lorg/mistergroup/shouldianswer/MyApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/services/incall/c;)J
    .locals 2

    .line 40
    sget-wide v0, Lorg/mistergroup/shouldianswer/services/incall/c;->q:J

    return-wide v0
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/services/incall/c;J)V
    .locals 0

    .line 40
    sput-wide p1, Lorg/mistergroup/shouldianswer/services/incall/c;->q:J

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/services/incall/c;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 40
    sput-object p1, Lorg/mistergroup/shouldianswer/services/incall/c;->p:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/services/incall/c;Ljava/lang/Integer;)V
    .locals 0

    .line 40
    sput-object p1, Lorg/mistergroup/shouldianswer/services/incall/c;->v:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/services/incall/c;Ljava/lang/String;)V
    .locals 0

    .line 40
    sput-object p1, Lorg/mistergroup/shouldianswer/services/incall/c;->t:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/services/incall/c;Lorg/mistergroup/shouldianswer/model/ag;)V
    .locals 0

    .line 40
    sput-object p1, Lorg/mistergroup/shouldianswer/services/incall/c;->s:Lorg/mistergroup/shouldianswer/model/ag;

    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/services/incall/c;Z)V
    .locals 0

    .line 40
    sput-boolean p1, Lorg/mistergroup/shouldianswer/services/incall/c;->l:Z

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/services/incall/c;)Landroid/graphics/Bitmap;
    .locals 0

    .line 40
    sget-object p0, Lorg/mistergroup/shouldianswer/services/incall/c;->p:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/services/incall/c;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 40
    sput-object p1, Lorg/mistergroup/shouldianswer/services/incall/c;->r:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/services/incall/c;Ljava/lang/String;)V
    .locals 0

    .line 40
    sput-object p1, Lorg/mistergroup/shouldianswer/services/incall/c;->u:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/services/incall/c;)Lorg/mistergroup/shouldianswer/model/ag;
    .locals 0

    .line 40
    sget-object p0, Lorg/mistergroup/shouldianswer/services/incall/c;->s:Lorg/mistergroup/shouldianswer/model/ag;

    return-object p0
.end method

.method public static final synthetic c(Lorg/mistergroup/shouldianswer/services/incall/c;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 40
    sput-object p1, Lorg/mistergroup/shouldianswer/services/incall/c;->w:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static final synthetic d(Lorg/mistergroup/shouldianswer/services/incall/c;)Landroid/graphics/Bitmap;
    .locals 0

    .line 40
    sget-object p0, Lorg/mistergroup/shouldianswer/services/incall/c;->r:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static final synthetic e(Lorg/mistergroup/shouldianswer/services/incall/c;)Ljava/lang/Integer;
    .locals 0

    .line 40
    sget-object p0, Lorg/mistergroup/shouldianswer/services/incall/c;->v:Ljava/lang/Integer;

    return-object p0
.end method

.method public static final synthetic f(Lorg/mistergroup/shouldianswer/services/incall/c;)Landroid/graphics/Bitmap;
    .locals 0

    .line 40
    sget-object p0, Lorg/mistergroup/shouldianswer/services/incall/c;->w:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static final synthetic g(Lorg/mistergroup/shouldianswer/services/incall/c;)Ljava/lang/String;
    .locals 0

    .line 40
    sget-object p0, Lorg/mistergroup/shouldianswer/services/incall/c;->t:Ljava/lang/String;

    return-object p0
.end method

.method private final g()Lorg/mistergroup/shouldianswer/services/incall/a;
    .locals 5

    const/4 v0, 0x0

    .line 70
    check-cast v0, Lorg/mistergroup/shouldianswer/services/incall/a;

    .line 71
    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->o:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "callInfos.values"

    invoke-static {v1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mistergroup/shouldianswer/services/incall/a;

    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {v2}, Lorg/mistergroup/shouldianswer/services/incall/a;->g()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/incall/a;->g()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v4, :cond_0

    :cond_3
    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static final synthetic h(Lorg/mistergroup/shouldianswer/services/incall/c;)Ljava/lang/String;
    .locals 0

    .line 40
    sget-object p0, Lorg/mistergroup/shouldianswer/services/incall/c;->u:Ljava/lang/String;

    return-object p0
.end method

.method private final h()V
    .locals 9

    .line 98
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    .line 99
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/services/incall/c;->g()Lorg/mistergroup/shouldianswer/services/incall/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    sget-object v2, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/ad;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v2, Lorg/mistergroup/shouldianswer/services/incall/c$d;

    const/4 v6, 0x0

    invoke-direct {v2, v0, v1, v6}, Lorg/mistergroup/shouldianswer/services/incall/c$d;-><init>(Lorg/mistergroup/shouldianswer/MyApp;Lorg/mistergroup/shouldianswer/services/incall/a;Lkotlin/c/c;)V

    move-object v6, v2

    check-cast v6, Lkotlin/e/a/m;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    :cond_0
    return-void
.end method

.method private final i()V
    .locals 2

    .line 282
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->j:Landroid/app/NotificationManager;

    sget v1, Lorg/mistergroup/shouldianswer/services/incall/c;->b:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static final synthetic i(Lorg/mistergroup/shouldianswer/services/incall/c;)Z
    .locals 0

    .line 40
    sget-boolean p0, Lorg/mistergroup/shouldianswer/services/incall/c;->h:Z

    return p0
.end method

.method public static final synthetic j(Lorg/mistergroup/shouldianswer/services/incall/c;)Ljava/lang/String;
    .locals 0

    .line 40
    sget-object p0, Lorg/mistergroup/shouldianswer/services/incall/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method private final j()V
    .locals 5

    .line 286
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->m:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 288
    :try_start_0
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "MyInCallPresenter.startActivity!"

    invoke-static {v2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 289
    sget-object v2, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;->l:Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$a;

    sget-object v3, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v4}, Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity$a;->a(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 290
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 291
    sget-object v3, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v3}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/mistergroup/shouldianswer/MyApp;->startActivity(Landroid/content/Intent;)V

    .line 292
    sget-object v2, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "MyInCallPresenter.startActivity called!"

    invoke-static {v2, v3, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 294
    sget-object v3, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v3, v2, v1, v0, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final synthetic k(Lorg/mistergroup/shouldianswer/services/incall/c;)Ljava/lang/String;
    .locals 0

    .line 40
    sget-object p0, Lorg/mistergroup/shouldianswer/services/incall/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic l(Lorg/mistergroup/shouldianswer/services/incall/c;)Ljava/lang/String;
    .locals 0

    .line 40
    sget-object p0, Lorg/mistergroup/shouldianswer/services/incall/c;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic m(Lorg/mistergroup/shouldianswer/services/incall/c;)Landroid/app/NotificationManager;
    .locals 0

    .line 40
    sget-object p0, Lorg/mistergroup/shouldianswer/services/incall/c;->j:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static final synthetic n(Lorg/mistergroup/shouldianswer/services/incall/c;)I
    .locals 0

    .line 40
    sget p0, Lorg/mistergroup/shouldianswer/services/incall/c;->b:I

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;",
            ">;"
        }
    .end annotation

    .line 53
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->m:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final a(Landroid/telecom/Call;)V
    .locals 14

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->m()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/mistergroup/shouldianswer/utils/o;->a:Lorg/mistergroup/shouldianswer/utils/o;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/utils/o;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    :cond_0
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/Exception;

    const-string v5, "MyInCallPresenter.addCall Insufficient Permissions"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 323
    sget-object v0, Lorg/mistergroup/shouldianswer/b/d;->a:Lorg/mistergroup/shouldianswer/b/d;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/b/d;->a(Z)V

    .line 326
    :cond_1
    new-instance v0, Lorg/mistergroup/shouldianswer/services/incall/a;

    invoke-direct {v0, p0, p1}, Lorg/mistergroup/shouldianswer/services/incall/a;-><init>(Lorg/mistergroup/shouldianswer/services/incall/c;Landroid/telecom/Call;)V

    .line 327
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/incall/a;->b()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v5

    .line 328
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 329
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MyInCallPresenter.addCall "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 330
    sget-object v4, Lorg/mistergroup/shouldianswer/services/incall/c;->o:Ljava/util/HashMap;

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    move-object v4, v0

    check-cast v4, Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v4}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 335
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v8, "MyInCallPresenter.addCall check for blocking "

    invoke-static {v4, v8, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 336
    new-instance v10, Lkotlin/e/b/m$a;

    invoke-direct {v10}, Lkotlin/e/b/m$a;-><init>()V

    const/4 v11, 0x0

    iput-boolean v11, v10, Lkotlin/e/b/m$a;->a:Z

    .line 337
    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lkotlin/c/f;

    new-instance v13, Lorg/mistergroup/shouldianswer/services/incall/c$a;

    const/4 v9, 0x0

    move-object v4, v13

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Lorg/mistergroup/shouldianswer/services/incall/c$a;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/e/b/m$a;Lkotlin/c/c;)V

    check-cast v13, Lkotlin/e/a/m;

    invoke-static {v12, v13}, Lkotlinx/coroutines/e;->a(Lkotlin/c/f;Lkotlin/e/a/m;)Ljava/lang/Object;

    .line 344
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/y;->b:Lorg/mistergroup/shouldianswer/utils/y;

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/utils/y;->j()Landroid/os/PowerManager;

    move-result-object v4

    .line 345
    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    .line 346
    invoke-virtual {p1}, Landroid/telecom/Call;->getState()I

    move-result p1

    .line 347
    sget-object v5, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v5}, Lorg/mistergroup/shouldianswer/model/ai;->v()Z

    move-result v5

    if-eqz v4, :cond_2

    if-ne p1, v2, :cond_2

    .line 348
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/incall/a;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v6

    sget-object v7, Lorg/mistergroup/shouldianswer/model/k;->b:Lorg/mistergroup/shouldianswer/model/k;

    if-eq v6, v7, :cond_2

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v1, v11

    :goto_0
    sput-boolean v1, Lorg/mistergroup/shouldianswer/services/incall/c;->h:Z

    .line 349
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MyInCallPresenter.addCall isScreenOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 350
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MyInCallPresenter.addCall CallInfo.state="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 351
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MyInCallPresenter.addCall callType="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/incall/a;->d()Lorg/mistergroup/shouldianswer/model/k;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mistergroup/shouldianswer/model/k;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 352
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MyInCallPresenter.addCall dontUseInCallPopup="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 353
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MyInCallPresenter.addCall showAsStickyNotification="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lorg/mistergroup/shouldianswer/services/incall/c;->h:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 355
    iget-boolean p1, v10, Lkotlin/e/b/m$a;->a:Z

    if-eqz p1, :cond_3

    .line 356
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v1, "MyInCallPresenter.addCall wantBlock"

    invoke-static {p1, v1, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 357
    sget-object p1, Lorg/mistergroup/shouldianswer/services/incall/c;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p1}, Lorg/mistergroup/shouldianswer/services/incall/a;->a(Ljava/lang/ref/WeakReference;)V

    goto :goto_1

    .line 359
    :cond_3
    sget-boolean p1, Lorg/mistergroup/shouldianswer/services/incall/c;->h:Z

    if-nez p1, :cond_4

    .line 360
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v0, "MyInCallPresenter.addCall startingActivity"

    invoke-static {p1, v0, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 361
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/services/incall/c;->j()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 260
    :try_start_0
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/services/incall/c;->g()Lorg/mistergroup/shouldianswer/services/incall/a;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 262
    sget-object v2, Lorg/mistergroup/shouldianswer/services/incall/c;->c:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 263
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/services/incall/a;->i()Landroid/telecom/Call;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {p1, v3}, Landroid/telecom/Call;->answer(I)V

    .line 264
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/services/incall/c;->j()V

    goto :goto_0

    .line 266
    :cond_1
    sget-object v2, Lorg/mistergroup/shouldianswer/services/incall/c;->d:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 267
    invoke-virtual {v1, v4}, Lorg/mistergroup/shouldianswer/services/incall/a;->b(Z)V

    .line 268
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/services/incall/a;->i()Landroid/telecom/Call;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    invoke-virtual {p1, v3, v0}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_3
    sget-object v2, Lorg/mistergroup/shouldianswer/services/incall/c;->e:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 271
    invoke-virtual {v1, v4}, Lorg/mistergroup/shouldianswer/services/incall/a;->b(Z)V

    .line 272
    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/services/incall/a;->i()Landroid/telecom/Call;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_4
    invoke-virtual {p1}, Landroid/telecom/Call;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    return-void

    :catch_0
    move-exception p1

    .line 276
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    invoke-static {v1, p1, v0, v2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/mistergroup/shouldianswer/ui/incall/InCallActivity;",
            ">;)V"
        }
    .end annotation

    .line 53
    sput-object p1, Lorg/mistergroup/shouldianswer/services/incall/c;->m:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final a(Lkotlin/e/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/e/a/b<",
            "-",
            "Lorg/mistergroup/shouldianswer/services/incall/a;",
            "Lkotlin/o;",
            ">;)V"
        }
    .end annotation

    .line 94
    sput-object p1, Lorg/mistergroup/shouldianswer/services/incall/c;->i:Lkotlin/e/a/b;

    return-void
.end method

.method public final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)V
    .locals 0

    .line 46
    sput-object p1, Lorg/mistergroup/shouldianswer/services/incall/c;->g:Lorg/mistergroup/shouldianswer/model/NumberInfo;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 45
    sput-boolean p1, Lorg/mistergroup/shouldianswer/services/incall/c;->f:Z

    return-void
.end method

.method public final b()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;",
            ">;"
        }
    .end annotation

    .line 54
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->n:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final b(Landroid/telecom/Call;)V
    .locals 11

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/services/incall/a;

    if-eqz v0, :cond_1

    const-string v1, "callInfos[call] ?: return"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyInCallPresenter.removeCall "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/incall/a;->b()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object v3

    invoke-static {v3}, Lorg/mistergroup/shouldianswer/model/x;->a(Lorg/mistergroup/shouldianswer/model/NumberInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 395
    move-object v1, v0

    check-cast v1, Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 396
    sget-object v1, Lorg/mistergroup/shouldianswer/services/incall/c;->o:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object p1, Lorg/mistergroup/shouldianswer/services/incall/c;->o:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 399
    :try_start_0
    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/incall/a;->b()Lorg/mistergroup/shouldianswer/model/NumberInfo;

    move-result-object p1

    .line 400
    sget-object v1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/ad;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v1, Lorg/mistergroup/shouldianswer/services/incall/c$c;

    invoke-direct {v1, p1, v0, v4}, Lorg/mistergroup/shouldianswer/services/incall/c$c;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/services/incall/a;Lkotlin/c/c;)V

    move-object v8, v1

    check-cast v8, Lkotlin/e/a/m;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 412
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    invoke-static {v0, p1, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    .line 416
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/mistergroup/shouldianswer/services/incall/c;->d()V

    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;",
            ">;)V"
        }
    .end annotation

    .line 54
    sput-object p1, Lorg/mistergroup/shouldianswer/services/incall/c;->n:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final c()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/telecom/Call;",
            "Lorg/mistergroup/shouldianswer/services/incall/a;",
            ">;"
        }
    .end annotation

    .line 56
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->o:Ljava/util/HashMap;

    return-object v0
.end method

.method public final d()V
    .locals 7

    .line 300
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->n:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/services/incall/MyInCallService;->a()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 302
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const/16 v0, 0x1388

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    .line 303
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "MyInCallPresenter.updateUI cancel due pickAndHangStartedTime"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 307
    :cond_0
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/services/incall/c;->g()Lorg/mistergroup/shouldianswer/services/incall/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 308
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/services/incall/c;->h()V

    goto :goto_0

    .line 310
    :cond_1
    sget-boolean v0, Lorg/mistergroup/shouldianswer/services/incall/c;->l:Z

    if-nez v0, :cond_2

    .line 311
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v3, "MyInCallPresenter.updateUI cancel Notification"

    invoke-static {v0, v3, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 312
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->j:Landroid/app/NotificationManager;

    sget v1, Lorg/mistergroup/shouldianswer/services/incall/c;->b:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x1

    .line 313
    sput-boolean v0, Lorg/mistergroup/shouldianswer/services/incall/c;->l:Z

    .line 317
    :cond_2
    :goto_0
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->i:Lkotlin/e/a/b;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/services/incall/c;->g()Lorg/mistergroup/shouldianswer/services/incall/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/e/a/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/o;

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 8

    .line 420
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->k:Ljava/util/Timer;

    .line 421
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 422
    sget-object v2, Lorg/mistergroup/shouldianswer/services/incall/c;->k:Ljava/util/Timer;

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    new-instance v1, Lorg/mistergroup/shouldianswer/services/incall/c$b;

    invoke-direct {v1, v0}, Lorg/mistergroup/shouldianswer/services/incall/c$b;-><init>(Landroid/os/Handler;)V

    move-object v3, v1

    check-cast v3, Ljava/util/TimerTask;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 433
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/services/incall/c;->i()V

    .line 434
    sget-object v0, Lorg/mistergroup/shouldianswer/services/incall/c;->k:Ljava/util/Timer;

    if-eqz v0, :cond_1

    if-nez v0, :cond_0

    .line 435
    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    return-void
.end method
