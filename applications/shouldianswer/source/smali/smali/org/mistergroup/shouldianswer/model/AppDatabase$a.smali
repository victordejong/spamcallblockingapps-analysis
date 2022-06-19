.class public final Lorg/mistergroup/shouldianswer/model/AppDatabase$a;
.super Ljava/lang/Object;
.source "AppDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/model/AppDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/e/b/e;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/mistergroup/shouldianswer/model/AppDatabase$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lorg/mistergroup/shouldianswer/model/AppDatabase;
    .locals 4

    .line 38
    invoke-static {}, Lorg/mistergroup/shouldianswer/model/AppDatabase;->p()Lorg/mistergroup/shouldianswer/model/AppDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    const-class v0, Lorg/mistergroup/shouldianswer/model/AppDatabase;

    invoke-static {v0}, Lkotlin/e/b/n;->a(Ljava/lang/Class;)Lkotlin/g/b;

    move-result-object v0

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lorg/mistergroup/shouldianswer/MyApp;->c:Lorg/mistergroup/shouldianswer/MyApp$a;

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/MyApp$a;->a()Lorg/mistergroup/shouldianswer/MyApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mistergroup/shouldianswer/MyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/mistergroup/shouldianswer/model/AppDatabase;

    const-string v3, "siadb6"

    invoke-static {v1, v2, v3}, Landroidx/room/i;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/j$a;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroidx/room/j$a;->a()Landroidx/room/j;

    move-result-object v1

    check-cast v1, Lorg/mistergroup/shouldianswer/model/AppDatabase;

    invoke-static {v1}, Lorg/mistergroup/shouldianswer/model/AppDatabase;->a(Lorg/mistergroup/shouldianswer/model/AppDatabase;)V

    .line 44
    sget-object v1, Lkotlin/o;->a:Lkotlin/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 46
    :cond_0
    :goto_0
    invoke-static {}, Lorg/mistergroup/shouldianswer/model/AppDatabase;->p()Lorg/mistergroup/shouldianswer/model/AppDatabase;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type org.mistergroup.shouldianswer.model.AppDatabase"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
