.class public Lf/m;
.super Lf/l;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/e$a;
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/m$b;,
        Lf/m$g;,
        Lf/m$i;,
        Lf/m$h;,
        Lf/m$f;,
        Lf/m$c;,
        Lf/m$j;,
        Lf/m$k;,
        Lf/m$d;,
        Lf/m$l;,
        Lf/m$e;
    }
.end annotation


# static fields
.field public static final Z:Ls/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final a0:[I

.field public static final b0:Z

.field public static final c0:Z


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:[Lf/m$k;

.field public F:Lf/m$k;

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Landroid/content/res/Configuration;

.field public L:I

.field public M:I

.field public N:Z

.field public O:Z

.field public P:Lf/m$h;

.field public R:Lf/m$h;

.field public S:Z

.field public T:I

.field public final U:Ljava/lang/Runnable;

.field public V:Z

.field public W:Landroid/graphics/Rect;

.field public X:Landroid/graphics/Rect;

.field public Y:Lf/s;

.field public final c:Ljava/lang/Object;

.field public final d:Landroid/content/Context;

.field public e:Landroid/view/Window;

.field public f:Lf/m$f;

.field public final g:Lf/k;

.field public h:Lf/a;

.field public i:Landroid/view/MenuInflater;

.field public j:Ljava/lang/CharSequence;

.field public k:Landroidx/appcompat/widget/f0;

.field public l:Lf/m$d;

.field public m:Lf/m$l;

.field public n:Lk/a;

.field public o:Landroidx/appcompat/widget/ActionBarContextView;

.field public p:Landroid/widget/PopupWindow;

.field public q:Ljava/lang/Runnable;

.field public r:Lm0/y;

.field public s:Z

.field public t:Landroid/view/ViewGroup;

.field public u:Landroid/widget/TextView;

.field public v:Landroid/view/View;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ls/g;

    invoke-direct {v0}, Ls/g;-><init>()V

    sput-object v0, Lf/m;->Z:Ls/g;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010054

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2
    sput-object v1, Lf/m;->a0:[I

    .line 3
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v2, "robolectric"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    sput-boolean v1, Lf/m;->b0:Z

    .line 5
    sput-boolean v0, Lf/m;->c0:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Lf/k;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lf/l;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/m;->r:Lm0/y;

    const/16 v1, -0x64

    .line 3
    iput v1, p0, Lf/m;->L:I

    .line 4
    new-instance v2, Lf/m$a;

    invoke-direct {v2, p0}, Lf/m$a;-><init>(Lf/m;)V

    iput-object v2, p0, Lf/m;->U:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lf/m;->d:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lf/m;->g:Lf/k;

    .line 7
    iput-object p4, p0, Lf/m;->c:Ljava/lang/Object;

    .line 8
    instance-of p3, p4, Landroid/app/Dialog;

    if-eqz p3, :cond_2

    :goto_0
    if-eqz p1, :cond_1

    .line 9
    instance-of p3, p1, Lf/j;

    if-eqz p3, :cond_0

    .line 10
    check-cast p1, Lf/j;

    goto :goto_1

    .line 11
    :cond_0
    instance-of p3, p1, Landroid/content/ContextWrapper;

    if-eqz p3, :cond_1

    .line 12
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Lf/j;->r()Lf/l;

    move-result-object p1

    invoke-virtual {p1}, Lf/l;->g()I

    move-result p1

    iput p1, p0, Lf/m;->L:I

    .line 14
    :cond_2
    iget p1, p0, Lf/m;->L:I

    if-ne p1, v1, :cond_3

    .line 15
    sget-object p1, Lf/m;->Z:Ls/g;

    iget-object p3, p0, Lf/m;->c:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 16
    invoke-virtual {p1, p3, v0}, Ls/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 17
    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_3

    .line 18
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lf/m;->L:I

    .line 19
    iget-object p3, p0, Lf/m;->c:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ls/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p2, :cond_4

    .line 20
    invoke-virtual {p0, p2}, Lf/m;->D(Landroid/view/Window;)V

    .line 21
    :cond_4
    invoke-static {}, Landroidx/appcompat/widget/j;->e()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lf/m;->j:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/f0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lf/m;->h:Lf/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lf/a;->r(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lf/m;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public B()Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lf/m;->C(Z)Z

    move-result v0

    return v0
.end method

.method public final C(Z)Z
    .locals 12

    .line 1
    iget-boolean v0, p0, Lf/m;->J:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lf/m;->L:I

    const/16 v2, -0x64

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, -0x64

    .line 3
    :goto_0
    iget-object v2, p0, Lf/m;->d:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lf/m;->U(Landroid/content/Context;I)I

    move-result v2

    .line 4
    iget-object v3, p0, Lf/m;->d:Landroid/content/Context;

    const/4 v4, 0x0

    .line 5
    invoke-virtual {p0, v3, v2, v4}, Lf/m;->H(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 6
    iget-boolean v3, p0, Lf/m;->O:Z

    const/16 v5, 0x18

    const/4 v6, 0x1

    if-nez v3, :cond_6

    iget-object v3, p0, Lf/m;->c:Ljava/lang/Object;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_6

    .line 7
    iget-object v3, p0, Lf/m;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_4

    .line 8
    :cond_2
    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_3

    const/high16 v7, 0x100c0000

    goto :goto_1

    :cond_3
    if-lt v7, v5, :cond_4

    const/high16 v7, 0xc0000

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    .line 9
    :goto_1
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, p0, Lf/m;->d:Landroid/content/Context;

    iget-object v10, p0, Lf/m;->c:Ljava/lang/Object;

    .line 10
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    invoke-virtual {v3, v8, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 12
    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lf/m;->N:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 13
    :catch_0
    iput-boolean v1, p0, Lf/m;->N:Z

    .line 14
    :cond_6
    :goto_3
    iput-boolean v6, p0, Lf/m;->O:Z

    .line 15
    iget-boolean v3, p0, Lf/m;->N:Z

    .line 16
    :goto_4
    iget-object v7, p0, Lf/m;->K:Landroid/content/res/Configuration;

    if-nez v7, :cond_7

    .line 17
    iget-object v7, p0, Lf/m;->d:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 18
    :cond_7
    iget v7, v7, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    .line 19
    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v8, 0x1c

    const/16 v9, 0x17

    if-eq v7, v2, :cond_c

    if-eqz p1, :cond_c

    if-nez v3, :cond_c

    .line 20
    iget-boolean p1, p0, Lf/m;->H:Z

    if-eqz p1, :cond_c

    sget-boolean p1, Lf/m;->b0:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lf/m;->I:Z

    if-eqz p1, :cond_c

    :cond_8
    iget-object p1, p0, Lf/m;->c:Ljava/lang/Object;

    instance-of v10, p1, Landroid/app/Activity;

    if-eqz v10, :cond_c

    check-cast p1, Landroid/app/Activity;

    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    move-result p1

    if-nez p1, :cond_c

    .line 22
    iget-object p1, p0, Lf/m;->c:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    sget v10, Lc0/a;->b:I

    .line 23
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v8, :cond_9

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    goto :goto_5

    :cond_9
    if-gt v10, v9, :cond_a

    .line 25
    new-instance v10, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    new-instance v11, Lc0/b;

    invoke-direct {v11, p1}, Lc0/b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 27
    :cond_a
    invoke-static {p1}, Lc0/d;->b(Landroid/app/Activity;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    :cond_b
    :goto_5
    const/4 p1, 0x1

    goto :goto_6

    :cond_c
    const/4 p1, 0x0

    :goto_6
    if-nez p1, :cond_1d

    if-eq v7, v2, :cond_1d

    .line 29
    iget-object p1, p0, Lf/m;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 30
    new-instance v7, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 31
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v10, v10, -0x31

    or-int/2addr v2, v10

    iput v2, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 32
    invoke-virtual {p1, v7, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 33
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1a

    if-ge v2, v10, :cond_19

    if-lt v2, v8, :cond_d

    goto/16 :goto_b

    :cond_d
    const-string v8, "mDrawableCache"

    if-lt v2, v5, :cond_13

    .line 34
    sget-boolean v2, Lf/u;->h:Z

    if-nez v2, :cond_e

    .line 35
    :try_start_1
    const-class v2, Landroid/content/res/Resources;

    const-string v5, "mResourcesImpl"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lf/u;->g:Ljava/lang/reflect/Field;

    .line 36
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    :catch_1
    sput-boolean v6, Lf/u;->h:Z

    .line 38
    :cond_e
    sget-object v2, Lf/u;->g:Ljava/lang/reflect/Field;

    if-nez v2, :cond_f

    goto/16 :goto_b

    .line 39
    :cond_f
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-object p1, v4

    :goto_7
    if-nez p1, :cond_10

    goto/16 :goto_b

    .line 40
    :cond_10
    sget-boolean v2, Lf/u;->b:Z

    if-nez v2, :cond_11

    .line 41
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lf/u;->a:Ljava/lang/reflect/Field;

    .line 42
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_3

    .line 43
    :catch_3
    sput-boolean v6, Lf/u;->b:Z

    .line 44
    :cond_11
    sget-object v2, Lf/u;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_12

    .line 45
    :try_start_4
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    :catch_4
    nop

    :cond_12
    :goto_8
    if-eqz v4, :cond_19

    .line 46
    invoke-static {v4}, Lf/u;->a(Ljava/lang/Object;)V

    goto :goto_b

    :cond_13
    if-lt v2, v9, :cond_17

    .line 47
    sget-boolean v2, Lf/u;->b:Z

    if-nez v2, :cond_14

    .line 48
    :try_start_5
    const-class v2, Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lf/u;->a:Ljava/lang/reflect/Field;

    .line 49
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_5

    .line 50
    :catch_5
    sput-boolean v6, Lf/u;->b:Z

    .line 51
    :cond_14
    sget-object v2, Lf/u;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_15

    .line 52
    :try_start_6
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_9

    :catch_6
    nop

    :cond_15
    :goto_9
    if-nez v4, :cond_16

    goto :goto_b

    .line 53
    :cond_16
    invoke-static {v4}, Lf/u;->a(Ljava/lang/Object;)V

    goto :goto_b

    .line 54
    :cond_17
    sget-boolean v2, Lf/u;->b:Z

    if-nez v2, :cond_18

    .line 55
    :try_start_7
    const-class v2, Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lf/u;->a:Ljava/lang/reflect/Field;

    .line 56
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_7} :catch_7

    .line 57
    :catch_7
    sput-boolean v6, Lf/u;->b:Z

    .line 58
    :cond_18
    sget-object v2, Lf/u;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_19

    .line 59
    :try_start_8
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_8

    move-object v4, p1

    goto :goto_a

    :catch_8
    nop

    :goto_a
    if-eqz v4, :cond_19

    .line 60
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 61
    :cond_19
    :goto_b
    iget p1, p0, Lf/m;->M:I

    if-eqz p1, :cond_1a

    .line 62
    iget-object v2, p0, Lf/m;->d:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->setTheme(I)V

    .line 63
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v9, :cond_1a

    .line 64
    iget-object p1, p0, Lf/m;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget v2, p0, Lf/m;->M:I

    invoke-virtual {p1, v2, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_1a
    if-eqz v3, :cond_1e

    .line 65
    iget-object p1, p0, Lf/m;->c:Ljava/lang/Object;

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1e

    .line 66
    check-cast p1, Landroid/app/Activity;

    .line 67
    instance-of v2, p1, Landroidx/lifecycle/j;

    if-eqz v2, :cond_1c

    .line 68
    move-object v2, p1

    check-cast v2, Landroidx/lifecycle/j;

    invoke-interface {v2}, Landroidx/lifecycle/j;->getLifecycle()Landroidx/lifecycle/f;

    move-result-object v2

    .line 69
    check-cast v2, Landroidx/lifecycle/k;

    .line 70
    iget-object v2, v2, Landroidx/lifecycle/k;->b:Landroidx/lifecycle/f$c;

    .line 71
    sget-object v3, Landroidx/lifecycle/f$c;->c:Landroidx/lifecycle/f$c;

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    if-eqz v1, :cond_1e

    .line 73
    invoke-virtual {p1, v7}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_c

    .line 74
    :cond_1c
    iget-boolean v1, p0, Lf/m;->I:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lf/m;->J:Z

    if-nez v1, :cond_1e

    .line 75
    invoke-virtual {p1, v7}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_c

    :cond_1d
    move v6, p1

    :cond_1e
    :goto_c
    if-eqz v6, :cond_1f

    .line 76
    iget-object p1, p0, Lf/m;->c:Ljava/lang/Object;

    instance-of v1, p1, Lf/j;

    if-eqz v1, :cond_1f

    .line 77
    check-cast p1, Lf/j;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    if-nez v0, :cond_20

    .line 78
    iget-object p1, p0, Lf/m;->d:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lf/m;->P(Landroid/content/Context;)Lf/m$h;

    move-result-object p1

    invoke-virtual {p1}, Lf/m$h;->e()V

    goto :goto_d

    .line 79
    :cond_20
    iget-object p1, p0, Lf/m;->P:Lf/m$h;

    if-eqz p1, :cond_21

    .line 80
    invoke-virtual {p1}, Lf/m$h;->a()V

    :cond_21
    :goto_d
    const/4 p1, 0x3

    if-ne v0, p1, :cond_23

    .line 81
    iget-object p1, p0, Lf/m;->d:Landroid/content/Context;

    .line 82
    iget-object v0, p0, Lf/m;->R:Lf/m$h;

    if-nez v0, :cond_22

    .line 83
    new-instance v0, Lf/m$g;

    invoke-direct {v0, p0, p1}, Lf/m$g;-><init>(Lf/m;Landroid/content/Context;)V

    iput-object v0, p0, Lf/m;->R:Lf/m$h;

    .line 84
    :cond_22
    iget-object p1, p0, Lf/m;->R:Lf/m$h;

    .line 85
    invoke-virtual {p1}, Lf/m$h;->e()V

    goto :goto_e

    .line 86
    :cond_23
    iget-object p1, p0, Lf/m;->R:Lf/m$h;

    if-eqz p1, :cond_24

    .line 87
    invoke-virtual {p1}, Lf/m$h;->a()V

    :cond_24
    :goto_e
    return v6
.end method

.method public final D(Landroid/view/Window;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/m;->e:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3
    instance-of v2, v0, Lf/m$f;

    if-nez v2, :cond_1

    .line 4
    new-instance v1, Lf/m$f;

    invoke-direct {v1, p0, v0}, Lf/m$f;-><init>(Lf/m;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Lf/m;->f:Lf/m$f;

    .line 5
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 6
    iget-object v0, p0, Lf/m;->d:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lf/m;->a0:[I

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/z0;->p(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/z0;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/z0;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_0
    iget-object v0, v0, Landroidx/appcompat/widget/z0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    iput-object p1, p0, Lf/m;->e:Landroid/view/Window;

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public E(ILf/m$k;Landroid/view/Menu;)V
    .locals 0

    if-nez p3, :cond_0

    .line 1
    iget-object p3, p2, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    .line 2
    :cond_0
    iget-boolean p2, p2, Lf/m$k;->m:Z

    if-nez p2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean p2, p0, Lf/m;->J:Z

    if-nez p2, :cond_2

    .line 4
    iget-object p2, p0, Lf/m;->f:Lf/m$f;

    .line 5
    iget-object p2, p2, Lk/h;->a:Landroid/view/Window$Callback;

    .line 6
    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_2
    return-void
.end method

.method public F(Landroidx/appcompat/view/menu/e;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/m;->D:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf/m;->D:Z

    .line 3
    iget-object v0, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    invoke-interface {v0}, Landroidx/appcompat/widget/f0;->l()V

    .line 4
    invoke-virtual {p0}, Lf/m;->R()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v1, p0, Lf/m;->J:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lf/m;->D:Z

    return-void
.end method

.method public G(Lf/m$k;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    iget v0, p1, Lf/m$k;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroidx/appcompat/widget/f0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p0, p1}, Lf/m;->F(Landroidx/appcompat/view/menu/e;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lf/m;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v2, p1, Lf/m$k;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Lf/m$k;->e:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 7
    iget p2, p1, Lf/m$k;->a:I

    invoke-virtual {p0, p2, p1, v1}, Lf/m;->E(ILf/m$k;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p1, Lf/m$k;->k:Z

    .line 9
    iput-boolean p2, p1, Lf/m$k;->l:Z

    .line 10
    iput-boolean p2, p1, Lf/m$k;->m:Z

    .line 11
    iput-object v1, p1, Lf/m$k;->f:Landroid/view/View;

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p1, Lf/m$k;->n:Z

    .line 13
    iget-object p2, p0, Lf/m;->F:Lf/m$k;

    if-ne p2, p1, :cond_2

    .line 14
    iput-object v1, p0, Lf/m;->F:Lf/m$k;

    :cond_2
    return-void
.end method

.method public final H(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    .line 3
    :goto_0
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p2, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p2, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 6
    :cond_2
    iget p3, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p1, p3

    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    return-object p2
.end method

.method public I(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lf/m;->c:Ljava/lang/Object;

    instance-of v1, v0, Lm0/e$a;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, Lf/r;

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lf/m;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0, p1}, Lm0/e;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lf/m;->f:Lf/m$f;

    .line 6
    iget-object v0, v0, Lk/h;->a:Landroid/view/Window$Callback;

    .line 7
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x4

    if-eqz v3, :cond_8

    if-eq v0, v5, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_16

    .line 11
    invoke-virtual {p0, v4}, Lf/m;->Q(I)Lf/m$k;

    move-result-object v0

    .line 12
    iget-boolean v1, v0, Lf/m$k;->m:Z

    if-nez v1, :cond_16

    .line 13
    invoke-virtual {p0, v0, p1}, Lf/m;->X(Lf/m$k;Landroid/view/KeyEvent;)Z

    goto/16 :goto_8

    .line 14
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lf/m;->G:Z

    :cond_7
    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_8
    if-eq v0, v5, :cond_12

    if-eq v0, v1, :cond_9

    goto :goto_2

    .line 15
    :cond_9
    iget-object v0, p0, Lf/m;->n:Lk/a;

    if-eqz v0, :cond_a

    goto/16 :goto_8

    .line 16
    :cond_a
    invoke-virtual {p0, v4}, Lf/m;->Q(I)Lf/m$k;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    if-eqz v1, :cond_c

    .line 18
    invoke-interface {v1}, Landroidx/appcompat/widget/f0;->g()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lf/m;->d:Landroid/content/Context;

    .line 19
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_c

    .line 20
    iget-object v1, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    invoke-interface {v1}, Landroidx/appcompat/widget/f0;->b()Z

    move-result v1

    if-nez v1, :cond_b

    .line 21
    iget-boolean v1, p0, Lf/m;->J:Z

    if-nez v1, :cond_f

    invoke-virtual {p0, v0, p1}, Lf/m;->X(Lf/m$k;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 22
    iget-object p1, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    invoke-interface {p1}, Landroidx/appcompat/widget/f0;->f()Z

    move-result p1

    goto :goto_5

    .line 23
    :cond_b
    iget-object p1, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    invoke-interface {p1}, Landroidx/appcompat/widget/f0;->e()Z

    move-result p1

    goto :goto_5

    .line 24
    :cond_c
    iget-boolean v1, v0, Lf/m$k;->m:Z

    if-nez v1, :cond_10

    iget-boolean v3, v0, Lf/m$k;->l:Z

    if-eqz v3, :cond_d

    goto :goto_4

    .line 25
    :cond_d
    iget-boolean v1, v0, Lf/m$k;->k:Z

    if-eqz v1, :cond_f

    .line 26
    iget-boolean v1, v0, Lf/m$k;->o:Z

    if-eqz v1, :cond_e

    .line 27
    iput-boolean v4, v0, Lf/m$k;->k:Z

    .line 28
    invoke-virtual {p0, v0, p1}, Lf/m;->X(Lf/m$k;Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3

    :cond_e
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_f

    .line 29
    invoke-virtual {p0, v0, p1}, Lf/m;->V(Lf/m$k;Landroid/view/KeyEvent;)V

    const/4 p1, 0x1

    goto :goto_5

    :cond_f
    const/4 p1, 0x0

    goto :goto_5

    .line 30
    :cond_10
    :goto_4
    invoke-virtual {p0, v0, v2}, Lf/m;->G(Lf/m$k;Z)V

    move p1, v1

    :goto_5
    if-eqz p1, :cond_16

    .line 31
    iget-object p1, p0, Lf/m;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_11

    .line 33
    invoke-virtual {p1, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_8

    :cond_11
    const-string p1, "AppCompatDelegate"

    const-string v0, "Couldn\'t get audio manager"

    .line 34
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 35
    :cond_12
    iget-boolean p1, p0, Lf/m;->G:Z

    .line 36
    iput-boolean v4, p0, Lf/m;->G:Z

    .line 37
    invoke-virtual {p0, v4}, Lf/m;->Q(I)Lf/m$k;

    move-result-object v0

    .line 38
    iget-boolean v1, v0, Lf/m$k;->m:Z

    if-eqz v1, :cond_13

    if-nez p1, :cond_16

    .line 39
    invoke-virtual {p0, v0, v2}, Lf/m;->G(Lf/m$k;Z)V

    goto :goto_8

    .line 40
    :cond_13
    iget-object p1, p0, Lf/m;->n:Lk/a;

    if-eqz p1, :cond_14

    .line 41
    invoke-virtual {p1}, Lk/a;->c()V

    goto :goto_6

    .line 42
    :cond_14
    invoke-virtual {p0}, Lf/m;->S()V

    .line 43
    iget-object p1, p0, Lf/m;->h:Lf/a;

    if-eqz p1, :cond_15

    .line 44
    invoke-virtual {p1}, Lf/a;->b()Z

    move-result p1

    if-eqz p1, :cond_15

    :goto_6
    const/4 p1, 0x1

    goto :goto_7

    :cond_15
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_7

    :cond_16
    :goto_8
    return v2
.end method

.method public J(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lf/m;->Q(I)Lf/m$k;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    if-eqz v1, :cond_1

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v2, v0, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/e;->v(Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 6
    iput-object v1, v0, Lf/m$k;->p:Landroid/os/Bundle;

    .line 7
    :cond_0
    iget-object v1, v0, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/e;->y()V

    .line 8
    iget-object v1, v0, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/e;->clear()V

    :cond_1
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lf/m$k;->o:Z

    .line 10
    iput-boolean v1, v0, Lf/m$k;->n:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    .line 11
    :cond_2
    iget-object p1, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lf/m;->Q(I)Lf/m$k;

    move-result-object v0

    .line 13
    iput-boolean p1, v0, Lf/m$k;->k:Z

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, v0, p1}, Lf/m;->X(Lf/m$k;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m;->r:Lm0/y;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lm0/y;->b()V

    :cond_0
    return-void
.end method

.method public final L()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lf/m;->s:Z

    if-nez v0, :cond_1b

    .line 2
    iget-object v0, p0, Lf/m;->d:Landroid/content/Context;

    sget-object v1, Lh8/k;->j:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x75

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v2, 0x7e

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v4, 0x6c

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0, v5}, Lf/m;->u(I)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0, v4}, Lf/m;->u(I)Z

    :cond_1
    :goto_0
    const/16 v1, 0x76

    .line 8
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v2, 0x6d

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0, v2}, Lf/m;->u(I)Z

    :cond_2
    const/16 v1, 0x77

    .line 10
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    .line 11
    invoke-virtual {p0, v1}, Lf/m;->u(I)Z

    .line 12
    :cond_3
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lf/m;->B:Z

    .line 13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-virtual {p0}, Lf/m;->M()V

    .line 15
    iget-object v0, p0, Lf/m;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 16
    iget-object v0, p0, Lf/m;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 17
    iget-boolean v1, p0, Lf/m;->C:Z

    const/4 v6, 0x0

    if-nez v1, :cond_9

    .line 18
    iget-boolean v1, p0, Lf/m;->B:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0c000c

    .line 19
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    iput-boolean v3, p0, Lf/m;->z:Z

    iput-boolean v3, p0, Lf/m;->y:Z

    goto/16 :goto_2

    .line 21
    :cond_4
    iget-boolean v0, p0, Lf/m;->y:Z

    if-eqz v0, :cond_8

    .line 22
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 23
    iget-object v1, p0, Lf/m;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v7, 0x7f04000b

    invoke-virtual {v1, v7, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 24
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    .line 25
    new-instance v1, Lk/c;

    iget-object v7, p0, Lf/m;->d:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v7, v0}, Lk/c;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 26
    :cond_5
    iget-object v1, p0, Lf/m;->d:Landroid/content/Context;

    .line 27
    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0017

    .line 28
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f09010d

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/f0;

    iput-object v1, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    .line 30
    invoke-virtual {p0}, Lf/m;->R()Landroid/view/Window$Callback;

    move-result-object v7

    invoke-interface {v1, v7}, Landroidx/appcompat/widget/f0;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 31
    iget-boolean v1, p0, Lf/m;->z:Z

    if-eqz v1, :cond_6

    .line 32
    iget-object v1, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/f0;->k(I)V

    .line 33
    :cond_6
    iget-boolean v1, p0, Lf/m;->w:Z

    if-eqz v1, :cond_7

    .line 34
    iget-object v1, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/f0;->k(I)V

    .line 35
    :cond_7
    iget-boolean v1, p0, Lf/m;->x:Z

    if-eqz v1, :cond_b

    .line 36
    iget-object v1, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/f0;->k(I)V

    goto :goto_2

    :cond_8
    move-object v0, v6

    goto :goto_2

    .line 37
    :cond_9
    iget-boolean v1, p0, Lf/m;->A:Z

    if-eqz v1, :cond_a

    const v1, 0x7f0c0016

    .line 38
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_a
    const v1, 0x7f0c0015

    .line 39
    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_b
    :goto_2
    if-eqz v0, :cond_19

    .line 40
    new-instance v1, Lf/n;

    invoke-direct {v1, p0}, Lf/n;-><init>(Lf/m;)V

    sget-object v2, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 41
    invoke-static {v0, v1}, Lm0/v$i;->u(Landroid/view/View;Lm0/m;)V

    .line 42
    iget-object v1, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    if-nez v1, :cond_c

    const v1, 0x7f090383

    .line 43
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lf/m;->u:Landroid/widget/TextView;

    .line 44
    :cond_c
    sget-object v1, Landroidx/appcompat/widget/h1;->a:Ljava/lang/reflect/Method;

    .line 45
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "makeOptionalFitsSystemWindows"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_d

    .line 47
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_d
    new-array v2, v3, [Ljava/lang/Object;

    .line 48
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    :goto_3
    const v1, 0x7f090035

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 50
    iget-object v2, p0, Lf/m;->e:Landroid/view/Window;

    const v7, 0x1020002

    invoke-virtual {v2, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_f

    .line 51
    :goto_4
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-lez v8, :cond_e

    .line 52
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 53
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 54
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_e
    const/4 v8, -0x1

    .line 55
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->setId(I)V

    .line 56
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 57
    instance-of v8, v2, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_f

    .line 58
    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :cond_f
    iget-object v2, p0, Lf/m;->e:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 60
    new-instance v2, Lf/o;

    invoke-direct {v2, p0}, Lf/o;-><init>(Lf/m;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    .line 61
    iput-object v0, p0, Lf/m;->t:Landroid/view/ViewGroup;

    .line 62
    iget-object v0, p0, Lf/m;->c:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_10

    .line 63
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5

    .line 64
    :cond_10
    iget-object v0, p0, Lf/m;->j:Ljava/lang/CharSequence;

    .line 65
    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 66
    iget-object v1, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    if-eqz v1, :cond_11

    .line 67
    invoke-interface {v1, v0}, Landroidx/appcompat/widget/f0;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 68
    :cond_11
    iget-object v1, p0, Lf/m;->h:Lf/a;

    if-eqz v1, :cond_12

    .line 69
    invoke-virtual {v1, v0}, Lf/a;->r(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 70
    :cond_12
    iget-object v1, p0, Lf/m;->u:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    .line 71
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_13
    :goto_6
    iget-object v0, p0, Lf/m;->t:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 73
    iget-object v1, p0, Lf/m;->e:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 75
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .line 76
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 77
    iget-object v8, v0, Landroidx/appcompat/widget/ContentFrameLayout;->g:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 78
    sget-object v1, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 79
    invoke-static {v0}, Lm0/v$g;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 80
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 81
    :cond_14
    iget-object v1, p0, Lf/m;->d:Landroid/content/Context;

    sget-object v2, Lh8/k;->j:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x7c

    .line 82
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v2, 0x7d

    .line 83
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    const/16 v2, 0x7a

    .line 84
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 85
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v6

    .line 86
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_15
    const/16 v2, 0x7b

    .line 87
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 88
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v6

    .line 89
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_16
    const/16 v2, 0x78

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 91
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v6

    .line 92
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    :cond_17
    const/16 v2, 0x79

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 94
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v6

    .line 95
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 96
    :cond_18
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 98
    iput-boolean v5, p0, Lf/m;->s:Z

    .line 99
    invoke-virtual {p0, v3}, Lf/m;->Q(I)Lf/m$k;

    move-result-object v0

    .line 100
    iget-boolean v1, p0, Lf/m;->J:Z

    if-nez v1, :cond_1b

    iget-object v0, v0, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    if-nez v0, :cond_1b

    .line 101
    invoke-virtual {p0, v4}, Lf/m;->T(I)V

    goto :goto_7

    .line 102
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lf/m;->y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf/m;->z:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf/m;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf/m;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lf/m;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_7
    return-void
.end method

.method public final M()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/m;->e:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Lf/m;->c:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf/m;->D(Landroid/view/Window;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lf/m;->e:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public N(Landroid/view/Menu;)Lf/m$k;
    .locals 5

    .line 1
    iget-object v0, p0, Lf/m;->E:[Lf/m$k;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 3
    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    .line 4
    iget-object v4, v3, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final O()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/m;->S()V

    .line 2
    iget-object v0, p0, Lf/m;->h:Lf/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lf/a;->e()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lf/m;->d:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method public final P(Landroid/content/Context;)Lf/m$h;
    .locals 3

    .line 1
    iget-object v0, p0, Lf/m;->P:Lf/m$h;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lf/m$i;

    .line 3
    sget-object v1, Lf/x;->d:Lf/x;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    new-instance v1, Lf/x;

    const-string v2, "location"

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-direct {v1, p1, v2}, Lf/x;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v1, Lf/x;->d:Lf/x;

    .line 7
    :cond_0
    sget-object p1, Lf/x;->d:Lf/x;

    .line 8
    invoke-direct {v0, p0, p1}, Lf/m$i;-><init>(Lf/m;Lf/x;)V

    iput-object v0, p0, Lf/m;->P:Lf/m$h;

    .line 9
    :cond_1
    iget-object p1, p0, Lf/m;->P:Lf/m$h;

    return-object p1
.end method

.method public Q(I)Lf/m$k;
    .locals 4

    .line 1
    iget-object v0, p0, Lf/m;->E:[Lf/m$k;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 2
    new-array v1, v1, [Lf/m$k;

    if-eqz v0, :cond_1

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    :cond_1
    iput-object v1, p0, Lf/m;->E:[Lf/m$k;

    move-object v0, v1

    .line 5
    :cond_2
    aget-object v1, v0, p1

    if-nez v1, :cond_3

    .line 6
    new-instance v1, Lf/m$k;

    invoke-direct {v1, p1}, Lf/m$k;-><init>(I)V

    aput-object v1, v0, p1

    :cond_3
    return-object v1
.end method

.method public final R()Landroid/view/Window$Callback;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/m;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method public final S()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/m;->L()V

    .line 2
    iget-boolean v0, p0, Lf/m;->y:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/m;->h:Lf/a;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lf/m;->c:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 4
    new-instance v0, Lf/y;

    iget-object v1, p0, Lf/m;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Lf/m;->z:Z

    invoke-direct {v0, v1, v2}, Lf/y;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lf/m;->h:Lf/a;

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lf/y;

    iget-object v1, p0, Lf/m;->c:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Lf/y;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Lf/m;->h:Lf/a;

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lf/m;->h:Lf/a;

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v1, p0, Lf/m;->V:Z

    invoke-virtual {v0, v1}, Lf/a;->l(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final T(I)V
    .locals 3

    .line 1
    iget v0, p0, Lf/m;->T:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lf/m;->T:I

    .line 2
    iget-boolean p1, p0, Lf/m;->S:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lf/m;->e:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lf/m;->U:Ljava/lang/Runnable;

    sget-object v2, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 4
    invoke-static {p1, v0}, Lm0/v$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 5
    iput-boolean v1, p0, Lf/m;->S:Z

    :cond_0
    return-void
.end method

.method public U(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_5

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 1
    iget-object p2, p0, Lf/m;->R:Lf/m$h;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lf/m$g;

    invoke-direct {p2, p0, p1}, Lf/m$g;-><init>(Lf/m;Landroid/content/Context;)V

    iput-object p2, p0, Lf/m;->R:Lf/m$h;

    .line 3
    :cond_0
    iget-object p1, p0, Lf/m;->R:Lf/m$h;

    .line 4
    invoke-virtual {p1}, Lf/m$h;->c()I

    move-result p1

    return p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "uimode"

    .line 8
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    .line 9
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_3

    return v1

    .line 10
    :cond_3
    invoke-virtual {p0, p1}, Lf/m;->P(Landroid/content/Context;)Lf/m$h;

    move-result-object p1

    invoke-virtual {p1}, Lf/m$h;->c()I

    move-result p1

    return p1

    :cond_4
    return p2

    :cond_5
    return v1
.end method

.method public final V(Lf/m$k;Landroid/view/KeyEvent;)V
    .locals 12

    .line 1
    iget-boolean v0, p1, Lf/m$k;->m:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lf/m;->J:Z

    if-eqz v0, :cond_0

    goto/16 :goto_c

    .line 2
    :cond_0
    iget v0, p1, Lf/m$k;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lf/m;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Lf/m;->R()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget v3, p1, Lf/m$k;->a:I

    iget-object v4, p1, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0, p1, v1}, Lf/m;->G(Lf/m$k;Z)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lf/m;->d:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-virtual {p0, p1, p2}, Lf/m;->X(Lf/m$k;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 10
    :cond_5
    iget-object p2, p1, Lf/m$k;->e:Landroid/view/ViewGroup;

    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz p2, :cond_7

    iget-boolean v5, p1, Lf/m$k;->n:Z

    if-eqz v5, :cond_6

    goto :goto_1

    .line 11
    :cond_6
    iget-object p2, p1, Lf/m$k;->g:Landroid/view/View;

    if-eqz p2, :cond_19

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 13
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v4, :cond_19

    const/4 v5, -0x1

    goto/16 :goto_a

    :cond_7
    :goto_1
    if-nez p2, :cond_a

    .line 14
    invoke-virtual {p0}, Lf/m;->O()Landroid/content/Context;

    move-result-object p2

    .line 15
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 16
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    const v6, 0x7f040004

    .line 18
    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 19
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_8

    .line 20
    invoke-virtual {v5, v6, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_8
    const v6, 0x7f0403a1

    .line 21
    invoke-virtual {v5, v6, v4, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_9

    .line 23
    invoke-virtual {v5, v4, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_2

    :cond_9
    const v4, 0x7f120210

    .line 24
    invoke-virtual {v5, v4, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 25
    :goto_2
    new-instance v4, Lk/c;

    invoke-direct {v4, p2, v2}, Lk/c;-><init>(Landroid/content/Context;I)V

    .line 26
    invoke-virtual {v4}, Lk/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 27
    iput-object v4, p1, Lf/m$k;->j:Landroid/content/Context;

    .line 28
    sget-object p2, Lh8/k;->j:[I

    invoke-virtual {v4, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v4, 0x56

    .line 29
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Lf/m$k;->b:I

    .line 30
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Lf/m$k;->d:I

    .line 31
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    new-instance p2, Lf/m$j;

    iget-object v4, p1, Lf/m$k;->j:Landroid/content/Context;

    invoke-direct {p2, p0, v4}, Lf/m$j;-><init>(Lf/m;Landroid/content/Context;)V

    iput-object p2, p1, Lf/m$k;->e:Landroid/view/ViewGroup;

    const/16 p2, 0x51

    .line 33
    iput p2, p1, Lf/m$k;->c:I

    goto :goto_3

    .line 34
    :cond_a
    iget-boolean v4, p1, Lf/m$k;->n:Z

    if-eqz v4, :cond_b

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_b

    .line 35
    iget-object p2, p1, Lf/m$k;->e:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 36
    :cond_b
    :goto_3
    iget-object p2, p1, Lf/m$k;->g:Landroid/view/View;

    if-eqz p2, :cond_c

    .line 37
    iput-object p2, p1, Lf/m$k;->f:Landroid/view/View;

    goto :goto_4

    .line 38
    :cond_c
    iget-object p2, p1, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    if-nez p2, :cond_d

    goto :goto_5

    .line 39
    :cond_d
    iget-object p2, p0, Lf/m;->m:Lf/m$l;

    if-nez p2, :cond_e

    .line 40
    new-instance p2, Lf/m$l;

    invoke-direct {p2, p0}, Lf/m$l;-><init>(Lf/m;)V

    iput-object p2, p0, Lf/m;->m:Lf/m$l;

    .line 41
    :cond_e
    iget-object p2, p0, Lf/m;->m:Lf/m$l;

    .line 42
    iget-object v4, p1, Lf/m$k;->i:Landroidx/appcompat/view/menu/c;

    if-nez v4, :cond_f

    .line 43
    new-instance v4, Landroidx/appcompat/view/menu/c;

    iget-object v5, p1, Lf/m$k;->j:Landroid/content/Context;

    const v6, 0x7f0c0010

    invoke-direct {v4, v5, v6}, Landroidx/appcompat/view/menu/c;-><init>(Landroid/content/Context;I)V

    iput-object v4, p1, Lf/m$k;->i:Landroidx/appcompat/view/menu/c;

    .line 44
    iput-object p2, v4, Landroidx/appcompat/view/menu/c;->e:Landroidx/appcompat/view/menu/i$a;

    .line 45
    iget-object p2, p1, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    .line 46
    iget-object v5, p2, Landroidx/appcompat/view/menu/e;->a:Landroid/content/Context;

    invoke-virtual {p2, v4, v5}, Landroidx/appcompat/view/menu/e;->b(Landroidx/appcompat/view/menu/i;Landroid/content/Context;)V

    .line 47
    :cond_f
    iget-object p2, p1, Lf/m$k;->i:Landroidx/appcompat/view/menu/c;

    iget-object v4, p1, Lf/m$k;->e:Landroid/view/ViewGroup;

    .line 48
    iget-object v5, p2, Landroidx/appcompat/view/menu/c;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v5, :cond_11

    .line 49
    iget-object v5, p2, Landroidx/appcompat/view/menu/c;->b:Landroid/view/LayoutInflater;

    const v6, 0x7f0c000d

    invoke-virtual {v5, v6, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object v4, p2, Landroidx/appcompat/view/menu/c;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 50
    iget-object v4, p2, Landroidx/appcompat/view/menu/c;->f:Landroidx/appcompat/view/menu/c$a;

    if-nez v4, :cond_10

    .line 51
    new-instance v4, Landroidx/appcompat/view/menu/c$a;

    invoke-direct {v4, p2}, Landroidx/appcompat/view/menu/c$a;-><init>(Landroidx/appcompat/view/menu/c;)V

    iput-object v4, p2, Landroidx/appcompat/view/menu/c;->f:Landroidx/appcompat/view/menu/c$a;

    .line 52
    :cond_10
    iget-object v4, p2, Landroidx/appcompat/view/menu/c;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v5, p2, Landroidx/appcompat/view/menu/c;->f:Landroidx/appcompat/view/menu/c$a;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    iget-object v4, p2, Landroidx/appcompat/view/menu/c;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v4, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    :cond_11
    iget-object p2, p2, Landroidx/appcompat/view/menu/c;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 55
    iput-object p2, p1, Lf/m$k;->f:Landroid/view/View;

    if-eqz p2, :cond_12

    :goto_4
    const/4 p2, 0x1

    goto :goto_6

    :cond_12
    :goto_5
    const/4 p2, 0x0

    :goto_6
    if-eqz p2, :cond_1a

    .line 56
    iget-object p2, p1, Lf/m$k;->f:Landroid/view/View;

    if-nez p2, :cond_13

    goto :goto_8

    .line 57
    :cond_13
    iget-object p2, p1, Lf/m$k;->g:Landroid/view/View;

    if-eqz p2, :cond_14

    goto :goto_7

    .line 58
    :cond_14
    iget-object p2, p1, Lf/m$k;->i:Landroidx/appcompat/view/menu/c;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/c;->b()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/c$a;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/c$a;->getCount()I

    move-result p2

    if-lez p2, :cond_15

    :goto_7
    const/4 p2, 0x1

    goto :goto_9

    :cond_15
    :goto_8
    const/4 p2, 0x0

    :goto_9
    if-nez p2, :cond_16

    goto :goto_b

    .line 59
    :cond_16
    iget-object p2, p1, Lf/m$k;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_17

    .line 60
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 61
    :cond_17
    iget v4, p1, Lf/m$k;->b:I

    .line 62
    iget-object v5, p1, Lf/m$k;->e:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 63
    iget-object v4, p1, Lf/m$k;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 64
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_18

    .line 65
    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p1, Lf/m$k;->f:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    :cond_18
    iget-object v4, p1, Lf/m$k;->e:Landroid/view/ViewGroup;

    iget-object v5, p1, Lf/m$k;->f:Landroid/view/View;

    invoke-virtual {v4, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object p2, p1, Lf/m$k;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_19

    .line 68
    iget-object p2, p1, Lf/m$k;->f:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_19
    const/4 v5, -0x2

    .line 69
    :goto_a
    iput-boolean v2, p1, Lf/m$k;->l:Z

    .line 70
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3ea

    const/high16 v10, 0x820000

    const/4 v11, -0x3

    move-object v4, p2

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 71
    iget v2, p1, Lf/m$k;->c:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 72
    iget v2, p1, Lf/m$k;->d:I

    iput v2, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 73
    iget-object v2, p1, Lf/m$k;->e:Landroid/view/ViewGroup;

    invoke-interface {v0, v2, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iput-boolean v1, p1, Lf/m$k;->m:Z

    return-void

    .line 75
    :cond_1a
    :goto_b
    iput-boolean v1, p1, Lf/m$k;->n:Z

    :cond_1b
    :goto_c
    return-void
.end method

.method public final W(Lf/m$k;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p1, Lf/m$k;->k:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lf/m;->X(Lf/m$k;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, p2, p3, p4}, Landroidx/appcompat/view/menu/e;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    .line 4
    iget-object p3, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    if-nez p3, :cond_3

    .line 5
    invoke-virtual {p0, p1, p2}, Lf/m;->G(Lf/m$k;Z)V

    :cond_3
    return v1
.end method

.method public final X(Lf/m$k;Landroid/view/KeyEvent;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, Lf/m;->J:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p1, Lf/m$k;->k:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lf/m;->F:Lf/m$k;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 4
    invoke-virtual {p0, v0, v1}, Lf/m;->G(Lf/m$k;Z)V

    .line 5
    :cond_2
    invoke-virtual {p0}, Lf/m;->R()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget v3, p1, Lf/m$k;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Lf/m$k;->g:Landroid/view/View;

    .line 7
    :cond_3
    iget v3, p1, Lf/m$k;->a:I

    const/16 v4, 0x6c

    if-eqz v3, :cond_5

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    .line 8
    iget-object v5, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    if-eqz v5, :cond_6

    .line 9
    invoke-interface {v5}, Landroidx/appcompat/widget/f0;->c()V

    .line 10
    :cond_6
    iget-object v5, p1, Lf/m$k;->g:Landroid/view/View;

    if-nez v5, :cond_19

    if-eqz v3, :cond_7

    .line 11
    iget-object v5, p0, Lf/m;->h:Lf/a;

    .line 12
    instance-of v5, v5, Lf/v;

    if-nez v5, :cond_19

    .line 13
    :cond_7
    iget-object v5, p1, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    const/4 v6, 0x0

    if-eqz v5, :cond_8

    iget-boolean v7, p1, Lf/m$k;->o:Z

    if-eqz v7, :cond_13

    :cond_8
    if-nez v5, :cond_e

    .line 14
    iget-object v5, p0, Lf/m;->d:Landroid/content/Context;

    .line 15
    iget v7, p1, Lf/m$k;->a:I

    if-eqz v7, :cond_9

    if-ne v7, v4, :cond_d

    :cond_9
    iget-object v4, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    if-eqz v4, :cond_d

    .line 16
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 17
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x7f04000b

    .line 18
    invoke-virtual {v7, v8, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 19
    iget v8, v4, Landroid/util/TypedValue;->resourceId:I

    const v9, 0x7f04000c

    if-eqz v8, :cond_a

    .line 20
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 21
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 22
    iget v10, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v10, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 23
    invoke-virtual {v8, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_2

    .line 24
    :cond_a
    invoke-virtual {v7, v9, v4, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object v8, v6

    .line 25
    :goto_2
    iget v9, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v9, :cond_c

    if-nez v8, :cond_b

    .line 26
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 27
    invoke-virtual {v8, v7}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 28
    :cond_b
    iget v4, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v4, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_c
    if-eqz v8, :cond_d

    .line 29
    new-instance v4, Lk/c;

    invoke-direct {v4, v5, v1}, Lk/c;-><init>(Landroid/content/Context;I)V

    .line 30
    invoke-virtual {v4}, Lk/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v5, v4

    .line 31
    :cond_d
    new-instance v4, Landroidx/appcompat/view/menu/e;

    invoke-direct {v4, v5}, Landroidx/appcompat/view/menu/e;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p0, v4, Landroidx/appcompat/view/menu/e;->e:Landroidx/appcompat/view/menu/e$a;

    .line 33
    invoke-virtual {p1, v4}, Lf/m$k;->a(Landroidx/appcompat/view/menu/e;)V

    .line 34
    iget-object v4, p1, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    if-nez v4, :cond_e

    return v1

    :cond_e
    if-eqz v3, :cond_10

    .line 35
    iget-object v4, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    if-eqz v4, :cond_10

    .line 36
    iget-object v5, p0, Lf/m;->l:Lf/m$d;

    if-nez v5, :cond_f

    .line 37
    new-instance v5, Lf/m$d;

    invoke-direct {v5, p0}, Lf/m$d;-><init>(Lf/m;)V

    iput-object v5, p0, Lf/m;->l:Lf/m$d;

    .line 38
    :cond_f
    iget-object v5, p1, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    iget-object v7, p0, Lf/m;->l:Lf/m$d;

    invoke-interface {v4, v5, v7}, Landroidx/appcompat/widget/f0;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/i$a;)V

    .line 39
    :cond_10
    iget-object v4, p1, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/e;->y()V

    .line 40
    iget v4, p1, Lf/m$k;->a:I

    iget-object v5, p1, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    invoke-interface {v0, v4, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 41
    invoke-virtual {p1, v6}, Lf/m$k;->a(Landroidx/appcompat/view/menu/e;)V

    if-eqz v3, :cond_11

    .line 42
    iget-object p1, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    if-eqz p1, :cond_11

    .line 43
    iget-object p2, p0, Lf/m;->l:Lf/m$d;

    invoke-interface {p1, v6, p2}, Landroidx/appcompat/widget/f0;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/i$a;)V

    :cond_11
    return v1

    .line 44
    :cond_12
    iput-boolean v1, p1, Lf/m$k;->o:Z

    .line 45
    :cond_13
    iget-object v4, p1, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/e;->y()V

    .line 46
    iget-object v4, p1, Lf/m$k;->p:Landroid/os/Bundle;

    if-eqz v4, :cond_14

    .line 47
    iget-object v5, p1, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v5, v4}, Landroidx/appcompat/view/menu/e;->u(Landroid/os/Bundle;)V

    .line 48
    iput-object v6, p1, Lf/m$k;->p:Landroid/os/Bundle;

    .line 49
    :cond_14
    iget-object v4, p1, Lf/m$k;->g:Landroid/view/View;

    iget-object v5, p1, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    invoke-interface {v0, v1, v4, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz v3, :cond_15

    .line 50
    iget-object p2, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    if-eqz p2, :cond_15

    .line 51
    iget-object v0, p0, Lf/m;->l:Lf/m$d;

    invoke-interface {p2, v6, v0}, Landroidx/appcompat/widget/f0;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/i$a;)V

    .line 52
    :cond_15
    iget-object p1, p1, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->x()V

    return v1

    :cond_16
    if-eqz p2, :cond_17

    .line 53
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_3

    :cond_17
    const/4 p2, -0x1

    .line 54
    :goto_3
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 55
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_18

    const/4 p2, 0x1

    goto :goto_4

    :cond_18
    const/4 p2, 0x0

    .line 56
    :goto_4
    iget-object v0, p1, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/e;->setQwertyMode(Z)V

    .line 57
    iget-object p2, p1, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/e;->x()V

    .line 58
    :cond_19
    iput-boolean v2, p1, Lf/m$k;->k:Z

    .line 59
    iput-boolean v1, p1, Lf/m$k;->l:Z

    .line 60
    iput-object p1, p0, Lf/m;->F:Lf/m$k;

    return v2
.end method

.method public final Y()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/m;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf/m;->t:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget-object v1, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {v0}, Lm0/v$g;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final Z()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/m;->s:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroidx/appcompat/view/menu/e;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/m;->R()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Lf/m;->J:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->k()Landroidx/appcompat/view/menu/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf/m;->N(Landroid/view/Menu;)Lf/m$k;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget p1, p1, Lf/m$k;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a0(Lm0/b0;Landroid/graphics/Rect;)I
    .locals 10

    .line 1
    invoke-virtual {p1}, Lm0/b0;->e()I

    move-result p2

    .line 2
    iget-object v0, p0, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_11

    .line 4
    iget-object v0, p0, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    iget-object v3, p0, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isShown()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_f

    .line 7
    iget-object v3, p0, Lf/m;->W:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    .line 8
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lf/m;->W:Landroid/graphics/Rect;

    .line 9
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lf/m;->X:Landroid/graphics/Rect;

    .line 10
    :cond_0
    iget-object v3, p0, Lf/m;->W:Landroid/graphics/Rect;

    .line 11
    iget-object v5, p0, Lf/m;->X:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p1}, Lm0/b0;->c()I

    move-result v6

    .line 13
    invoke-virtual {p1}, Lm0/b0;->e()I

    move-result v7

    .line 14
    invoke-virtual {p1}, Lm0/b0;->d()I

    move-result v8

    .line 15
    invoke-virtual {p1}, Lm0/b0;->b()I

    move-result p1

    .line 16
    invoke-virtual {v3, v6, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 17
    iget-object p1, p0, Lf/m;->t:Landroid/view/ViewGroup;

    .line 18
    sget-object v6, Landroidx/appcompat/widget/h1;->a:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_1

    const/4 v7, 0x2

    :try_start_0
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v2

    aput-object v5, v7, v4

    .line 19
    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 20
    :cond_1
    :goto_0
    iget p1, v3, Landroid/graphics/Rect;->top:I

    .line 21
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 22
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 23
    iget-object v6, p0, Lf/m;->t:Landroid/view/ViewGroup;

    sget-object v7, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 24
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_2

    .line 25
    invoke-static {v6}, Lm0/v$j;->a(Landroid/view/View;)Lm0/b0;

    move-result-object v6

    goto :goto_1

    .line 26
    :cond_2
    invoke-static {v6}, Lm0/v$i;->j(Landroid/view/View;)Lm0/b0;

    move-result-object v6

    :goto_1
    if-nez v6, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    .line 27
    :cond_3
    invoke-virtual {v6}, Lm0/b0;->c()I

    move-result v7

    :goto_2
    if-nez v6, :cond_4

    const/4 v6, 0x0

    goto :goto_3

    .line 28
    :cond_4
    invoke-virtual {v6}, Lm0/b0;->d()I

    move-result v6

    .line 29
    :goto_3
    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, p1, :cond_6

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, v5, :cond_6

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto :goto_5

    .line 30
    :cond_6
    :goto_4
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 31
    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 32
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v3, 0x1

    :goto_5
    if-lez p1, :cond_7

    .line 33
    iget-object p1, p0, Lf/m;->v:Landroid/view/View;

    if-nez p1, :cond_7

    .line 34
    new-instance p1, Landroid/view/View;

    iget-object v5, p0, Lf/m;->d:Landroid/content/Context;

    invoke-direct {p1, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lf/m;->v:Landroid/view/View;

    .line 35
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v8, 0x33

    const/4 v9, -0x1

    invoke-direct {p1, v9, v5, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 37
    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 38
    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 39
    iget-object v5, p0, Lf/m;->t:Landroid/view/ViewGroup;

    iget-object v6, p0, Lf/m;->v:Landroid/view/View;

    invoke-virtual {v5, v6, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 40
    :cond_7
    iget-object p1, p0, Lf/m;->v:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 42
    iget v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v5, v8, :cond_8

    iget v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v5, v7, :cond_8

    iget v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v5, v6, :cond_9

    .line 43
    :cond_8
    iput v8, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 44
    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 45
    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 46
    iget-object v5, p0, Lf/m;->v:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    :cond_9
    :goto_6
    iget-object p1, p0, Lf/m;->v:Landroid/view/View;

    if-eqz p1, :cond_a

    const/4 v5, 0x1

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_7
    if-eqz v5, :cond_d

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_d

    .line 49
    iget-object p1, p0, Lf/m;->v:Landroid/view/View;

    .line 50
    invoke-static {p1}, Lm0/v$d;->g(Landroid/view/View;)I

    move-result v6

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_b

    goto :goto_8

    :cond_b
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_c

    .line 51
    iget-object v4, p0, Lf/m;->d:Landroid/content/Context;

    const v6, 0x7f06000a

    invoke-static {v4, v6}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v4

    goto :goto_9

    .line 52
    :cond_c
    iget-object v4, p0, Lf/m;->d:Landroid/content/Context;

    const v6, 0x7f060009

    invoke-static {v4, v6}, Ld0/a;->b(Landroid/content/Context;I)I

    move-result v4

    .line 53
    :goto_9
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    :cond_d
    iget-boolean p1, p0, Lf/m;->A:Z

    if-nez p1, :cond_e

    if-eqz v5, :cond_e

    const/4 p2, 0x0

    :cond_e
    move v4, v3

    goto :goto_b

    .line 55
    :cond_f
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_10

    .line 56
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_a

    :cond_10
    const/4 v4, 0x0

    :goto_a
    const/4 v5, 0x0

    :goto_b
    if-eqz v4, :cond_12

    .line 57
    iget-object p1, p0, Lf/m;->o:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    :cond_11
    const/4 v5, 0x0

    .line 58
    :cond_12
    :goto_c
    iget-object p1, p0, Lf/m;->v:Landroid/view/View;

    if-eqz p1, :cond_14

    if-eqz v5, :cond_13

    const/4 v1, 0x0

    .line 59
    :cond_13
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    return p2
.end method

.method public b(Landroidx/appcompat/view/menu/e;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroidx/appcompat/widget/f0;->g()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lf/m;->d:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    .line 3
    invoke-interface {p1}, Landroidx/appcompat/widget/f0;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    :cond_0
    invoke-virtual {p0}, Lf/m;->R()Landroid/view/Window$Callback;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    invoke-interface {v2}, Landroidx/appcompat/widget/f0;->b()Z

    move-result v2

    const/16 v3, 0x6c

    if-eqz v2, :cond_1

    .line 6
    iget-object v0, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    invoke-interface {v0}, Landroidx/appcompat/widget/f0;->e()Z

    .line 7
    iget-boolean v0, p0, Lf/m;->J:Z

    if-nez v0, :cond_4

    .line 8
    invoke-virtual {p0, v1}, Lf/m;->Q(I)Lf/m$k;

    move-result-object v0

    .line 9
    iget-object v0, v0, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    .line 10
    iget-boolean v2, p0, Lf/m;->J:Z

    if-nez v2, :cond_4

    .line 11
    iget-boolean v2, p0, Lf/m;->S:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lf/m;->T:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lf/m;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lf/m;->U:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 13
    iget-object v0, p0, Lf/m;->U:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 14
    :cond_2
    invoke-virtual {p0, v1}, Lf/m;->Q(I)Lf/m$k;

    move-result-object v0

    .line 15
    iget-object v2, v0, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    if-eqz v2, :cond_4

    iget-boolean v4, v0, Lf/m$k;->o:Z

    if-nez v4, :cond_4

    iget-object v4, v0, Lf/m$k;->g:Landroid/view/View;

    .line 16
    invoke-interface {p1, v1, v4, v2}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    iget-object v0, v0, Lf/m$k;->h:Landroidx/appcompat/view/menu/e;

    invoke-interface {p1, v3, v0}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 18
    iget-object p1, p0, Lf/m;->k:Landroidx/appcompat/widget/f0;

    invoke-interface {p1}, Landroidx/appcompat/widget/f0;->f()Z

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p0, v1}, Lf/m;->Q(I)Lf/m$k;

    move-result-object p1

    .line 20
    iput-boolean v0, p1, Lf/m$k;->n:Z

    .line 21
    invoke-virtual {p0, p1, v1}, Lf/m;->G(Lf/m$k;Z)V

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Lf/m;->V(Lf/m$k;Landroid/view/KeyEvent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/m;->L()V

    .line 2
    iget-object v0, p0, Lf/m;->t:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lf/m;->f:Lf/m$f;

    .line 5
    iget-object p1, p1, Lk/h;->a:Landroid/view/Window$Callback;

    .line 6
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public d(Landroid/content/Context;)Landroid/content/Context;
    .locals 9

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lf/m;->H:Z

    .line 2
    iget v1, p0, Lf/m;->L:I

    const/16 v2, -0x64

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, -0x64

    .line 3
    :goto_0
    invoke-virtual {p0, p1, v1}, Lf/m;->U(Landroid/content/Context;I)I

    move-result v1

    .line 4
    sget-boolean v2, Lf/m;->c0:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    instance-of v2, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0, p1, v1, v3}, Lf/m;->H(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 6
    :try_start_0
    move-object v4, p1

    check-cast v4, Landroid/view/ContextThemeWrapper;

    .line 7
    invoke-virtual {v4, v2}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    nop

    .line 8
    :cond_1
    instance-of v2, p1, Lk/c;

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {p0, p1, v1, v3}, Lf/m;->H(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 10
    :try_start_1
    move-object v4, p1

    check-cast v4, Lk/c;

    invoke-virtual {v4, v2}, Lk/c;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    nop

    .line 11
    :cond_2
    sget-boolean v2, Lf/m;->b0:Z

    if-nez v2, :cond_3

    return-object p1

    .line 12
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    new-instance v4, Landroid/content/res/Configuration;

    invoke-direct {v4}, Landroid/content/res/Configuration;-><init>()V

    const/4 v5, -0x1

    .line 14
    iput v5, v4, Landroid/content/res/Configuration;->uiMode:I

    const/4 v5, 0x0

    .line 15
    iput v5, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 16
    invoke-virtual {p1, v4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 19
    iget v7, v6, Landroid/content/res/Configuration;->uiMode:I

    iput v7, v4, Landroid/content/res/Configuration;->uiMode:I

    .line 20
    invoke-virtual {v4, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 21
    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    .line 22
    iput v5, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 23
    invoke-virtual {v4, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_2

    .line 24
    :cond_4
    iget v5, v4, Landroid/content/res/Configuration;->fontScale:F

    iget v8, v6, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_5

    .line 25
    iput v8, v7, Landroid/content/res/Configuration;->fontScale:F

    .line 26
    :cond_5
    iget v5, v4, Landroid/content/res/Configuration;->mcc:I

    iget v8, v6, Landroid/content/res/Configuration;->mcc:I

    if-eq v5, v8, :cond_6

    .line 27
    iput v8, v7, Landroid/content/res/Configuration;->mcc:I

    .line 28
    :cond_6
    iget v5, v4, Landroid/content/res/Configuration;->mnc:I

    iget v8, v6, Landroid/content/res/Configuration;->mnc:I

    if-eq v5, v8, :cond_7

    .line 29
    iput v8, v7, Landroid/content/res/Configuration;->mnc:I

    :cond_7
    const/16 v5, 0x18

    if-lt v2, v5, :cond_8

    .line 30
    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 31
    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v8

    .line 32
    invoke-virtual {v5, v8}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 33
    invoke-virtual {v7, v8}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 34
    iget-object v5, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    goto :goto_1

    .line 35
    :cond_8
    iget-object v5, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v8, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 36
    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 37
    iget-object v5, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 38
    :cond_9
    :goto_1
    iget v5, v4, Landroid/content/res/Configuration;->touchscreen:I

    iget v8, v6, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v5, v8, :cond_a

    .line 39
    iput v8, v7, Landroid/content/res/Configuration;->touchscreen:I

    .line 40
    :cond_a
    iget v5, v4, Landroid/content/res/Configuration;->keyboard:I

    iget v8, v6, Landroid/content/res/Configuration;->keyboard:I

    if-eq v5, v8, :cond_b

    .line 41
    iput v8, v7, Landroid/content/res/Configuration;->keyboard:I

    .line 42
    :cond_b
    iget v5, v4, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v8, v6, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v5, v8, :cond_c

    .line 43
    iput v8, v7, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 44
    :cond_c
    iget v5, v4, Landroid/content/res/Configuration;->navigation:I

    iget v8, v6, Landroid/content/res/Configuration;->navigation:I

    if-eq v5, v8, :cond_d

    .line 45
    iput v8, v7, Landroid/content/res/Configuration;->navigation:I

    .line 46
    :cond_d
    iget v5, v4, Landroid/content/res/Configuration;->navigationHidden:I

    iget v8, v6, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v5, v8, :cond_e

    .line 47
    iput v8, v7, Landroid/content/res/Configuration;->navigationHidden:I

    .line 48
    :cond_e
    iget v5, v4, Landroid/content/res/Configuration;->orientation:I

    iget v8, v6, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v8, :cond_f

    .line 49
    iput v8, v7, Landroid/content/res/Configuration;->orientation:I

    .line 50
    :cond_f
    iget v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0xf

    if-eq v5, v8, :cond_10

    .line 51
    iget v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 52
    :cond_10
    iget v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v5, v5, 0xc0

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0xc0

    if-eq v5, v8, :cond_11

    .line 53
    iget v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 54
    :cond_11
    iget v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0x30

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v8, v8, 0x30

    if-eq v5, v8, :cond_12

    .line 55
    iget v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    .line 56
    :cond_12
    iget v5, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v5, v5, 0x300

    iget v8, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v8, v8, 0x300

    if-eq v5, v8, :cond_13

    .line 57
    iget v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    or-int/2addr v5, v8

    iput v5, v7, Landroid/content/res/Configuration;->screenLayout:I

    :cond_13
    const/16 v5, 0x1a

    if-lt v2, v5, :cond_15

    .line 58
    iget v2, v4, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0x3

    iget v5, v6, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0x3

    if-eq v2, v5, :cond_14

    .line 59
    iget v2, v7, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v2, v5

    iput v2, v7, Landroid/content/res/Configuration;->colorMode:I

    .line 60
    :cond_14
    iget v2, v4, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v2, v2, 0xc

    iget v5, v6, Landroid/content/res/Configuration;->colorMode:I

    and-int/lit8 v5, v5, 0xc

    if-eq v2, v5, :cond_15

    .line 61
    iget v2, v7, Landroid/content/res/Configuration;->colorMode:I

    or-int/2addr v2, v5

    iput v2, v7, Landroid/content/res/Configuration;->colorMode:I

    .line 62
    :cond_15
    iget v2, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    iget v5, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0xf

    if-eq v2, v5, :cond_16

    .line 63
    iget v2, v7, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v2, v5

    iput v2, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 64
    :cond_16
    iget v2, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    iget v5, v6, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, 0x30

    if-eq v2, v5, :cond_17

    .line 65
    iget v2, v7, Landroid/content/res/Configuration;->uiMode:I

    or-int/2addr v2, v5

    iput v2, v7, Landroid/content/res/Configuration;->uiMode:I

    .line 66
    :cond_17
    iget v2, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v5, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v5, :cond_18

    .line 67
    iput v5, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 68
    :cond_18
    iget v2, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v5, v6, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v2, v5, :cond_19

    .line 69
    iput v5, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 70
    :cond_19
    iget v2, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v5, v6, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v2, v5, :cond_1a

    .line 71
    iput v5, v7, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 72
    :cond_1a
    iget v2, v4, Landroid/content/res/Configuration;->densityDpi:I

    iget v4, v6, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v4, :cond_1c

    .line 73
    iput v4, v7, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_2

    :cond_1b
    move-object v7, v3

    .line 74
    :cond_1c
    :goto_2
    invoke-virtual {p0, p1, v1, v7}, Lf/m;->H(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 75
    new-instance v2, Lk/c;

    const v4, 0x7f12021c

    invoke-direct {v2, p1, v4}, Lk/c;-><init>(Landroid/content/Context;I)V

    .line 76
    invoke-virtual {v2, v1}, Lk/c;->a(Landroid/content/res/Configuration;)V

    const/4 v1, 0x0

    .line 77
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_3

    :catch_2
    :cond_1d
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_21

    .line 78
    invoke-virtual {v2}, Lk/c;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 79
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_1e

    .line 80
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->rebase()V

    goto :goto_7

    :cond_1e
    const/16 v5, 0x17

    if-lt v4, v5, :cond_21

    .line 81
    sget-object v4, Le0/g;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 82
    :try_start_3
    sget-boolean v5, Le0/g;->c:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_1f

    .line 83
    :try_start_4
    const-class v5, Landroid/content/res/Resources$Theme;

    const-string v6, "rebase"

    new-array v7, v1, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Le0/g;->b:Ljava/lang/reflect/Method;

    .line 84
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_3
    move-exception v5

    :try_start_5
    const-string v6, "ResourcesCompat"

    const-string v7, "Failed to retrieve rebase() method"

    .line 85
    invoke-static {v6, v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :goto_4
    sput-boolean v0, Le0/g;->c:Z

    .line 87
    :cond_1f
    sget-object v0, Le0/g;->b:Ljava/lang/reflect/Method;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_20

    :try_start_6
    new-array v1, v1, [Ljava/lang/Object;

    .line 88
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catch_4
    move-exception p1

    goto :goto_5

    :catch_5
    move-exception p1

    :goto_5
    :try_start_7
    const-string v0, "ResourcesCompat"

    const-string v1, "Failed to invoke rebase() method via reflection"

    .line 89
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    sput-object v3, Le0/g;->b:Ljava/lang/reflect/Method;

    .line 91
    :cond_20
    :goto_6
    monitor-exit v4

    goto :goto_7

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1

    :cond_21
    :goto_7
    return-object v2
.end method

.method public e(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lf/m;->L()V

    .line 2
    iget-object v0, p0, Lf/m;->e:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final f()Lf/c$a;
    .locals 1

    .line 1
    new-instance v0, Lf/m$b;

    invoke-direct {v0, p0}, Lf/m$b;-><init>(Lf/m;)V

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lf/m;->L:I

    return v0
.end method

.method public h()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/m;->i:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lf/m;->S()V

    .line 3
    new-instance v0, Lk/f;

    .line 4
    iget-object v1, p0, Lf/m;->h:Lf/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lf/a;->e()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lf/m;->d:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Lk/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lf/m;->i:Landroid/view/MenuInflater;

    .line 5
    :cond_1
    iget-object v0, p0, Lf/m;->i:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public i()Lf/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/m;->S()V

    .line 2
    iget-object v0, p0, Lf/m;->h:Lf/a;

    return-object v0
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/m;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Lf/m;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/m;->S()V

    .line 2
    iget-object v0, p0, Lf/m;->h:Lf/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lf/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lf/m;->T(I)V

    return-void
.end method

.method public l(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf/m;->y:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lf/m;->s:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf/m;->S()V

    .line 3
    iget-object v0, p0, Lf/m;->h:Lf/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lf/a;->g(Landroid/content/res/Configuration;)V

    .line 5
    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/j;->a()Landroidx/appcompat/widget/j;

    move-result-object p1

    iget-object v0, p0, Lf/m;->d:Landroid/content/Context;

    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget-object v1, p1, Landroidx/appcompat/widget/j;->a:Landroidx/appcompat/widget/p0;

    .line 8
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v2, v1, Landroidx/appcompat/widget/p0;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/d;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Ls/d;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    monitor-exit p1

    .line 13
    new-instance p1, Landroid/content/res/Configuration;

    iget-object v0, p0, Lf/m;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lf/m;->K:Landroid/content/res/Configuration;

    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lf/m;->C(Z)Z

    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public m(Landroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lf/m;->H:Z

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lf/m;->C(Z)Z

    .line 3
    invoke-virtual {p0}, Lf/m;->M()V

    .line 4
    iget-object v0, p0, Lf/m;->c:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 5
    :try_start_0
    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v0, v2}, Lc0/j;->c(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    nop

    :goto_0
    if-eqz v1, :cond_1

    .line 8
    iget-object v0, p0, Lf/m;->h:Lf/a;

    if-nez v0, :cond_0

    .line 9
    iput-boolean p1, p0, Lf/m;->V:Z

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lf/a;->l(Z)V

    .line 11
    :cond_1
    :goto_1
    sget-object v0, Lf/l;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_3
    invoke-static {p0}, Lf/l;->t(Lf/l;)V

    .line 13
    sget-object v1, Lf/l;->a:Ls/c;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ls/c;->add(Ljava/lang/Object;)Z

    .line 14
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 15
    :cond_2
    :goto_2
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lf/m;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lf/m;->K:Landroid/content/res/Configuration;

    .line 16
    iput-boolean p1, p0, Lf/m;->I:Z

    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/m;->c:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lf/l;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {p0}, Lf/l;->t(Lf/l;)V

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lf/m;->S:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lf/m;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lf/m;->U:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lf/m;->J:Z

    .line 8
    iget v0, p0, Lf/m;->L:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lf/m;->c:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    sget-object v0, Lf/m;->Z:Ls/g;

    iget-object v1, p0, Lf/m;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lf/m;->L:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ls/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_2
    sget-object v0, Lf/m;->Z:Ls/g;

    iget-object v1, p0, Lf/m;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_1
    iget-object v0, p0, Lf/m;->h:Lf/a;

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {v0}, Lf/a;->h()V

    .line 14
    :cond_3
    iget-object v0, p0, Lf/m;->P:Lf/m$h;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Lf/m$h;->a()V

    .line 16
    :cond_4
    iget-object v0, p0, Lf/m;->R:Lf/m$h;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0}, Lf/m$h;->a()V

    :cond_5
    return-void
.end method

.method public o(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/m;->L()V

    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    .line 1
    iget-object p1, p0, Lf/m;->Y:Lf/s;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lf/m;->d:Landroid/content/Context;

    sget-object v1, Lh8/k;->j:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v1, 0x74

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lf/s;

    invoke-direct {p1}, Lf/s;-><init>()V

    iput-object p1, p0, Lf/m;->Y:Lf/s;

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-object v1, p0, Lf/m;->d:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/s;

    iput-object v1, p0, Lf/m;->Y:Lf/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate custom view inflater "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Falling back to default."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AppCompatDelegate"

    invoke-static {v2, p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    new-instance p1, Lf/s;

    invoke-direct {p1}, Lf/s;-><init>()V

    iput-object p1, p0, Lf/m;->Y:Lf/s;

    .line 11
    :cond_1
    :goto_0
    iget-object p1, p0, Lf/m;->Y:Lf/s;

    .line 12
    sget v1, Landroidx/appcompat/widget/g1;->a:I

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 14
    sget-object v2, Lh8/k;->A:[I

    invoke-virtual {p3, p4, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 15
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v4, "AppCompatViewInflater"

    const-string v5, "app:theme is now deprecated. Please move to using android:theme instead."

    .line 16
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_4

    .line 18
    instance-of v2, p3, Lk/c;

    if-eqz v2, :cond_3

    move-object v2, p3

    check-cast v2, Lk/c;

    .line 19
    iget v2, v2, Lk/c;->a:I

    if-eq v2, v3, :cond_4

    .line 20
    :cond_3
    new-instance v2, Lk/c;

    invoke-direct {v2, p3, v3}, Lk/c;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    move-object v2, p3

    .line 21
    :goto_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "Button"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v1, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string v1, "EditText"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v1, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v1, "CheckBox"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v1, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string v1, "AutoCompleteTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v1, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v1, "ImageView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_2

    :cond_9
    const/16 v1, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string v1, "ToggleButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_2

    :cond_a
    const/16 v1, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string v1, "RadioButton"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    const/4 v1, 0x7

    goto :goto_3

    :sswitch_7
    const-string v1, "Spinner"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    const/4 v1, 0x6

    goto :goto_3

    :sswitch_8
    const-string v1, "SeekBar"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    const/4 v1, 0x5

    goto :goto_3

    :sswitch_9
    const-string v3, "ImageButton"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_2

    :sswitch_a
    const-string v1, "TextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    const/4 v1, 0x3

    goto :goto_3

    :sswitch_b
    const-string v1, "MultiAutoCompleteTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    const/4 v1, 0x2

    goto :goto_3

    :sswitch_c
    const-string v1, "CheckedTextView"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2

    :cond_10
    const/4 v1, 0x1

    goto :goto_3

    :sswitch_d
    const-string v1, "RatingBar"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2

    :cond_11
    const/4 v1, 0x0

    goto :goto_3

    :goto_2
    const/4 v1, -0x1

    :cond_12
    :goto_3
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v1, v3

    goto :goto_4

    .line 22
    :pswitch_0
    invoke-virtual {p1, v2, p4}, Lf/s;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/f;

    move-result-object v1

    .line 23
    invoke-virtual {p1, v1, p2}, Lf/s;->g(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 24
    :pswitch_1
    new-instance v1, Landroidx/appcompat/widget/k;

    invoke-direct {v1, v2, p4}, Landroidx/appcompat/widget/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 25
    :pswitch_2
    invoke-virtual {p1, v2, p4}, Lf/s;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v1

    .line 26
    invoke-virtual {p1, v1, p2}, Lf/s;->g(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 27
    :pswitch_3
    invoke-virtual {p1, v2, p4}, Lf/s;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/d;

    move-result-object v1

    .line 28
    invoke-virtual {p1, v1, p2}, Lf/s;->g(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 29
    :pswitch_4
    new-instance v1, Landroidx/appcompat/widget/p;

    .line 30
    invoke-direct {v1, v2, p4, v0}, Landroidx/appcompat/widget/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_4

    .line 31
    :pswitch_5
    new-instance v1, Landroidx/appcompat/widget/e0;

    invoke-direct {v1, v2, p4}, Landroidx/appcompat/widget/e0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 32
    :pswitch_6
    invoke-virtual {p1, v2, p4}, Lf/s;->d(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/AppCompatRadioButton;

    move-result-object v1

    .line 33
    invoke-virtual {p1, v1, p2}, Lf/s;->g(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 34
    :pswitch_7
    new-instance v1, Landroidx/appcompat/widget/y;

    const v6, 0x7f040406

    .line 35
    invoke-direct {v1, v2, p4, v6}, Landroidx/appcompat/widget/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto :goto_4

    .line 36
    :pswitch_8
    new-instance v1, Landroidx/appcompat/widget/v;

    invoke-direct {v1, v2, p4}, Landroidx/appcompat/widget/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 37
    :pswitch_9
    new-instance v1, Landroidx/appcompat/widget/n;

    invoke-direct {v1, v2, p4}, Landroidx/appcompat/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 38
    :pswitch_a
    invoke-virtual {p1, v2, p4}, Lf/s;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/appcompat/widget/c0;

    move-result-object v1

    .line 39
    invoke-virtual {p1, v1, p2}, Lf/s;->g(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    .line 40
    :pswitch_b
    new-instance v1, Landroidx/appcompat/widget/q;

    invoke-direct {v1, v2, p4}, Landroidx/appcompat/widget/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 41
    :pswitch_c
    new-instance v1, Landroidx/appcompat/widget/g;

    invoke-direct {v1, v2, p4}, Landroidx/appcompat/widget/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 42
    :pswitch_d
    new-instance v1, Landroidx/appcompat/widget/t;

    invoke-direct {v1, v2, p4}, Landroidx/appcompat/widget/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_4
    if-nez v1, :cond_17

    if-eq p3, v2, :cond_17

    const-string p3, "view"

    .line 43
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    const-string p2, "class"

    .line 44
    invoke-interface {p4, v3, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 45
    :cond_13
    :try_start_1
    iget-object p3, p1, Lf/s;->a:[Ljava/lang/Object;

    aput-object v2, p3, v0

    .line 46
    aput-object p4, p3, v5

    const/16 p3, 0x2e

    .line 47
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-ne v4, p3, :cond_16

    const/4 p3, 0x0

    .line 48
    :goto_5
    sget-object v1, Lf/s;->g:[Ljava/lang/String;

    array-length v4, v1

    if-ge p3, v4, :cond_15

    .line 49
    aget-object v1, v1, p3

    invoke-virtual {p1, v2, p2, v1}, Lf/s;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_14

    .line 50
    iget-object p1, p1, Lf/s;->a:[Ljava/lang/Object;

    aput-object v3, p1, v0

    .line 51
    aput-object v3, p1, v5

    move-object v3, v1

    goto :goto_6

    :cond_14
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    .line 52
    :cond_15
    iget-object p1, p1, Lf/s;->a:[Ljava/lang/Object;

    aput-object v3, p1, v0

    .line 53
    aput-object v3, p1, v5

    goto :goto_6

    .line 54
    :cond_16
    :try_start_2
    invoke-virtual {p1, v2, p2, v3}, Lf/s;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    iget-object p1, p1, Lf/s;->a:[Ljava/lang/Object;

    aput-object v3, p1, v0

    .line 56
    aput-object v3, p1, v5

    move-object v3, p2

    goto :goto_6

    :catchall_1
    move-exception p2

    .line 57
    iget-object p1, p1, Lf/s;->a:[Ljava/lang/Object;

    aput-object v3, p1, v0

    .line 58
    aput-object v3, p1, v5

    .line 59
    throw p2

    .line 60
    :catch_0
    iget-object p1, p1, Lf/s;->a:[Ljava/lang/Object;

    aput-object v3, p1, v0

    .line 61
    aput-object v3, p1, v5

    :goto_6
    move-object v1, v3

    :cond_17
    if-eqz v1, :cond_1f

    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 63
    instance-of p2, p1, Landroid/content/ContextWrapper;

    if-eqz p2, :cond_1a

    .line 64
    sget-object p2, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 65
    invoke-static {v1}, Lm0/v$c;->a(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_18

    goto :goto_7

    .line 66
    :cond_18
    sget-object p2, Lf/s;->c:[I

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_19

    .line 68
    new-instance p3, Lf/s$a;

    invoke-direct {p3, v1, p2}, Lf/s$a;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_19
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    :cond_1a
    :goto_7
    const-class p1, Ljava/lang/Boolean;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1c

    if-le p2, p3, :cond_1b

    goto :goto_8

    .line 71
    :cond_1b
    sget-object p2, Lf/s;->d:[I

    invoke-virtual {v2, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 72
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 73
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    sget-object v4, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 74
    new-instance v4, Lm0/u;

    const v5, 0x7f090343

    invoke-direct {v4, v5, p1, p3}, Lm0/u;-><init>(ILjava/lang/Class;I)V

    .line 75
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lm0/v$b;->e(Landroid/view/View;Ljava/lang/Object;)V

    .line 76
    :cond_1c
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    sget-object p2, Lf/s;->e:[I

    invoke-virtual {v2, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 78
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 79
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lm0/v;->v(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 80
    :cond_1d
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    sget-object p2, Lf/s;->f:[I

    invoke-virtual {v2, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 82
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_1e

    .line 83
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    sget-object v0, Lm0/v;->a:Ljava/util/WeakHashMap;

    .line 84
    new-instance v0, Lm0/r;

    const v2, 0x7f090348

    invoke-direct {v0, v2, p1, p3}, Lm0/r;-><init>(ILjava/lang/Class;I)V

    .line 85
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lm0/v$b;->e(Landroid/view/View;Ljava/lang/Object;)V

    .line 86
    :cond_1e
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1f
    :goto_8
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_d
        -0x56c015e7 -> :sswitch_c
        -0x503aa7ad -> :sswitch_b
        -0x37f7066e -> :sswitch_a
        -0x37e04bb3 -> :sswitch_9
        -0x274065a5 -> :sswitch_8
        -0x1440b607 -> :sswitch_7
        0x2e46a6ed -> :sswitch_6
        0x2fa453c6 -> :sswitch_5
        0x431b5280 -> :sswitch_4
        0x5445f9ba -> :sswitch_3
        0x5f7507c3 -> :sswitch_2
        0x63577677 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0, p1, p2, p3}, Lf/m;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public p()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/m;->S()V

    .line 2
    iget-object v0, p0, Lf/m;->h:Lf/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lf/a;->o(Z)V

    :cond_0
    return-void
.end method

.method public q(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/m;->B()Z

    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/m;->S()V

    .line 2
    iget-object v0, p0, Lf/m;->h:Lf/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lf/a;->o(Z)V

    :cond_0
    return-void
.end method

.method public u(I)Z
    .locals 5

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    const/16 v2, 0x6d

    const/16 v3, 0x6c

    if-ne p1, v1, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    .line 3
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lf/m;->C:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean v0, p0, Lf/m;->y:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-ne p1, v4, :cond_3

    .line 5
    iput-boolean v1, p0, Lf/m;->y:Z

    :cond_3
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    .line 6
    iget-object v0, p0, Lf/m;->e:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    .line 7
    :cond_4
    invoke-virtual {p0}, Lf/m;->Z()V

    .line 8
    iput-boolean v4, p0, Lf/m;->z:Z

    return v4

    .line 9
    :cond_5
    invoke-virtual {p0}, Lf/m;->Z()V

    .line 10
    iput-boolean v4, p0, Lf/m;->y:Z

    return v4

    .line 11
    :cond_6
    invoke-virtual {p0}, Lf/m;->Z()V

    .line 12
    iput-boolean v4, p0, Lf/m;->A:Z

    return v4

    .line 13
    :cond_7
    invoke-virtual {p0}, Lf/m;->Z()V

    .line 14
    iput-boolean v4, p0, Lf/m;->x:Z

    return v4

    .line 15
    :cond_8
    invoke-virtual {p0}, Lf/m;->Z()V

    .line 16
    iput-boolean v4, p0, Lf/m;->w:Z

    return v4

    .line 17
    :cond_9
    invoke-virtual {p0}, Lf/m;->Z()V

    .line 18
    iput-boolean v4, p0, Lf/m;->C:Z

    return v4
.end method

.method public v(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/m;->L()V

    .line 2
    iget-object v0, p0, Lf/m;->t:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    iget-object v1, p0, Lf/m;->d:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    iget-object p1, p0, Lf/m;->f:Lf/m$f;

    .line 6
    iget-object p1, p1, Lk/h;->a:Landroid/view/Window$Callback;

    .line 7
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public w(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/m;->L()V

    .line 2
    iget-object v0, p0, Lf/m;->t:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lf/m;->f:Lf/m$f;

    .line 6
    iget-object p1, p1, Lk/h;->a:Landroid/view/Window$Callback;

    .line 7
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public x(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf/m;->L()V

    .line 2
    iget-object v0, p0, Lf/m;->t:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, p0, Lf/m;->f:Lf/m$f;

    .line 6
    iget-object p1, p1, Lk/h;->a:Landroid/view/Window$Callback;

    .line 7
    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public y(Landroidx/appcompat/widget/Toolbar;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/m;->c:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lf/m;->S()V

    .line 3
    iget-object v0, p0, Lf/m;->h:Lf/a;

    .line 4
    instance-of v1, v0, Lf/y;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lf/m;->i:Landroid/view/MenuInflater;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lf/a;->h()V

    .line 7
    :cond_1
    iput-object v1, p0, Lf/m;->h:Lf/a;

    if-eqz p1, :cond_3

    .line 8
    new-instance v0, Lf/v;

    .line 9
    iget-object v1, p0, Lf/m;->c:Ljava/lang/Object;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 10
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, p0, Lf/m;->j:Ljava/lang/CharSequence;

    .line 12
    :goto_0
    iget-object v2, p0, Lf/m;->f:Lf/m$f;

    invoke-direct {v0, p1, v1, v2}, Lf/v;-><init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V

    .line 13
    iput-object v0, p0, Lf/m;->h:Lf/a;

    .line 14
    iget-object p1, p0, Lf/m;->f:Lf/m$f;

    iget-object v0, v0, Lf/v;->c:Lf/m$c;

    .line 15
    iput-object v0, p1, Lf/m$f;->b:Lf/m$c;

    goto :goto_1

    .line 16
    :cond_3
    iget-object p1, p0, Lf/m;->f:Lf/m$f;

    .line 17
    iput-object v1, p1, Lf/m$f;->b:Lf/m$c;

    .line 18
    :goto_1
    invoke-virtual {p0}, Lf/m;->k()V

    return-void

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z(I)V
    .locals 0

    .line 1
    iput p1, p0, Lf/m;->M:I

    return-void
.end method
