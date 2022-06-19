.class public final Landroidx/fragment/app/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/j$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/j$a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroidx/fragment/app/FragmentManager;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    iput-object p1, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method final a(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 92
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/FragmentManager;

    .line 4810
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 5380
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    .line 96
    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;)V

    .line 98
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    .line 122
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/FragmentManager;

    .line 7810
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 8380
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    .line 126
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 128
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 2

    .line 171
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/FragmentManager;

    .line 10810
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 11380
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    const/4 v1, 0x1

    .line 175
    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 177
    :cond_0
    iget-object p3, p0, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/j$a;

    if-eqz p4, :cond_2

    .line 178
    iget-boolean v1, v0, Landroidx/fragment/app/j$a;->b:Z

    if-eqz v1, :cond_1

    .line 179
    :cond_2
    iget-object v0, v0, Landroidx/fragment/app/j$a;->a:Landroidx/fragment/app/FragmentManager$c;

    iget-object v1, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, v1, p1, p2}, Landroidx/fragment/app/FragmentManager$c;->a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method final a(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    .line 258
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/FragmentManager;

    .line 16810
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 17380
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    const/4 v1, 0x1

    .line 262
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/Fragment;Z)V

    .line 264
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/j$a;

    if-eqz p2, :cond_2

    .line 265
    iget-boolean v2, v1, Landroidx/fragment/app/j$a;->b:Z

    if-eqz v2, :cond_1

    .line 266
    :cond_2
    iget-object v1, v1, Landroidx/fragment/app/j$a;->a:Landroidx/fragment/app/FragmentManager$c;

    iget-object v2, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v2, p1}, Landroidx/fragment/app/FragmentManager$c;->a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method final b(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 107
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/FragmentManager;

    .line 6810
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 7380
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    .line 111
    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/Fragment;)V

    .line 113
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final b(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    .line 138
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/FragmentManager;

    .line 8810
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 9380
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    .line 142
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/j;->b(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 144
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final c(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 186
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/FragmentManager;

    .line 11810
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 12380
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    .line 190
    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->c(Landroidx/fragment/app/Fragment;)V

    .line 192
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    .line 155
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/FragmentManager;

    .line 9810
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 10380
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    .line 159
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/j;->c(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 161
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final d(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 200
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/FragmentManager;

    .line 12810
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 13380
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    .line 204
    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/Fragment;)V

    .line 206
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final d(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    .line 243
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/FragmentManager;

    .line 15810
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 16380
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    .line 247
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/j;->d(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 249
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final e(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 214
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/FragmentManager;

    .line 13810
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 14380
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    .line 218
    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->e(Landroidx/fragment/app/Fragment;)V

    .line 220
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final f(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 228
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/FragmentManager;

    .line 14810
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 15380
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    .line 232
    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->f(Landroidx/fragment/app/Fragment;)V

    .line 234
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final g(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 272
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/FragmentManager;

    .line 17810
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 18380
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    .line 276
    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->g(Landroidx/fragment/app/Fragment;)V

    .line 278
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final h(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 286
    iget-object v0, p0, Landroidx/fragment/app/j;->b:Landroidx/fragment/app/FragmentManager;

    .line 18810
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->n:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 19380
    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->j:Landroidx/fragment/app/j;

    .line 290
    invoke-virtual {v0, p1}, Landroidx/fragment/app/j;->h(Landroidx/fragment/app/Fragment;)V

    .line 292
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/j;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
