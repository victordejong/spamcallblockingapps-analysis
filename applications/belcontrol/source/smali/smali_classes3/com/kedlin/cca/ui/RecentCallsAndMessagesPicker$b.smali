.class public Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;


# direct methods
.method public constructor <init>(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;->a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object p1, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;->a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;

    invoke-static {p1}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->e(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;)Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;->a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;

    invoke-static {p1}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->e(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;)Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v0}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic c(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object p1, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;->a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;

    invoke-static {p1}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->e(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;)Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;->a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;

    invoke-static {p1}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->e(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;)Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v0}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$d;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return v0
.end method


# virtual methods
.method public synthetic b(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public synthetic d(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;->c(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    iget-object p2, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;->a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;->a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;

    invoke-static {p3}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->a(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/SparseArray;->clear()V

    iget-object p3, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;->a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;

    invoke-static {p3}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->b(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;->a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;

    invoke-static {p3}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->b(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;->a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;

    invoke-static {p3}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->c(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;)Ljava/util/EnumSet;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;

    sget-object v1, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;->a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;

    invoke-static {v0}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;->a(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;->a:Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;

    invoke-static {v0}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;->a(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    invoke-static {v1, v0, v2}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;->d(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker;Landroid/view/SubMenu;Z)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;->a(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lob1;

    invoke-direct {v1, p0}, Lob1;-><init>(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;)V

    goto :goto_2

    :cond_5
    invoke-static {v0}, Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;->a(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$e;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lpb1;

    invoke-direct {v1, p0}, Lpb1;-><init>(Lcom/kedlin/cca/ui/RecentCallsAndMessagesPicker$b;)V

    :goto_2
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_6
    return-void
.end method
