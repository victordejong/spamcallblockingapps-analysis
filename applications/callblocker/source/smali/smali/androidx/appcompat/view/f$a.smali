.class public Landroidx/appcompat/view/f$a;
.super Ljava/lang/Object;
.source "SupportActionModeWrapper.java"

# interfaces
.implements Landroidx/appcompat/view/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/view/ActionMode$Callback;

.field final b:Landroid/content/Context;

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroidx/appcompat/view/f;",
            ">;"
        }
    .end annotation
.end field

.field final d:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g",
            "<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Landroidx/appcompat/view/f$a;->b:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Landroidx/appcompat/view/f$a;->a:Landroid/view/ActionMode$Callback;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/f$a;->c:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Landroidx/b/g;

    invoke-direct {v0}, Landroidx/b/g;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/f$a;->d:Landroidx/b/g;

    .line 155
    return-void
.end method

.method private a(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Landroidx/appcompat/view/f$a;->d:Landroidx/b/g;

    invoke-virtual {v0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    .line 183
    if-nez v0, :cond_0

    .line 184
    new-instance v1, Landroidx/appcompat/view/menu/o;

    iget-object v2, p0, Landroidx/appcompat/view/f$a;->b:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Landroidx/core/b/a/a;

    invoke-direct {v1, v2, v0}, Landroidx/appcompat/view/menu/o;-><init>(Landroid/content/Context;Landroidx/core/b/a/a;)V

    .line 185
    iget-object v0, p0, Landroidx/appcompat/view/f$a;->d:Landroidx/b/g;

    invoke-virtual {v0, p1, v1}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 187
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/b;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Landroidx/appcompat/view/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/f$a;->b(Landroidx/appcompat/view/b;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 179
    return-void
.end method

.method public a(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Landroidx/appcompat/view/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/f$a;->b(Landroidx/appcompat/view/b;)Landroid/view/ActionMode;

    move-result-object v1

    .line 160
    invoke-direct {p0, p2}, Landroidx/appcompat/view/f$a;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    .line 159
    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroidx/appcompat/view/b;Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Landroidx/appcompat/view/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/f$a;->b(Landroidx/appcompat/view/b;)Landroid/view/ActionMode;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/j;

    iget-object v3, p0, Landroidx/appcompat/view/f$a;->b:Landroid/content/Context;

    check-cast p2, Landroidx/core/b/a/b;

    invoke-direct {v2, v3, p2}, Landroidx/appcompat/view/menu/j;-><init>(Landroid/content/Context;Landroidx/core/b/a/b;)V

    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(Landroidx/appcompat/view/b;)Landroid/view/ActionMode;
    .locals 4

    .prologue
    .line 192
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/view/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 193
    iget-object v0, p0, Landroidx/appcompat/view/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/f;

    .line 194
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroidx/appcompat/view/f;->b:Landroidx/appcompat/view/b;

    if-ne v3, p1, :cond_0

    .line 204
    :goto_1
    return-object v0

    .line 192
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 202
    :cond_1
    new-instance v0, Landroidx/appcompat/view/f;

    iget-object v1, p0, Landroidx/appcompat/view/f$a;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/view/f;-><init>(Landroid/content/Context;Landroidx/appcompat/view/b;)V

    .line 203
    iget-object v1, p0, Landroidx/appcompat/view/f$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public b(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Landroidx/appcompat/view/f$a;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/f$a;->b(Landroidx/appcompat/view/b;)Landroid/view/ActionMode;

    move-result-object v1

    .line 166
    invoke-direct {p0, p2}, Landroidx/appcompat/view/f$a;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v2

    .line 165
    invoke-interface {v0, v1, v2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
