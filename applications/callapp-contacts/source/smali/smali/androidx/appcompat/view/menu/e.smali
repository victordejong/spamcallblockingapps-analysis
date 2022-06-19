.class public final Landroidx/appcompat/view/menu/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroidx/appcompat/view/menu/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/e$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/LayoutInflater;

.field c:Landroidx/appcompat/view/menu/g;

.field d:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field e:I

.field f:I

.field g:I

.field public h:Landroidx/appcompat/view/menu/m$a;

.field i:Landroidx/appcompat/view/menu/e$a;

.field private j:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Landroidx/appcompat/view/menu/e;->g:I

    .line 83
    iput p2, p0, Landroidx/appcompat/view/menu/e;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p2, v0}, Landroidx/appcompat/view/menu/e;-><init>(II)V

    .line 72
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->a:Landroid/content/Context;

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;
    .locals 3

    .line 105
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/view/LayoutInflater;

    sget v1, Landroidx/appcompat/a$g;->abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/ExpandedMenuView;

    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    .line 108
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    if-nez p1, :cond_0

    .line 109
    new-instance p1, Landroidx/appcompat/view/menu/e$a;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/e$a;-><init>(Landroidx/appcompat/view/menu/e;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    .line 111
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    return-object p1
.end method

.method public final a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 2

    .line 88
    iget v0, p0, Landroidx/appcompat/view/menu/e;->f:I

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Landroidx/appcompat/view/menu/e;->f:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/e;->a:Landroid/content/Context;

    .line 90
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/view/LayoutInflater;

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 92
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->a:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->b:Landroid/view/LayoutInflater;

    .line 97
    :cond_1
    :goto_0
    iput-object p2, p0, Landroidx/appcompat/view/menu/e;->c:Landroidx/appcompat/view/menu/g;

    .line 98
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e$a;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 1

    .line 228
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "android:menu:list"

    .line 7200
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7202
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 1

    .line 155
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->h:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;Z)V

    :cond_0
    return-void
.end method

.method public final a(Landroidx/appcompat/view/menu/m$a;)V
    .locals 0

    .line 138
    iput-object p1, p0, Landroidx/appcompat/view/menu/e;->h:Landroidx/appcompat/view/menu/m$a;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 133
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroidx/appcompat/view/menu/r;)Z
    .locals 6

    .line 143
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/r;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 146
    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/h;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/h;-><init>(Landroidx/appcompat/view/menu/g;)V

    .line 2054
    iget-object v1, v0, Landroidx/appcompat/view/menu/h;->a:Landroidx/appcompat/view/menu/g;

    .line 2057
    new-instance v2, Landroidx/appcompat/app/c$a;

    .line 2830
    iget-object v3, v1, Landroidx/appcompat/view/menu/g;->a:Landroid/content/Context;

    .line 2057
    invoke-direct {v2, v3}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    .line 2059
    new-instance v3, Landroidx/appcompat/view/menu/e;

    invoke-virtual {v2}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroidx/appcompat/a$g;->abc_list_menu_item_layout:I

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/view/menu/e;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Landroidx/appcompat/view/menu/h;->c:Landroidx/appcompat/view/menu/e;

    .line 2062
    iget-object v3, v0, Landroidx/appcompat/view/menu/h;->c:Landroidx/appcompat/view/menu/e;

    .line 3138
    iput-object v0, v3, Landroidx/appcompat/view/menu/e;->h:Landroidx/appcompat/view/menu/m$a;

    .line 2063
    iget-object v3, v0, Landroidx/appcompat/view/menu/h;->a:Landroidx/appcompat/view/menu/g;

    iget-object v4, v0, Landroidx/appcompat/view/menu/h;->c:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;)V

    .line 2064
    iget-object v3, v0, Landroidx/appcompat/view/menu/h;->c:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/e;->c()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 3659
    iget-object v4, v2, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-object v3, v4, Landroidx/appcompat/app/AlertController$a;->w:Landroid/widget/ListAdapter;

    .line 3660
    iget-object v3, v2, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-object v0, v3, Landroidx/appcompat/app/AlertController$a;->x:Landroid/content/DialogInterface$OnClickListener;

    .line 4320
    iget-object v3, v1, Landroidx/appcompat/view/menu/g;->h:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 4398
    iget-object v1, v2, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-object v3, v1, Landroidx/appcompat/app/AlertController$a;->g:Landroid/view/View;

    goto :goto_0

    .line 5316
    :cond_1
    iget-object v3, v1, Landroidx/appcompat/view/menu/g;->g:Landroid/graphics/drawable/Drawable;

    .line 5445
    iget-object v4, v2, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-object v3, v4, Landroidx/appcompat/app/AlertController$a;->d:Landroid/graphics/drawable/Drawable;

    .line 6312
    iget-object v1, v1, Landroidx/appcompat/view/menu/g;->f:Ljava/lang/CharSequence;

    .line 2073
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    .line 6620
    :goto_0
    iget-object v1, v2, Landroidx/appcompat/app/c$a;->a:Landroidx/appcompat/app/AlertController$a;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$a;->u:Landroid/content/DialogInterface$OnKeyListener;

    .line 2080
    invoke-virtual {v2}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/app/c;

    .line 2081
    iget-object v1, v0, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/app/c;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/c;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2083
    iget-object v1, v0, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/app/c;

    invoke-virtual {v1}, Landroidx/appcompat/app/c;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    .line 2084
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2088
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2090
    iget-object v0, v0, Landroidx/appcompat/view/menu/h;->b:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroidx/appcompat/app/c;->show()V

    .line 147
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->h:Landroidx/appcompat/view/menu/m$a;

    if-eqz v0, :cond_2

    .line 148
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/m$a;->a(Landroidx/appcompat/view/menu/g;)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final b()I
    .locals 1

    .line 212
    iget v0, p0, Landroidx/appcompat/view/menu/e;->j:I

    return v0
.end method

.method public final b(Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final c()Landroid/widget/ListAdapter;
    .locals 1

    .line 125
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Landroidx/appcompat/view/menu/e$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/e$a;-><init>(Landroidx/appcompat/view/menu/e;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    .line 128
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    return-object v0
.end method

.method public final c(Landroidx/appcompat/view/menu/i;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final f()Landroid/os/Parcelable;
    .locals 3

    .line 217
    iget-object v0, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 221
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7192
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 7193
    iget-object v2, p0, Landroidx/appcompat/view/menu/e;->d:Landroidx/appcompat/view/menu/ExpandedMenuView;

    if-eqz v2, :cond_1

    .line 7194
    invoke-virtual {v2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    :cond_1
    const-string v2, "android:menu:list"

    .line 7196
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 173
    iget-object p1, p0, Landroidx/appcompat/view/menu/e;->c:Landroidx/appcompat/view/menu/g;

    iget-object p2, p0, Landroidx/appcompat/view/menu/e;->i:Landroidx/appcompat/view/menu/e$a;

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/e$a;->a(I)Landroidx/appcompat/view/menu/i;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/m;I)Z

    return-void
.end method
