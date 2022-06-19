.class public final Lcom/hjq/permissions/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hjq/permissions/d;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/hjq/permissions/d;->a:Landroid/app/Activity;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hjq/permissions/b;->f(Landroid/content/Context;Z)V

    return-void
.end method

.method public static d(Landroid/app/Activity;)Lcom/hjq/permissions/d;
    .locals 1

    new-instance v0, Lcom/hjq/permissions/d;

    invoke-direct {v0, p0}, Lcom/hjq/permissions/d;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public varargs b([Ljava/lang/String;)Lcom/hjq/permissions/d;
    .locals 1

    iget-object v0, p0, Lcom/hjq/permissions/d;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public c(Lcom/hjq/permissions/a;)V
    .locals 2

    iget-object v0, p0, Lcom/hjq/permissions/d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/hjq/permissions/d;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/hjq/permissions/c;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/hjq/permissions/d;->b:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/hjq/permissions/d;->b:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/hjq/permissions/d;->a:Landroid/app/Activity;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/hjq/permissions/d;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/hjq/permissions/c;->d(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/hjq/permissions/d;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/hjq/permissions/d;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/hjq/permissions/c;->e(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/hjq/permissions/d;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/hjq/permissions/d;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/hjq/permissions/c;->b(Landroid/app/Activity;Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/hjq/permissions/d;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean v1, p0, Lcom/hjq/permissions/d;->c:Z

    invoke-static {v0, v1}, Lcom/hjq/permissions/PermissionFragment;->a(Ljava/util/ArrayList;Z)Lcom/hjq/permissions/PermissionFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/hjq/permissions/d;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/hjq/permissions/PermissionFragment;->b(Landroid/app/Activity;Lcom/hjq/permissions/a;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/hjq/permissions/d;->b:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/hjq/permissions/a;->b(Ljava/util/List;Z)V

    :goto_1
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The permission request callback interface must be implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The activity is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The requested permission cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
