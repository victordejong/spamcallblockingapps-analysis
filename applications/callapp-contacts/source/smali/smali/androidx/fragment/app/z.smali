.class abstract Landroidx/fragment/app/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/z$a;,
        Landroidx/fragment/app/z$b;
    }
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/z$b;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/z$b;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:Z

.field private final e:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/z;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Landroidx/fragment/app/z;->c:Z

    .line 90
    iput-boolean v0, p0, Landroidx/fragment/app/z;->d:Z

    .line 93
    iput-object p1, p0, Landroidx/fragment/app/z;->e:Landroid/view/ViewGroup;

    return-void
.end method

.method private a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z$b;
    .locals 3

    .line 132
    iget-object v0, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/z$b;

    .line 2558
    iget-object v2, v1, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 133
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2562
    iget-boolean v2, v1, Landroidx/fragment/app/z$b;->d:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static a(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/z;
    .locals 0

    .line 55
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->r()Landroidx/fragment/app/aa;

    move-result-object p1

    .line 56
    invoke-static {p0, p1}, Landroidx/fragment/app/z;->a(Landroid/view/ViewGroup;Landroidx/fragment/app/aa;)Landroidx/fragment/app/z;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/view/ViewGroup;Landroidx/fragment/app/aa;)Landroidx/fragment/app/z;
    .locals 2

    .line 72
    sget v0, Landroidx/fragment/a$b;->special_effects_controller_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 73
    instance-of v1, v0, Landroidx/fragment/app/z;

    if-eqz v1, :cond_0

    .line 74
    check-cast v0, Landroidx/fragment/app/z;

    return-object v0

    .line 77
    :cond_0
    invoke-interface {p1, p0}, Landroidx/fragment/app/aa;->a(Landroid/view/ViewGroup;)Landroidx/fragment/app/z;

    move-result-object p1

    .line 78
    sget v0, Landroidx/fragment/a$b;->special_effects_controller_view_tag:I

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method

.method private a(Landroidx/fragment/app/z$b$b;Landroidx/fragment/app/z$b$a;Landroidx/fragment/app/p;)V
    .locals 3

    .line 190
    iget-object v0, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 191
    :try_start_0
    new-instance v1, Landroidx/core/os/a;

    invoke-direct {v1}, Landroidx/core/os/a;-><init>()V

    .line 8149
    iget-object v2, p3, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 193
    invoke-direct {p0, v2}, Landroidx/fragment/app/z;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z$b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {v2, p1, p2}, Landroidx/fragment/app/z$b;->a(Landroidx/fragment/app/z$b$b;Landroidx/fragment/app/z$b$a;)V

    .line 198
    monitor-exit v0

    return-void

    .line 200
    :cond_0
    new-instance v2, Landroidx/fragment/app/z$a;

    invoke-direct {v2, p1, p2, p3, v1}, Landroidx/fragment/app/z$a;-><init>(Landroidx/fragment/app/z$b$b;Landroidx/fragment/app/z$b$a;Landroidx/fragment/app/p;Landroidx/core/os/a;)V

    .line 202
    iget-object p1, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance p1, Landroidx/fragment/app/z$1;

    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/z$1;-><init>(Landroidx/fragment/app/z;Landroidx/fragment/app/z$a;)V

    invoke-virtual {v2, p1}, Landroidx/fragment/app/z$a;->a(Ljava/lang/Runnable;)V

    .line 214
    new-instance p1, Landroidx/fragment/app/z$2;

    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/z$2;-><init>(Landroidx/fragment/app/z;Landroidx/fragment/app/z$a;)V

    invoke-virtual {v2, p1}, Landroidx/fragment/app/z$a;->a(Ljava/lang/Runnable;)V

    .line 221
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z$b;
    .locals 3

    .line 142
    iget-object v0, p0, Landroidx/fragment/app/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/z$b;

    .line 3558
    iget-object v2, v1, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 143
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3562
    iget-boolean v2, v1, Landroidx/fragment/app/z$b;->d:Z

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private f()V
    .locals 4

    .line 335
    iget-object v0, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/z$b;

    .line 10549
    iget-object v2, v1, Landroidx/fragment/app/z$b;->b:Landroidx/fragment/app/z$b$a;

    .line 337
    sget-object v3, Landroidx/fragment/app/z$b$a;->ADDING:Landroidx/fragment/app/z$b$a;

    if-ne v2, v3, :cond_0

    .line 10558
    iget-object v2, v1, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 339
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    .line 340
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-static {v2}, Landroidx/fragment/app/z$b$b;->from(I)Landroidx/fragment/app/z$b$b;

    move-result-object v2

    .line 341
    sget-object v3, Landroidx/fragment/app/z$b$a;->NONE:Landroidx/fragment/app/z$b$a;

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/z$b;->a(Landroidx/fragment/app/z$b$b;Landroidx/fragment/app/z$b$a;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/ViewGroup;
    .locals 1

    .line 98
    iget-object v0, p0, Landroidx/fragment/app/z;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method final a(Landroidx/fragment/app/p;)Landroidx/fragment/app/z$b$a;
    .locals 1

    .line 1149
    iget-object v0, p1, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 118
    invoke-direct {p0, v0}, Landroidx/fragment/app/z;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1549
    iget-object p1, v0, Landroidx/fragment/app/z$b;->b:Landroidx/fragment/app/z$b$a;

    return-object p1

    .line 2149
    :cond_0
    iget-object p1, p1, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 123
    invoke-direct {p0, p1}, Landroidx/fragment/app/z;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/z$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2549
    iget-object p1, p1, Landroidx/fragment/app/z$b;->b:Landroidx/fragment/app/z$b$a;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(Landroidx/fragment/app/z$b$b;Landroidx/fragment/app/p;)V
    .locals 2

    const/4 v0, 0x2

    .line 152
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4149
    iget-object v1, p2, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    sget-object v0, Landroidx/fragment/app/z$b$a;->ADDING:Landroidx/fragment/app/z$b$a;

    invoke-direct {p0, p1, v0, p2}, Landroidx/fragment/app/z;->a(Landroidx/fragment/app/z$b$b;Landroidx/fragment/app/z$b$a;Landroidx/fragment/app/p;)V

    return-void
.end method

.method abstract a(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/z$b;",
            ">;Z)V"
        }
    .end annotation
.end method

.method final b()V
    .locals 6

    .line 229
    iget-object v0, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 230
    :try_start_0
    invoke-direct {p0}, Landroidx/fragment/app/z;->f()V

    const/4 v1, 0x0

    .line 232
    iput-boolean v1, p0, Landroidx/fragment/app/z;->d:Z

    .line 233
    iget-object v1, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 234
    iget-object v2, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/z$b;

    .line 8558
    iget-object v3, v2, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 236
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v3}, Landroidx/fragment/app/z$b$b;->from(Landroid/view/View;)Landroidx/fragment/app/z$b$b;

    move-result-object v3

    .line 9539
    iget-object v4, v2, Landroidx/fragment/app/z$b;->a:Landroidx/fragment/app/z$b$b;

    .line 237
    sget-object v5, Landroidx/fragment/app/z$b$b;->VISIBLE:Landroidx/fragment/app/z$b$b;

    if-ne v4, v5, :cond_0

    sget-object v4, Landroidx/fragment/app/z$b$b;->VISIBLE:Landroidx/fragment/app/z$b$b;

    if-eq v3, v4, :cond_0

    .line 9558
    iget-object v1, v2, Landroidx/fragment/app/z$b;->c:Landroidx/fragment/app/Fragment;

    .line 242
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/fragment/app/z;->d:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 246
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final b(Landroidx/fragment/app/p;)V
    .locals 2

    const/4 v0, 0x2

    .line 161
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5149
    iget-object v1, p1, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    :cond_0
    sget-object v0, Landroidx/fragment/app/z$b$b;->VISIBLE:Landroidx/fragment/app/z$b$b;

    sget-object v1, Landroidx/fragment/app/z$b$a;->NONE:Landroidx/fragment/app/z$b$a;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/z;->a(Landroidx/fragment/app/z$b$b;Landroidx/fragment/app/z$b$a;Landroidx/fragment/app/p;)V

    return-void
.end method

.method final c()V
    .locals 1

    .line 250
    iget-boolean v0, p0, Landroidx/fragment/app/z;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Landroidx/fragment/app/z;->d:Z

    .line 252
    invoke-virtual {p0}, Landroidx/fragment/app/z;->d()V

    :cond_0
    return-void
.end method

.method final c(Landroidx/fragment/app/p;)V
    .locals 2

    const/4 v0, 0x2

    .line 170
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6149
    iget-object v1, p1, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    :cond_0
    sget-object v0, Landroidx/fragment/app/z$b$b;->GONE:Landroidx/fragment/app/z$b$b;

    sget-object v1, Landroidx/fragment/app/z$b$a;->NONE:Landroidx/fragment/app/z$b$a;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/z;->a(Landroidx/fragment/app/z$b$b;Landroidx/fragment/app/z$b$a;Landroidx/fragment/app/p;)V

    return-void
.end method

.method final d()V
    .locals 6

    .line 257
    iget-boolean v0, p0, Landroidx/fragment/app/z;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/z;->e:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/v;->E(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/z;->e()V

    .line 265
    iput-boolean v1, p0, Landroidx/fragment/app/z;->c:Z

    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 269
    :try_start_0
    iget-object v2, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 270
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/z;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 272
    iget-object v3, p0, Landroidx/fragment/app/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 273
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/z$b;

    const/4 v4, 0x2

    .line 274
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SpecialEffectsController: Cancelling operation "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    :cond_3
    invoke-virtual {v3}, Landroidx/fragment/app/z$b;->c()V

    .line 9674
    iget-boolean v4, v3, Landroidx/fragment/app/z$b;->e:Z

    if-nez v4, :cond_2

    .line 282
    iget-object v4, p0, Landroidx/fragment/app/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 286
    :cond_4
    invoke-direct {p0}, Landroidx/fragment/app/z;->f()V

    .line 288
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 289
    iget-object v3, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 290
    iget-object v3, p0, Landroidx/fragment/app/z;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 291
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/z$b;

    .line 292
    invoke-virtual {v4}, Landroidx/fragment/app/z$b;->a()V

    goto :goto_1

    .line 294
    :cond_5
    iget-boolean v3, p0, Landroidx/fragment/app/z;->c:Z

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/z;->a(Ljava/util/List;Z)V

    .line 295
    iput-boolean v1, p0, Landroidx/fragment/app/z;->c:Z

    .line 297
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final d(Landroidx/fragment/app/p;)V
    .locals 2

    const/4 v0, 0x2

    .line 179
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7149
    iget-object v1, p1, Landroidx/fragment/app/p;->a:Landroidx/fragment/app/Fragment;

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    sget-object v0, Landroidx/fragment/app/z$b$b;->REMOVED:Landroidx/fragment/app/z$b$b;

    sget-object v1, Landroidx/fragment/app/z$b$a;->REMOVING:Landroidx/fragment/app/z$b$a;

    invoke-direct {p0, v0, v1, p1}, Landroidx/fragment/app/z;->a(Landroidx/fragment/app/z$b$b;Landroidx/fragment/app/z$b$a;Landroidx/fragment/app/p;)V

    return-void
.end method

.method final e()V
    .locals 8

    .line 301
    iget-object v0, p0, Landroidx/fragment/app/z;->e:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/v;->E(Landroid/view/View;)Z

    move-result v0

    .line 302
    iget-object v1, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 303
    :try_start_0
    invoke-direct {p0}, Landroidx/fragment/app/z;->f()V

    .line 304
    iget-object v2, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/z$b;

    .line 305
    invoke-virtual {v3}, Landroidx/fragment/app/z$b;->a()V

    goto :goto_0

    .line 309
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/z;->b:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 310
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/z$b;

    .line 311
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SpecialEffectsController: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v5, ""

    goto :goto_2

    .line 314
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Container "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Landroidx/fragment/app/z;->e:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not attached to window. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Cancelling running operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    :cond_2
    invoke-virtual {v3}, Landroidx/fragment/app/z$b;->c()V

    goto :goto_1

    .line 321
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/z;->a:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 322
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/z$b;

    .line 323
    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->a(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 324
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SpecialEffectsController: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    const-string v6, ""

    goto :goto_4

    .line 326
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Container "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Landroidx/fragment/app/z;->e:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is not attached to window. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Cancelling pending operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    :cond_5
    invoke-virtual {v3}, Landroidx/fragment/app/z$b;->c()V

    goto :goto_3

    .line 331
    :cond_6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
