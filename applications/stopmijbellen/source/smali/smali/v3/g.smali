.class public Lv3/g;
.super Landroidx/appcompat/view/menu/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/view/menu/e;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/g;

    .line 2
    new-instance p2, Lv3/i;

    .line 3
    iget-object p3, p0, Landroidx/appcompat/view/menu/e;->a:Landroid/content/Context;

    .line 4
    invoke-direct {p2, p3, p0, p1}, Lv3/i;-><init>(Landroid/content/Context;Lv3/g;Landroidx/appcompat/view/menu/g;)V

    .line 5
    iput-object p2, p1, Landroidx/appcompat/view/menu/g;->o:Landroidx/appcompat/view/menu/l;

    .line 6
    iget-object p1, p1, Landroidx/appcompat/view/menu/g;->e:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/l;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p2
.end method
