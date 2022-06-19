.class public Lcom/rey/material/app/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rey/material/app/b$b;,
        Lcom/rey/material/app/b$c;,
        Lcom/rey/material/app/b$d;,
        Lcom/rey/material/app/b$a;
    }
.end annotation


# static fields
.field private static volatile f:Lcom/rey/material/app/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Lcom/rey/material/app/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/rey/material/app/b;->b:Landroid/util/SparseArray;

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/b;->e:Lcom/rey/material/app/b$a;

    invoke-interface {v0, p1}, Lcom/rey/material/app/b$a;->a(I)V

    return-void
.end method

.method public static c()Lcom/rey/material/app/b;
    .locals 2

    sget-object v0, Lcom/rey/material/app/b;->f:Lcom/rey/material/app/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/rey/material/app/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/rey/material/app/b;->f:Lcom/rey/material/app/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/rey/material/app/b;

    invoke-direct {v1}, Lcom/rey/material/app/b;-><init>()V

    sput-object v1, Lcom/rey/material/app/b;->f:Lcom/rey/material/app/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/rey/material/app/b;->f:Lcom/rey/material/app/b;

    return-object v0
.end method

.method private d()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/rey/material/app/b;->a:Landroid/content/Context;

    const-string v1, "theme.pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;Landroid/util/AttributeSet;II)I
    .locals 1

    sget-object v0, Lcom/callerid/block/R$styleable;->ThemableView:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private g(I)[I
    .locals 2

    iget-object v0, p0, Lcom/rey/material/app/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rey/material/app/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/rey/material/app/b;->i(Landroid/content/Context;I)[I

    move-result-object v0

    iget-object v1, p0, Lcom/rey/material/app/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static h(Landroid/content/Context;IILcom/rey/material/app/b$a;)V
    .locals 1

    invoke-static {}, Lcom/rey/material/app/b;->c()Lcom/rey/material/app/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/rey/material/app/b;->l(Landroid/content/Context;IILcom/rey/material/app/b$a;)V

    return-void
.end method

.method private i(Landroid/content/Context;I)[I
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result p2

    new-array v0, p2, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method


# virtual methods
.method public b(I)I
    .locals 1

    iget v0, p0, Lcom/rey/material/app/b;->c:I

    invoke-virtual {p0, p1, v0}, Lcom/rey/material/app/b;->e(II)I

    move-result p1

    return p1
.end method

.method public e(II)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/rey/material/app/b;->g(I)[I

    move-result-object p1

    aget p1, p1, p2

    return p1
.end method

.method public j(Lcom/rey/material/app/b$c;)V
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/b;->e:Lcom/rey/material/app/b$a;

    invoke-interface {v0, p1}, Lcom/rey/material/app/b$a;->b(Lcom/rey/material/app/b$c;)V

    return-void
.end method

.method public k(I)Z
    .locals 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/rey/material/app/b;->c:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/rey/material/app/b;->c:I

    invoke-direct {p0}, Lcom/rey/material/app/b;->d()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget v0, p0, Lcom/rey/material/app/b;->c:I

    const-string v1, "theme"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget p1, p0, Lcom/rey/material/app/b;->c:I

    invoke-direct {p0, p1}, Lcom/rey/material/app/b;->a(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method protected l(Landroid/content/Context;IILcom/rey/material/app/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/app/b;->a:Landroid/content/Context;

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/rey/material/app/b$d;

    invoke-direct {p4}, Lcom/rey/material/app/b$d;-><init>()V

    :goto_0
    iput-object p4, p0, Lcom/rey/material/app/b;->e:Lcom/rey/material/app/b$a;

    iput p2, p0, Lcom/rey/material/app/b;->d:I

    iput p3, p0, Lcom/rey/material/app/b;->c:I

    if-lt p3, p2, :cond_1

    invoke-virtual {p0, p3}, Lcom/rey/material/app/b;->k(I)Z

    :cond_1
    return-void
.end method

.method public m(Lcom/rey/material/app/b$c;)V
    .locals 1

    iget-object v0, p0, Lcom/rey/material/app/b;->e:Lcom/rey/material/app/b$a;

    invoke-interface {v0, p1}, Lcom/rey/material/app/b$a;->c(Lcom/rey/material/app/b$c;)V

    return-void
.end method
