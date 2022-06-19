.class public final Lorg/mistergroup/shouldianswer/b/l;
.super Ljava/lang/Object;
.source "VoicemailNotification.kt"


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/b/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lorg/mistergroup/shouldianswer/b/l;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/b/l;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/b/l;->a:Lorg/mistergroup/shouldianswer/b/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    .line 20
    :try_start_0
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    .line 21
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v2, "NOTIFICATION: VoicemailNotification.show"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 23
    sget-object v1, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lkotlin/c/f;

    const/4 v7, 0x0

    new-instance v1, Lorg/mistergroup/shouldianswer/b/l$a;

    invoke-direct {v1, v0, p1, v4}, Lorg/mistergroup/shouldianswer/b/l$a;-><init>(Lorg/mistergroup/shouldianswer/MyApp;Ljava/lang/String;Lkotlin/c/c;)V

    move-object v8, v1

    check-cast v8, Lkotlin/e/a/m;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 87
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v0, "VoicemailNotification.show.end"

    invoke-static {p1, v0, v4, v3, v4}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
