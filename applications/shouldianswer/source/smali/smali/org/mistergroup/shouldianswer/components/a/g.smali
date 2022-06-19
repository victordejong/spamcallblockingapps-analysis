.class public final Lorg/mistergroup/shouldianswer/components/a/g;
.super Landroidx/lifecycle/LiveData;
.source "ContactsLiveData.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Ljava/util/List<",
        "Lorg/mistergroup/shouldianswer/components/a/a;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final e:Lorg/mistergroup/shouldianswer/components/a/g;

.field private static final f:Ljava/util/Observer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lorg/mistergroup/shouldianswer/components/a/g;

    invoke-direct {v0}, Lorg/mistergroup/shouldianswer/components/a/g;-><init>()V

    sput-object v0, Lorg/mistergroup/shouldianswer/components/a/g;->e:Lorg/mistergroup/shouldianswer/components/a/g;

    .line 20
    sget-object v0, Lorg/mistergroup/shouldianswer/components/a/g$a;->a:Lorg/mistergroup/shouldianswer/components/a/g$a;

    check-cast v0, Ljava/util/Observer;

    sput-object v0, Lorg/mistergroup/shouldianswer/components/a/g;->f:Ljava/util/Observer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    return-void
.end method

.method private final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mistergroup/shouldianswer/components/a/a;",
            ">;)V"
        }
    .end annotation

    .line 36
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ai;->a:Lorg/mistergroup/shouldianswer/model/ai;

    invoke-virtual {v0}, Lorg/mistergroup/shouldianswer/model/ai;->I()Z

    move-result v0

    .line 38
    :try_start_0
    new-instance v1, Lorg/mistergroup/shouldianswer/components/a/g$b;

    invoke-direct {v1, v0}, Lorg/mistergroup/shouldianswer/components/a/g$b;-><init>(Z)V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {p1, v1}, Lkotlin/a/g;->a(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 53
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/Exception;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Lorg/mistergroup/shouldianswer/components/a/g;Ljava/util/List;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lorg/mistergroup/shouldianswer/components/a/g;->a(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic b(Lorg/mistergroup/shouldianswer/components/a/g;Ljava/util/List;)V
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lorg/mistergroup/shouldianswer/components/a/g;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected b()V
    .locals 4

    .line 26
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "ContactsLiveData.onActive"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 27
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ad;->a:Lorg/mistergroup/shouldianswer/model/ad;

    sget-object v1, Lorg/mistergroup/shouldianswer/components/a/g;->f:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/ad;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method protected c()V
    .locals 4

    .line 31
    sget-object v0, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 v1, 0x0

    const-string v2, "ContactsLiveData.onInactive"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 32
    sget-object v0, Lorg/mistergroup/shouldianswer/model/ad;->a:Lorg/mistergroup/shouldianswer/model/ad;

    sget-object v1, Lorg/mistergroup/shouldianswer/components/a/g;->f:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lorg/mistergroup/shouldianswer/model/ad;->deleteObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public final e()V
    .locals 7

    .line 58
    sget-object v0, Lkotlinx/coroutines/bd;->a:Lkotlinx/coroutines/bd;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/ad;

    new-instance v0, Lorg/mistergroup/shouldianswer/components/a/g$c;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/mistergroup/shouldianswer/components/a/g$c;-><init>(Lkotlin/c/c;)V

    move-object v4, v0

    check-cast v4, Lkotlin/e/a/m;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/e;->b(Lkotlinx/coroutines/ad;Lkotlin/c/f;Lkotlinx/coroutines/ae;Lkotlin/e/a/m;ILjava/lang/Object;)Lkotlinx/coroutines/bk;

    return-void
.end method
