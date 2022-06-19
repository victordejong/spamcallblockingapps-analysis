.class public final synthetic Lv5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/f;


# static fields
.field public static final synthetic b:Lv5/c;

.field public static final synthetic c:Lv5/c;

.field public static final synthetic d:Lv5/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lv5/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lv5/c;-><init>(I)V

    sput-object v0, Lv5/c;->b:Lv5/c;

    new-instance v0, Lv5/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lv5/c;-><init>(I)V

    sput-object v0, Lv5/c;->c:Lv5/c;

    new-instance v0, Lv5/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lv5/c;-><init>(I)V

    sput-object v0, Lv5/c;->d:Lv5/c;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lv5/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lz4/d;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lv5/c;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lcom/google/firebase/perf/FirebasePerfRegistrar;->a(Lz4/d;)Lc6/a;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_1
    new-instance v0, Lv5/d;

    const-class v1, Landroid/content/Context;

    check-cast p1, Lz4/t;

    invoke-virtual {p1, v1}, Lz4/t;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lv5/e;

    invoke-virtual {p1, v2}, Lz4/t;->b(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lv5/d;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object v0

    .line 2
    :goto_0
    new-instance v0, Lp6/b;

    const-class v1, Lp6/d;

    .line 3
    check-cast p1, Lz4/t;

    invoke-virtual {p1, v1}, Lz4/t;->b(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    .line 4
    sget-object v1, Lp6/c;->b:Lp6/c;

    if-nez v1, :cond_1

    .line 5
    const-class v2, Lp6/c;

    monitor-enter v2

    .line 6
    :try_start_0
    sget-object v1, Lp6/c;->b:Lp6/c;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lp6/c;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lp6/c;-><init>(I)V

    sput-object v1, Lp6/c;->b:Lp6/c;

    .line 8
    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 9
    :cond_1
    :goto_1
    invoke-direct {v0, p1, v1}, Lp6/b;-><init>(Ljava/util/Set;Lp6/c;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
