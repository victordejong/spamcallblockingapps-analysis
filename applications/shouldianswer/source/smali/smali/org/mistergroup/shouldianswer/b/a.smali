.class public final Lorg/mistergroup/shouldianswer/b/a;
.super Ljava/lang/Object;
.source "BlockNotification.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mistergroup/shouldianswer/b/a$a;
    }
.end annotation


# static fields
.field public static final a:Lorg/mistergroup/shouldianswer/b/a$a;

.field private static b:Ljava/lang/String;

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mistergroup/shouldianswer/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mistergroup/shouldianswer/b/a$a;-><init>(Lkotlin/e/b/e;)V

    sput-object v0, Lorg/mistergroup/shouldianswer/b/a;->a:Lorg/mistergroup/shouldianswer/b/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 26
    sput-object p0, Lorg/mistergroup/shouldianswer/b/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lorg/mistergroup/shouldianswer/model/NumberInfo;J)V
    .locals 11

    const-string v0, "numberInfo"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v0

    .line 29
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "NOTIFICATION: BlockNotification.show"

    invoke-static {v1, v4, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 30
    sget-object v1, Lorg/mistergroup/shouldianswer/utils/m;->a:Lorg/mistergroup/shouldianswer/utils/m;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/utils/m;->h()V

    .line 31
    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/model/NumberInfo;->b()Ljava/lang/String;

    move-result-object v1

    .line 32
    sget-object v4, Lorg/mistergroup/shouldianswer/b/a;->b:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lorg/mistergroup/shouldianswer/utils/w;->a:Lorg/mistergroup/shouldianswer/utils/w;

    sget-object v5, Lorg/mistergroup/shouldianswer/b/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lorg/mistergroup/shouldianswer/utils/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-wide v6, Lorg/mistergroup/shouldianswer/b/a;->c:J

    sub-long/2addr v4, v6

    const/16 v6, 0xfa0

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 34
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string p2, "BlockNotification.show terminate due lastNumber=number"

    invoke-static {p1, p2, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 38
    :cond_0
    sput-object v1, Lorg/mistergroup/shouldianswer/b/a;->b:Ljava/lang/String;

    .line 39
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sput-wide v4, Lorg/mistergroup/shouldianswer/b/a;->c:J

    .line 41
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string v5, "BlockNotification.show.begin"

    invoke-static {v4, v5, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 42
    sget-object v4, Lorg/mistergroup/shouldianswer/utils/a;->a:Lorg/mistergroup/shouldianswer/utils/a;

    const-string v5, "BlockNotification.Show"

    invoke-virtual {v4, v5}, Lorg/mistergroup/shouldianswer/utils/a;->c(Ljava/lang/String;)V

    .line 43
    sget-object v4, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/ad;

    invoke-static {}, Lorg/mistergroup/shouldianswer/utils/c;->a()Lkotlinx/coroutines/y;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lkotlin/c/f;

    const/4 v7, 0x0

    new-instance v4, Lorg/mistergroup/shouldianswer/b/a$b;

    invoke-direct {v4, p1, p2, p3, v3}, Lorg/mistergroup/shouldianswer/b/a$b;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;JLkotlin/c/c;)V

    move-object v8, v4

    check-cast v8, Lkotlin/e/a/m;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 46
    sget-object p2, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {p2}, Lorg/mistergroup/shouldianswer/model/ai;->r()Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    .line 48
    :cond_1
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 49
    sget-object p2, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v4, p2

    check-cast v4, Lkotlinx/coroutines/ad;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance p2, Lorg/mistergroup/shouldianswer/b/a$c;

    invoke-direct {p2, p1, v0, v1, v3}, Lorg/mistergroup/shouldianswer/b/a$c;-><init>(Lorg/mistergroup/shouldianswer/model/NumberInfo;Lorg/mistergroup/shouldianswer/MyApp;Ljava/lang/String;Lkotlin/c/c;)V

    move-object v7, p2

    check-cast v7, Lkotlin/e/a/m;

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    .line 98
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const-string p2, "BlockNotification.show.end"

    invoke-static {p1, p2, v3, v2, v3}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
