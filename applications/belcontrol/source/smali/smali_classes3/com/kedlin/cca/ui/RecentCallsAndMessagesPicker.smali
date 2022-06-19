.class public Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;
.super Landroid/view/View;
.source ""

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;,
        Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;
    }
.end annotation


# instance fields
.field public a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;

.field public c:Ljava/lang/String;

.field public d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ll81;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->c:Ljava/lang/String;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->d:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->c:Ljava/lang/String;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->d:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->c:Ljava/lang/String;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->d:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->g()V

    return-void
.end method

.method public static synthetic a(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->d:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic b(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;)Ljava/util/EnumSet;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->a:Ljava/util/EnumSet;

    return-object p0
.end method

.method public static synthetic d(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;Landroid/view/SubMenu;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->f(Landroid/view/SubMenu;Z)V

    return-void
.end method

.method public static synthetic e(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;)Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;
    .locals 0

    iget-object p0, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->b:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;

    return-object p0
.end method


# virtual methods
.method public final f(Landroid/view/SubMenu;Z)V
    .locals 6

    iget-object v0, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-instance v1, Ll81;

    invoke-direct {v1}, Ll81;-><init>()V

    invoke-virtual {v1, p2}, Ll81;->f0(Z)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    :cond_1
    new-instance v1, Ll81;

    invoke-direct {v1}, Ll81;-><init>()V

    invoke-virtual {v1, p2}, Ll81;->S(Landroid/database/Cursor;)Ll81;

    iget-object v3, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Ll81;->m:Li91;

    invoke-virtual {v4}, Li91;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Ll81;->h:Ljava/lang/String;

    iget-object v5, v1, Ll81;->m:Li91;

    invoke-virtual {v5}, Li91;->m()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, ""

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Ll81;->h:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-nez p2, :cond_4

    const/4 p2, -0x1

    const v0, 0x7f1104eb

    invoke-interface {p1, v2, p2, v2, v0}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_4
    :goto_1
    return-void
.end method

.method public final g()V
    .locals 1

    new-instance v0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;

    invoke-direct {v0, p0}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;-><init>(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/util/EnumSet;Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;",
            ">;",
            "Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->a:Ljava/util/EnumSet;

    iput-object p3, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->b:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;

    iput-object p1, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->c:Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$a;

    invoke-direct {p2, p0}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$a;-><init>(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;)V

    const-wide/16 v0, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    iget-object v0, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->b:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->d:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll81;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v2, p1, Ll81;->m:Li91;

    invoke-virtual {v2}, Li91;->m()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Ll81;->h:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p1, v0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    iget-object v2, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->b:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;

    const/4 v3, 0x0

    invoke-interface {v2, v0, p1, v3}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method
