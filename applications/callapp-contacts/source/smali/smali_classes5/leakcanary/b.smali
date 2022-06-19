.class public final Lleakcanary/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008\u000fJ\u000e\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R,\u0010\u0005\u001a \u0012\u0004\u0012\u00020\u0007\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\t0\u0008j\u0008\u0012\u0004\u0012\u00020\t`\n\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lleakcanary/ViewLocationHolderLeakFix;",
        "",
        "()V",
        "failedClearing",
        "",
        "groupAndOutChildren",
        "Lkotlin/Pair;",
        "Landroid/view/ViewGroup;",
        "Ljava/util/ArrayList;",
        "Landroid/view/View;",
        "Lkotlin/collections/ArrayList;",
        "applyFix",
        "",
        "application",
        "Landroid/app/Application;",
        "applyFix$plumber_android_release",
        "clearStaticPool",
        "uncheckedClearStaticPool",
        "plumber-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lleakcanary/b;

.field private static b:Lkotlin/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/n<",
            "+",
            "Landroid/view/ViewGroup;",
            "+",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lleakcanary/b;

    invoke-direct {v0}, Lleakcanary/b;-><init>()V

    sput-object v0, Lleakcanary/b;->a:Lleakcanary/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 2

    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    return-void

    .line 29
    :cond_0
    new-instance v0, Lleakcanary/b$a;

    invoke-direct {v0, p0}, Lleakcanary/b$a;-><init>(Landroid/app/Application;)V

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static final synthetic b(Landroid/app/Application;)V
    .locals 4

    .line 1059
    sget-boolean v0, Lleakcanary/b;->c:Z

    if-nez v0, :cond_3

    .line 1063
    :try_start_0
    sget-object v0, Lleakcanary/b;->b:Lkotlin/n;

    if-nez v0, :cond_1

    .line 1064
    new-instance v0, Landroid/widget/FrameLayout;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 1067
    new-instance v2, Landroid/view/View;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1068
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1070
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, p0}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object p0

    sput-object p0, Lleakcanary/b;->b:Lkotlin/n;

    .line 1072
    :cond_1
    sget-object p0, Lleakcanary/b;->b:Lkotlin/n;

    if-nez p0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/p;->a()V

    .line 2000
    :cond_2
    iget-object v0, p0, Lkotlin/n;->a:Ljava/lang/Object;

    .line 1072
    check-cast v0, Landroid/view/ViewGroup;

    .line 3000
    iget-object p0, p0, Lkotlin/n;->b:Ljava/lang/Object;

    .line 1072
    check-cast p0, Ljava/util/ArrayList;

    .line 1073
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1075
    :catchall_0
    sget-object p0, Ld/a;->a:Ld/a;

    const/4 p0, 0x1

    .line 1078
    sput-boolean p0, Lleakcanary/b;->c:Z

    :cond_3
    return-void
.end method
