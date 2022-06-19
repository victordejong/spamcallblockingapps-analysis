.class public Landroidx/appcompat/app/l$a;
.super Landroidx/appcompat/view/b;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/l;

.field private final b:Landroid/content/Context;

.field private final c:Landroidx/appcompat/view/menu/g;

.field private d:Landroidx/appcompat/view/b$a;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/l;Landroid/content/Context;Landroidx/appcompat/view/b$a;)V
    .locals 2

    .prologue
    .line 993
    iput-object p1, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    invoke-direct {p0}, Landroidx/appcompat/view/b;-><init>()V

    .line 994
    iput-object p2, p0, Landroidx/appcompat/app/l$a;->b:Landroid/content/Context;

    .line 995
    iput-object p3, p0, Landroidx/appcompat/app/l$a;->d:Landroidx/appcompat/view/b$a;

    .line 996
    new-instance v0, Landroidx/appcompat/view/menu/g;

    invoke-direct {v0, p2}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 997
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->a(I)Landroidx/appcompat/view/menu/g;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/l$a;->c:Landroidx/appcompat/view/menu/g;

    .line 998
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    .line 999
    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 1003
    new-instance v0, Landroidx/appcompat/view/g;

    iget-object v1, p0, Landroidx/appcompat/app/l$a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/l$a;->b(Ljava/lang/CharSequence;)V

    .line 1087
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 1071
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/appcompat/app/l$a;->e:Ljava/lang/ref/WeakReference;

    .line 1072
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;)V
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->d:Landroidx/appcompat/view/b$a;

    if-nez v0, :cond_0

    .line 1155
    :goto_0
    return-void

    .line 1153
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/l$a;->d()V

    .line 1154
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->a()Z

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1077
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 1106
    invoke-super {p0, p1}, Landroidx/appcompat/view/b;->a(Z)V

    .line 1107
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 1108
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->d:Landroidx/appcompat/view/b$a;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->d:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p0, p2}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;Landroid/view/MenuItem;)Z

    move-result v0

    .line 1125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->c:Landroidx/appcompat/view/menu/g;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 1091
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/l$a;->a(Ljava/lang/CharSequence;)V

    .line 1092
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1082
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1013
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->h:Landroidx/appcompat/app/l$a;

    if-eq v0, p0, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-boolean v0, v0, Landroidx/appcompat/app/l;->l:Z

    iget-object v1, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-boolean v1, v1, Landroidx/appcompat/app/l;->m:Z

    invoke-static {v0, v1, v2}, Landroidx/appcompat/app/l;->a(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1025
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iput-object p0, v0, Landroidx/appcompat/app/l;->i:Landroidx/appcompat/view/b;

    .line 1026
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-object v1, p0, Landroidx/appcompat/app/l$a;->d:Landroidx/appcompat/view/b$a;

    iput-object v1, v0, Landroidx/appcompat/app/l;->j:Landroidx/appcompat/view/b$a;

    .line 1030
    :goto_1
    iput-object v3, p0, Landroidx/appcompat/app/l$a;->d:Landroidx/appcompat/view/b$a;

    .line 1031
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/l;->j(Z)V

    .line 1034
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->b()V

    .line 1035
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->d:Landroidx/appcompat/widget/x;

    invoke-interface {v0}, Landroidx/appcompat/widget/x;->a()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    .line 1037
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->b:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-object v1, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-boolean v1, v1, Landroidx/appcompat/app/l;->o:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 1039
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iput-object v3, v0, Landroidx/appcompat/app/l;->h:Landroidx/appcompat/app/l$a;

    goto :goto_0

    .line 1028
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->d:Landroidx/appcompat/view/b$a;

    invoke-interface {v0, p0}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;)V

    goto :goto_1
.end method

.method public d()V
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->h:Landroidx/appcompat/app/l$a;

    if-eq v0, p0, :cond_0

    .line 1057
    :goto_0
    return-void

    .line 1051
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->h()V

    .line 1053
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->d:Landroidx/appcompat/view/b$a;

    iget-object v1, p0, Landroidx/appcompat/app/l$a;->c:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, p0, v1}, Landroidx/appcompat/view/b$a;->b(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->i()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/app/l$a;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->i()V

    .line 1056
    throw v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 1060
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->h()V

    .line 1062
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->d:Landroidx/appcompat/view/b$a;

    iget-object v1, p0, Landroidx/appcompat/app/l$a;->c:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, p0, v1}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1064
    iget-object v1, p0, Landroidx/appcompat/app/l$a;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->i()V

    .line 1062
    return v0

    .line 1064
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/appcompat/app/l$a;->c:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->i()V

    .line 1065
    throw v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->a:Landroidx/appcompat/app/l;

    iget-object v0, v0, Landroidx/appcompat/app/l;->e:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->d()Z

    move-result v0

    return v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 1117
    iget-object v0, p0, Landroidx/appcompat/app/l$a;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/l$a;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
