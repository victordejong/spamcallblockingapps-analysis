.class public Landroidx/fragment/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/h;
.implements Landroidx/lifecycle/v;
.implements Landroidx/savedstate/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/Fragment$a;,
        Landroidx/fragment/app/Fragment$b;,
        Landroidx/fragment/app/Fragment$InstantiationException;
    }
.end annotation


# static fields
.field static final j:Ljava/lang/Object;


# instance fields
.field A:Landroidx/fragment/app/j;

.field B:Landroidx/fragment/app/h;

.field C:Landroidx/fragment/app/j;

.field D:Landroidx/fragment/app/Fragment;

.field E:I

.field F:I

.field G:Ljava/lang/String;

.field H:Z

.field I:Z

.field J:Z

.field K:Z

.field L:Z

.field M:Z

.field N:Landroid/view/ViewGroup;

.field O:Landroid/view/View;

.field P:Landroid/view/View;

.field Q:Z

.field R:Z

.field S:Landroidx/fragment/app/Fragment$a;

.field T:Ljava/lang/Runnable;

.field U:Z

.field V:Z

.field W:F

.field X:Landroid/view/LayoutInflater;

.field Y:Z

.field Z:Landroidx/lifecycle/e$b;

.field private a:Ljava/lang/Boolean;

.field aa:Landroidx/lifecycle/i;

.field ab:Landroidx/fragment/app/s;

.field ac:Landroidx/lifecycle/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/n",
            "<",
            "Landroidx/lifecycle/h;",
            ">;"
        }
    .end annotation
.end field

.field ad:Landroidx/savedstate/b;

.field private b:Z

.field private c:I

.field k:I

.field l:Landroid/os/Bundle;

.field m:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/lang/Boolean;

.field o:Ljava/lang/String;

.field p:Landroid/os/Bundle;

.field q:Landroidx/fragment/app/Fragment;

.field r:Ljava/lang/String;

.field s:I

.field t:Z

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/Fragment;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    .line 117
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    .line 132
    iput-object v2, p0, Landroidx/fragment/app/Fragment;->a:Ljava/lang/Boolean;

    .line 165
    new-instance v0, Landroidx/fragment/app/j;

    invoke-direct {v0}, Landroidx/fragment/app/j;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    .line 202
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->M:Z

    .line 221
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->R:Z

    .line 230
    new-instance v0, Landroidx/fragment/app/Fragment$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$1;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->T:Ljava/lang/Runnable;

    .line 260
    sget-object v0, Landroidx/lifecycle/e$b;->e:Landroidx/lifecycle/e$b;

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->Z:Landroidx/lifecycle/e$b;

    .line 267
    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->ac:Landroidx/lifecycle/n;

    .line 451
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->a()V

    .line 452
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 521
    .line 522
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 521
    invoke-static {v0, p1}, Landroidx/fragment/app/g;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 523
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 524
    if-eqz p2, :cond_0

    .line 525
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 526
    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->g(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 528
    :cond_0
    return-object v0

    .line 529
    :catch_0
    move-exception v0

    .line 530
    new-instance v1, Landroidx/fragment/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 533
    :catch_1
    move-exception v0

    .line 534
    new-instance v1, Landroidx/fragment/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 537
    :catch_2
    move-exception v0

    .line 538
    new-instance v1, Landroidx/fragment/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": could not find Fragment constructor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 540
    :catch_3
    move-exception v0

    .line 541
    new-instance v1, Landroidx/fragment/app/Fragment$InstantiationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to instantiate fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": calling Fragment constructor caused an exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 468
    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0, p0}, Landroidx/lifecycle/i;-><init>(Landroidx/lifecycle/h;)V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    .line 469
    invoke-static {p0}, Landroidx/savedstate/b;->a(Landroidx/savedstate/c;)Landroidx/savedstate/b;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->ad:Landroidx/savedstate/b;

    .line 470
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 471
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    new-instance v1, Landroidx/fragment/app/Fragment$2;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/g;)V

    .line 483
    :cond_0
    return-void
.end method

.method private d()Landroidx/fragment/app/Fragment$a;
    .locals 1

    .prologue
    .line 2873
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2874
    new-instance v0, Landroidx/fragment/app/Fragment$a;

    invoke-direct {v0}, Landroidx/fragment/app/Fragment$a;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    .line 2876
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    return-object v0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .prologue
    .line 973
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->I:Z

    return v0
.end method

.method public final B()Z
    .locals 1

    .prologue
    .line 982
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->u:Z

    return v0
.end method

.method public final C()Z
    .locals 2

    .prologue
    .line 1001
    iget v0, p0, Landroidx/fragment/app/Fragment;->k:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final D()Z
    .locals 1

    .prologue
    .line 1022
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->H:Z

    return v0
.end method

.method public final E()Z
    .locals 1

    .prologue
    .line 1073
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->J:Z

    return v0
.end method

.method public final F()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->X:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 1397
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->h(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1399
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->X:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public G()Landroid/view/View;
    .locals 1

    .prologue
    .line 1686
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    return-object v0
.end method

.method public final H()Landroid/view/View;
    .locals 3

    .prologue
    .line 1697
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->G()Landroid/view/View;

    move-result-object v0

    .line 1698
    if-nez v0, :cond_0

    .line 1699
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1702
    :cond_0
    return-object v0
.end method

.method public I()V
    .locals 1

    .prologue
    .line 1757
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1758
    return-void
.end method

.method public J()V
    .locals 1

    .prologue
    .line 1828
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1829
    return-void
.end method

.method public K()V
    .locals 1

    .prologue
    .line 1867
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1868
    return-void
.end method

.method L()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1877
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->a()V

    .line 1878
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    .line 1879
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->t:Z

    .line 1880
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->u:Z

    .line 1881
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->v:Z

    .line 1882
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->w:Z

    .line 1883
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->x:Z

    .line 1884
    iput v1, p0, Landroidx/fragment/app/Fragment;->z:I

    .line 1885
    iput-object v2, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    .line 1886
    new-instance v0, Landroidx/fragment/app/j;

    invoke-direct {v0}, Landroidx/fragment/app/j;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    .line 1887
    iput-object v2, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    .line 1888
    iput v1, p0, Landroidx/fragment/app/Fragment;->E:I

    .line 1889
    iput v1, p0, Landroidx/fragment/app/Fragment;->F:I

    .line 1890
    iput-object v2, p0, Landroidx/fragment/app/Fragment;->G:Ljava/lang/String;

    .line 1891
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->H:Z

    .line 1892
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->I:Z

    .line 1893
    return-void
.end method

.method public M()V
    .locals 0

    .prologue
    .line 1945
    return-void
.end method

.method public N()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2098
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2099
    const/4 v0, 0x0

    .line 2101
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->g:Ljava/lang/Object;

    goto :goto_0
.end method

.method public O()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2137
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2138
    const/4 v0, 0x0

    .line 2140
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->h:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->N()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->h:Ljava/lang/Object;

    goto :goto_0
.end method

.method public P()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2177
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2178
    const/4 v0, 0x0

    .line 2180
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->i:Ljava/lang/Object;

    goto :goto_0
.end method

.method public Q()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2215
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2216
    const/4 v0, 0x0

    .line 2218
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->j:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->P()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->j:Ljava/lang/Object;

    goto :goto_0
.end method

.method public R()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2248
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2249
    const/4 v0, 0x0

    .line 2251
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->k:Ljava/lang/Object;

    goto :goto_0
.end method

.method public S()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2286
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2287
    const/4 v0, 0x0

    .line 2289
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->l:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->j:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 2290
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->R()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->l:Ljava/lang/Object;

    goto :goto_0
.end method

.method public T()Z
    .locals 1

    .prologue
    .line 2315
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->n:Ljava/lang/Boolean;

    .line 2316
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public U()Z
    .locals 1

    .prologue
    .line 2340
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->m:Ljava/lang/Boolean;

    .line 2341
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public V()V
    .locals 2

    .prologue
    .line 2431
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    iget-object v0, v0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    if-nez v0, :cond_1

    .line 2432
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->d()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/fragment/app/Fragment$a;->q:Z

    .line 2443
    :goto_0
    return-void

    .line 2433
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    iget-object v1, v1, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v1}, Landroidx/fragment/app/h;->m()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 2434
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    iget-object v0, v0, Landroidx/fragment/app/j;->n:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/Fragment$3;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$3;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2441
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->W()V

    goto :goto_0
.end method

.method W()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2451
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v1, :cond_1

    .line 2458
    :goto_0
    if-eqz v0, :cond_0

    .line 2459
    invoke-interface {v0}, Landroidx/fragment/app/Fragment$b;->a()V

    .line 2461
    :cond_0
    return-void

    .line 2454
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/Fragment$a;->q:Z

    .line 2455
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v1, v1, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$b;

    .line 2456
    iget-object v2, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iput-object v0, v2, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$b;

    move-object v0, v1

    goto :goto_0
.end method

.method X()V
    .locals 3

    .prologue
    .line 2558
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    new-instance v2, Landroidx/fragment/app/Fragment$4;

    invoke-direct {v2, p0}, Landroidx/fragment/app/Fragment$4;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/h;Landroidx/fragment/app/e;Landroidx/fragment/app/Fragment;)V

    .line 2573
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2574
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;)V

    .line 2575
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-nez v0, :cond_0

    .line 2576
    new-instance v0, Landroidx/fragment/app/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/t;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2579
    :cond_0
    return-void
.end method

.method Y()V
    .locals 3

    .prologue
    .line 2628
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->o()V

    .line 2629
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->k()Z

    .line 2630
    const/4 v0, 0x3

    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    .line 2631
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2632
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->i()V

    .line 2633
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-nez v0, :cond_0

    .line 2634
    new-instance v0, Landroidx/fragment/app/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/t;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2637
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 2638
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2639
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/s;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_START:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->a(Landroidx/lifecycle/e$a;)V

    .line 2641
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->r()V

    .line 2642
    return-void
.end method

.method Z()V
    .locals 3

    .prologue
    .line 2645
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->o()V

    .line 2646
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->k()Z

    .line 2647
    const/4 v0, 0x4

    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    .line 2648
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2649
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->I()V

    .line 2650
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-nez v0, :cond_0

    .line 2651
    new-instance v0, Landroidx/fragment/app/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/t;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2654
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 2655
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2656
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/s;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_RESUME:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->a(Landroidx/lifecycle/e$a;)V

    .line 2658
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->s()V

    .line 2659
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->k()Z

    .line 2660
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 1659
    iget v0, p0, Landroidx/fragment/app/Fragment;->c:I

    if-eqz v0, :cond_0

    .line 1660
    iget v0, p0, Landroidx/fragment/app/Fragment;->c:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1662
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IZI)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 1560
    const/4 v0, 0x0

    return-object v0
.end method

.method a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 2551
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2554
    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->b(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    goto :goto_0
.end method

.method public final a(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 849
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 873
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(II)V
    .locals 1

    .prologue
    .line 2901
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 2907
    :goto_0
    return-void

    .line 2904
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->d()Landroidx/fragment/app/Fragment$a;

    .line 2905
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iput p1, v0, Landroidx/fragment/app/Fragment$a;->e:I

    .line 2906
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iput p2, v0, Landroidx/fragment/app/Fragment$a;->f:I

    goto :goto_0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1238
    return-void
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 1340
    return-void
.end method

.method a(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 2942
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->d()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$a;->b:Landroid/animation/Animator;

    .line 2943
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1540
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1541
    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1502
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1503
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1523
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1524
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1525
    :goto_0
    if-eqz v0, :cond_0

    .line 1526
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1527
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/app/Activity;)V

    .line 1529
    :cond_0
    return-void

    .line 1524
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->k()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1484
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1485
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1486
    :goto_0
    if-eqz v0, :cond_0

    .line 1487
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1488
    invoke-virtual {p0, v0, p2, p3}, Landroidx/fragment/app/Fragment;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1490
    :cond_0
    return-void

    .line 1485
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->k()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .prologue
    .line 1173
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1174
    return-void
.end method

.method public a(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .prologue
    .line 1203
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    .line 1204
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1206
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/fragment/app/h;->a(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1207
    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .prologue
    .line 1182
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    .line 1183
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1185
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1, p2}, Landroidx/fragment/app/h;->a(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1186
    return-void
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 2688
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2689
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->a(Landroid/content/res/Configuration;)V

    .line 2690
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1603
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1604
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->j(Landroid/os/Bundle;)V

    .line 1605
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/j;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1606
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->p()V

    .line 1608
    :cond_0
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1935
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 1918
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2938
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->d()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    iput-object p1, v0, Landroidx/fragment/app/Fragment$a;->a:Landroid/view/View;

    .line 2939
    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1676
    return-void
.end method

.method a(Landroidx/fragment/app/Fragment$b;)V
    .locals 3

    .prologue
    .line 2856
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->d()Landroidx/fragment/app/Fragment$a;

    .line 2857
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$b;

    if-ne p1, v0, :cond_1

    .line 2870
    :cond_0
    :goto_0
    return-void

    .line 2860
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$b;

    if-eqz v0, :cond_2

    .line 2861
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2864
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$a;->q:Z

    if-eqz v0, :cond_3

    .line 2865
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iput-object p1, v0, Landroidx/fragment/app/Fragment$a;->r:Landroidx/fragment/app/Fragment$b;

    .line 2867
    :cond_3
    if-eqz p1, :cond_0

    .line 2868
    invoke-interface {p1}, Landroidx/fragment/app/Fragment$b;->b()V

    goto :goto_0
.end method

.method public a(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .prologue
    .line 1515
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2474
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2475
    iget v0, p0, Landroidx/fragment/app/Fragment;->E:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2476
    const-string/jumbo v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2477
    iget v0, p0, Landroidx/fragment/app/Fragment;->F:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2478
    const-string/jumbo v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->G:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2479
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->k:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2480
    const-string/jumbo v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2481
    const-string/jumbo v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/Fragment;->z:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2482
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->t:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2483
    const-string/jumbo v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->u:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2484
    const-string/jumbo v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->v:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2485
    const-string/jumbo v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->w:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2486
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->H:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2487
    const-string/jumbo v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->I:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2488
    const-string/jumbo v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->M:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2489
    const-string/jumbo v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->L:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2490
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->J:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2491
    const-string/jumbo v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->R:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2492
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    .line 2493
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2496
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-eqz v0, :cond_1

    .line 2497
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2498
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2500
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2

    .line 2501
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2502
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2504
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->p:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 2505
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->p:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2507
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 2508
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2509
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2511
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2512
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2513
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2515
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->o()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2516
    if-eqz v0, :cond_6

    .line 2517
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTarget="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2518
    const-string/jumbo v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2519
    iget v0, p0, Landroidx/fragment/app/Fragment;->s:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2521
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ai()I

    move-result v0

    if-eqz v0, :cond_7

    .line 2522
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ai()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2524
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 2525
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->N:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2527
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 2528
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2530
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 2531
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2533
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->an()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2534
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2535
    const-string/jumbo v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2536
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->an()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2537
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2538
    const-string/jumbo v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2539
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ap()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2541
    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->p()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2542
    invoke-static {p0}, Landroidx/g/a/a;->a(Landroidx/lifecycle/h;)Landroidx/g/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/g/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2544
    :cond_c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2546
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/fragment/app/j;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2547
    return-void
.end method

.method public final a([Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 1314
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    .line 1315
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1317
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/fragment/app/h;->a(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    .line 1318
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1966
    const/4 v0, 0x0

    return v0
.end method

.method aa()V
    .locals 1

    .prologue
    .line 2663
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->o()V

    .line 2664
    return-void
.end method

.method ab()V
    .locals 2

    .prologue
    .line 2667
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    .line 2669
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->a:Ljava/lang/Boolean;

    .line 2670
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 2671
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/Fragment;->a:Ljava/lang/Boolean;

    .line 2672
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->h(Z)V

    .line 2673
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->y()V

    .line 2675
    :cond_1
    return-void
.end method

.method ac()V
    .locals 1

    .prologue
    .line 2693
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    .line 2694
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->x()V

    .line 2695
    return-void
.end method

.method ad()V
    .locals 3

    .prologue
    .line 2775
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->t()V

    .line 2776
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2777
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/s;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->a(Landroidx/lifecycle/e$a;)V

    .line 2779
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_PAUSE:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 2780
    const/4 v0, 0x3

    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    .line 2781
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2782
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->J()V

    .line 2783
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-nez v0, :cond_1

    .line 2784
    new-instance v0, Landroidx/fragment/app/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/t;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2787
    :cond_1
    return-void
.end method

.method ae()V
    .locals 3

    .prologue
    .line 2790
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->u()V

    .line 2791
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2792
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/s;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->a(Landroidx/lifecycle/e$a;)V

    .line 2794
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_STOP:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 2795
    const/4 v0, 0x2

    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    .line 2796
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2797
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->j()V

    .line 2798
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-nez v0, :cond_1

    .line 2799
    new-instance v0, Landroidx/fragment/app/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/t;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2802
    :cond_1
    return-void
.end method

.method af()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2805
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->v()V

    .line 2806
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2807
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/s;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->a(Landroidx/lifecycle/e$a;)V

    .line 2809
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    .line 2810
    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2811
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->k()V

    .line 2812
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-nez v0, :cond_1

    .line 2813
    new-instance v0, Landroidx/fragment/app/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/t;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2820
    :cond_1
    invoke-static {p0}, Landroidx/g/a/a;->a(Landroidx/lifecycle/h;)Landroidx/g/a/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/g/a/a;->a()V

    .line 2821
    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->y:Z

    .line 2822
    return-void
.end method

.method ag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2825
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->w()V

    .line 2826
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_DESTROY:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 2827
    iput v2, p0, Landroidx/fragment/app/Fragment;->k:I

    .line 2828
    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2829
    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->Y:Z

    .line 2830
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->K()V

    .line 2831
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-nez v0, :cond_0

    .line 2832
    new-instance v0, Landroidx/fragment/app/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/t;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2835
    :cond_0
    return-void
.end method

.method ah()V
    .locals 3

    .prologue
    .line 2838
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2839
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->h()V

    .line 2840
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->X:Landroid/view/LayoutInflater;

    .line 2841
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-nez v0, :cond_0

    .line 2842
    new-instance v0, Landroidx/fragment/app/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/t;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2849
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2850
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->w()V

    .line 2851
    new-instance v0, Landroidx/fragment/app/j;

    invoke-direct {v0}, Landroidx/fragment/app/j;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    .line 2853
    :cond_1
    return-void
.end method

.method ai()I
    .locals 1

    .prologue
    .line 2880
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2881
    const/4 v0, 0x0

    .line 2883
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget v0, v0, Landroidx/fragment/app/Fragment$a;->d:I

    goto :goto_0
.end method

.method aj()I
    .locals 1

    .prologue
    .line 2894
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2895
    const/4 v0, 0x0

    .line 2897
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget v0, v0, Landroidx/fragment/app/Fragment$a;->e:I

    goto :goto_0
.end method

.method ak()I
    .locals 1

    .prologue
    .line 2910
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2911
    const/4 v0, 0x0

    .line 2913
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget v0, v0, Landroidx/fragment/app/Fragment$a;->f:I

    goto :goto_0
.end method

.method al()Landroidx/core/app/l;
    .locals 1

    .prologue
    .line 2917
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2918
    const/4 v0, 0x0

    .line 2920
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->o:Landroidx/core/app/l;

    goto :goto_0
.end method

.method am()Landroidx/core/app/l;
    .locals 1

    .prologue
    .line 2924
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2925
    const/4 v0, 0x0

    .line 2927
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->p:Landroidx/core/app/l;

    goto :goto_0
.end method

.method an()Landroid/view/View;
    .locals 1

    .prologue
    .line 2931
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2932
    const/4 v0, 0x0

    .line 2934
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->a:Landroid/view/View;

    goto :goto_0
.end method

.method ao()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 2946
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2947
    const/4 v0, 0x0

    .line 2949
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-object v0, v0, Landroidx/fragment/app/Fragment$a;->b:Landroid/animation/Animator;

    goto :goto_0
.end method

.method ap()I
    .locals 1

    .prologue
    .line 2953
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2954
    const/4 v0, 0x0

    .line 2956
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget v0, v0, Landroidx/fragment/app/Fragment$a;->c:I

    goto :goto_0
.end method

.method aq()Z
    .locals 1

    .prologue
    .line 2964
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2965
    const/4 v0, 0x0

    .line 2967
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$a;->q:Z

    goto :goto_0
.end method

.method ar()Z
    .locals 1

    .prologue
    .line 2971
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    .line 2972
    const/4 v0, 0x0

    .line 2974
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment$a;->s:Z

    goto :goto_0
.end method

.method public b(IZI)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 1581
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1380
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->i(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroidx/lifecycle/e;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    return-object v0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 860
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->u()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2597
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->o()V

    .line 2598
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->y:Z

    .line 2599
    new-instance v0, Landroidx/fragment/app/s;

    invoke-direct {v0}, Landroidx/fragment/app/s;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/s;

    .line 2600
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    .line 2601
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2603
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->a()V

    .line 2605
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ac:Landroidx/lifecycle/n;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/s;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->b(Ljava/lang/Object;)V

    .line 2613
    :goto_0
    return-void

    .line 2607
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/s;

    invoke-virtual {v0}, Landroidx/fragment/app/s;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2608
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2611
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/s;

    goto :goto_0
.end method

.method public b(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1977
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 1044
    return-void
.end method

.method b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    .prologue
    .line 2707
    const/4 v0, 0x0

    .line 2708
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v1, :cond_1

    .line 2709
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->L:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->M:Z

    if-eqz v1, :cond_0

    .line 2710
    const/4 v0, 0x1

    .line 2711
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2713
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v1, p1, p2}, Landroidx/fragment/app/j;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2715
    :cond_1
    return v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 2045
    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroidx/lifecycle/u;
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/u;

    move-result-object v0

    return-object v0
.end method

.method c(I)V
    .locals 1

    .prologue
    .line 2887
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->S:Landroidx/fragment/app/Fragment$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 2891
    :goto_0
    return-void

    .line 2890
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->d()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$a;->d:I

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 1060
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->J:Z

    .line 1061
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    if-eqz v0, :cond_1

    .line 1062
    if-eqz p1, :cond_0

    .line 1063
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/Fragment;)V

    .line 1070
    :goto_0
    return-void

    .line 1065
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/j;->e(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 1068
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->K:Z

    goto :goto_0
.end method

.method c(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 2719
    const/4 v0, 0x0

    .line 2720
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v1, :cond_1

    .line 2721
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->L:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->M:Z

    if-eqz v1, :cond_0

    .line 2722
    const/4 v0, 0x1

    .line 2723
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/view/Menu;)V

    .line 2725
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/j;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2727
    :cond_1
    return v0
.end method

.method c(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2731
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v1, :cond_2

    .line 2732
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->L:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->M:Z

    if-eqz v1, :cond_1

    .line 2733
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2741
    :cond_0
    :goto_0
    return v0

    .line 2737
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/j;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2741
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d(I)V
    .locals 1

    .prologue
    .line 2960
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->d()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    iput p1, v0, Landroidx/fragment/app/Fragment$a;->c:I

    .line 2961
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1720
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1721
    return-void
.end method

.method d(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 2757
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v0, :cond_1

    .line 2758
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->L:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->M:Z

    if-eqz v0, :cond_0

    .line 2759
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/view/Menu;)V

    .line 2761
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->b(Landroid/view/Menu;)V

    .line 2763
    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 1102
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->M:Z

    if-eq v0, p1, :cond_0

    .line 1103
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->M:Z

    .line 1104
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->L:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1105
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->g()V

    .line 1108
    :cond_0
    return-void
.end method

.method d(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2745
    iget-boolean v1, p0, Landroidx/fragment/app/Fragment;->H:Z

    if-nez v1, :cond_2

    .line 2746
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2753
    :cond_0
    :goto_0
    return v0

    .line 2749
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/j;->b(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2753
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Landroidx/savedstate/a;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ad:Landroidx/savedstate/b;

    invoke-virtual {v0}, Landroidx/savedstate/b;->a()Landroidx/savedstate/a;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1780
    return-void
.end method

.method public e(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 1131
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->R:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Landroidx/fragment/app/Fragment;->k:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->Y:Z

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/j;->f(Landroidx/fragment/app/Fragment;)V

    .line 1135
    :cond_0
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->R:Z

    .line 1136
    iget v0, p0, Landroidx/fragment/app/Fragment;->k:I

    if-ge v0, v1, :cond_2

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->Q:Z

    .line 1137
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->l:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 1140
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->n:Ljava/lang/Boolean;

    .line 1142
    :cond_1
    return-void

    .line 1136
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 570
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final f(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 547
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->P:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->m:Landroid/util/SparseArray;

    .line 551
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 552
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->k(Landroid/os/Bundle;)V

    .line 553
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-nez v0, :cond_1

    .line 554
    new-instance v0, Landroidx/fragment/app/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/t;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->O:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ab:Landroidx/fragment/app/s;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/s;->a(Landroidx/lifecycle/e$a;)V

    .line 560
    :cond_2
    return-void
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 1790
    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Fragment already added and state has been saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_0
    iput-object p1, p0, Landroidx/fragment/app/Fragment;->p:Landroid/os/Bundle;

    .line 628
    return-void
.end method

.method public g(Z)V
    .locals 0

    .prologue
    .line 1799
    return-void
.end method

.method h(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1412
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1413
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->X:Landroid/view/LayoutInflater;

    .line 1414
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->X:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 1901
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1902
    return-void
.end method

.method public h(Z)V
    .locals 0

    .prologue
    .line 1819
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 577
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1430
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    .line 1431
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1434
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->e()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1435
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v1}, Landroidx/fragment/app/j;->B()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/h/e;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 1436
    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 1746
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1747
    return-void
.end method

.method i(Z)V
    .locals 1

    .prologue
    .line 2678
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->f(Z)V

    .line 2679
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->a(Z)V

    .line 2680
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 1838
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1839
    return-void
.end method

.method j(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1623
    if-eqz p1, :cond_0

    .line 1624
    const-string/jumbo v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1626
    if-eqz v0, :cond_0

    .line 1627
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/j;->a(Landroid/os/Parcelable;)V

    .line 1628
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->p()V

    .line 1631
    :cond_0
    return-void
.end method

.method j(Z)V
    .locals 1

    .prologue
    .line 2683
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->g(Z)V

    .line 2684
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->b(Z)V

    .line 2685
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 1858
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1859
    return-void
.end method

.method public k(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1736
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1737
    return-void
.end method

.method k(Z)V
    .locals 1

    .prologue
    .line 2978
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;->d()Landroidx/fragment/app/Fragment$a;

    move-result-object v0

    iput-boolean p1, v0, Landroidx/fragment/app/Fragment$a;->s:Z

    .line 2979
    return-void
.end method

.method l(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2582
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->o()V

    .line 2583
    iput v1, p0, Landroidx/fragment/app/Fragment;->k:I

    .line 2584
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2585
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ad:Landroidx/savedstate/b;

    invoke-virtual {v0, p1}, Landroidx/savedstate/b;->a(Landroid/os/Bundle;)V

    .line 2586
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 2587
    iput-boolean v1, p0, Landroidx/fragment/app/Fragment;->Y:Z

    .line 2588
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-nez v0, :cond_0

    .line 2589
    new-instance v0, Landroidx/fragment/app/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/t;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2592
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->aa:Landroidx/lifecycle/i;

    sget-object v1, Landroidx/lifecycle/e$a;->ON_CREATE:Landroidx/lifecycle/e$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/e$a;)V

    .line 2593
    return-void
.end method

.method final l()Z
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Landroidx/fragment/app/Fragment;->z:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->p:Landroid/os/Bundle;

    return-object v0
.end method

.method m(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 2616
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->o()V

    .line 2617
    const/4 v0, 0x2

    iput v0, p0, Landroidx/fragment/app/Fragment;->k:I

    .line 2618
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 2619
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 2620
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    if-nez v0, :cond_0

    .line 2621
    new-instance v0, Landroidx/fragment/app/t;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/fragment/app/t;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2624
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->q()V

    .line 2625
    return-void
.end method

.method n(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 2766
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 2767
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->ad:Landroidx/savedstate/b;

    invoke-virtual {v0, p1}, Landroidx/savedstate/b;->b(Landroid/os/Bundle;)V

    .line 2768
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->n()Landroid/os/Parcelable;

    move-result-object v0

    .line 2769
    if-eqz v0, :cond_0

    .line 2770
    const-string/jumbo v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2772
    :cond_0
    return-void
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    if-nez v0, :cond_0

    .line 664
    const/4 v0, 0x0

    .line 666
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->f()Z

    move-result v0

    goto :goto_0
.end method

.method public final o()Landroidx/fragment/app/Fragment;
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->q:Landroidx/fragment/app/Fragment;

    .line 744
    :goto_0
    return-object v0

    .line 740
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    iget-object v0, v0, Landroidx/fragment/app/j;->g:Ljava/util/HashMap;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    goto :goto_0

    .line 744
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 1804
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1805
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .prologue
    .line 1999
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->s()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/d;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2000
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1844
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->b:Z

    .line 1845
    return-void
.end method

.method public p()Landroid/content/Context;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->l()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public final q()Landroid/content/Context;
    .locals 3

    .prologue
    .line 772
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->p()Landroid/content/Context;

    move-result-object v0

    .line 773
    if-nez v0, :cond_0

    .line 774
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    :cond_0
    return-object v0
.end method

.method public final r()Landroidx/fragment/app/d;
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->k()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/d;

    goto :goto_0
.end method

.method public final s()Landroidx/fragment/app/d;
    .locals 3

    .prologue
    .line 800
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->r()Landroidx/fragment/app/d;

    move-result-object v0

    .line 801
    if-nez v0, :cond_0

    .line 802
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not attached to an activity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_0
    return-object v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    .prologue
    .line 1194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1195
    return-void
.end method

.method public final t()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    invoke-virtual {v0}, Landroidx/fragment/app/h;->j()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 583
    invoke-static {p0, v0}, Landroidx/core/g/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 584
    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget v1, p0, Landroidx/fragment/app/Fragment;->E:I

    if-eqz v1, :cond_0

    .line 588
    const-string/jumbo v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget v1, p0, Landroidx/fragment/app/Fragment;->E:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->G:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 592
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v1, p0, Landroidx/fragment/app/Fragment;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 838
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->q()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final v()Landroidx/fragment/app/i;
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->A:Landroidx/fragment/app/j;

    return-object v0
.end method

.method public final w()Landroidx/fragment/app/i;
    .locals 3

    .prologue
    .line 908
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->v()Landroidx/fragment/app/i;

    move-result-object v0

    .line 909
    if-nez v0, :cond_0

    .line 910
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not associated with a fragment manager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_0
    return-object v0
.end method

.method public final x()Landroidx/fragment/app/i;
    .locals 3

    .prologue
    .line 922
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    .line 923
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has not been attached yet."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 925
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->C:Landroidx/fragment/app/j;

    return-object v0
.end method

.method public final y()Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->D:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public final z()Z
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->B:Landroidx/fragment/app/h;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
