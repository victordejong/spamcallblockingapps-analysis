.class public Lcom/callapp/contacts/manager/CallAppBarManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/SearchContactsFilter;
.implements Lcom/callapp/contacts/widget/CallAppToolbar$SearchEventsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/CallAppBarManager$OnActionModeClickListener;,
        Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroidx/appcompat/app/AppCompatActivity;

.field public c:Lcom/callapp/contacts/widget/CallAppToolbar;

.field public d:Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

.field private e:Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;

.field private f:Landroidx/drawerlayout/widget/DrawerLayout;

.field private g:Landroidx/appcompat/view/b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Landroidx/drawerlayout/widget/DrawerLayout;Lcom/callapp/contacts/widget/CallAppToolbar;Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->b:Landroidx/appcompat/app/AppCompatActivity;

    .line 55
    iput-object p3, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->c:Lcom/callapp/contacts/widget/CallAppToolbar;

    .line 56
    iput-object p4, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->e:Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;

    .line 57
    iput-object p2, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->f:Landroidx/drawerlayout/widget/DrawerLayout;

    const p3, 0x7f0a00e1

    .line 58
    invoke-virtual {p2, p3}, Landroidx/drawerlayout/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->a:Landroid/view/View;

    .line 59
    iget-object p2, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->b:Landroidx/appcompat/app/AppCompatActivity;

    iget-object p3, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->c:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-virtual {p3}, Lcom/callapp/contacts/widget/CallAppToolbar;->getMainToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 62
    :try_start_0
    check-cast p1, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;

    iput-object p1, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->d:Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    invoke-interface {p1, p0}, Lcom/callapp/contacts/activity/interfaces/SearchContactsEvents;->registerFilteredEvents(Lcom/callapp/contacts/activity/interfaces/SearchContactsFilter;)V

    .line 68
    iget-object p1, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->c:Lcom/callapp/contacts/widget/CallAppToolbar;

    .line 2368
    iget-object p1, p1, Lcom/callapp/contacts/widget/CallAppToolbar;->c:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 64
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity must implement SearchContactsEvents"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/CallAppBarManager;)Landroidx/appcompat/view/b;
    .locals 1

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->g:Landroidx/appcompat/view/b;

    return-object v0
.end method

.method static synthetic b(Lcom/callapp/contacts/manager/CallAppBarManager;)Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->e:Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, "CallAppBarManager"

    .line 91
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->c:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/CallAppToolbar;->b()V

    return-void
.end method

.method public final a(ILjava/lang/String;Lcom/callapp/contacts/manager/CallAppBarManager$OnActionModeClickListener;)V
    .locals 8

    .line 143
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->b:Landroidx/appcompat/app/AppCompatActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f060244

    .line 147
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v4

    .line 149
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->b:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v7, Lcom/callapp/contacts/manager/CallAppBarManager$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/callapp/contacts/manager/CallAppBarManager$1;-><init>(Lcom/callapp/contacts/manager/CallAppBarManager;IILjava/lang/String;Lcom/callapp/contacts/manager/CallAppBarManager$OnActionModeClickListener;)V

    invoke-virtual {v0, v7}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->g:Landroidx/appcompat/view/b;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 225
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSubmitClick: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "CallAppBarManager"

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->e:Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;ZZZ)V
    .locals 0

    .line 192
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "performFilter: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "CallAppBarManager"

    invoke-static {p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/CallAppBarManager;->isInSearchMode()Z

    move-result p2

    if-nez p2, :cond_0

    .line 3111
    iget-object p2, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->c:Lcom/callapp/contacts/widget/CallAppToolbar;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/callapp/contacts/widget/CallAppToolbar;->b(Z)V

    .line 3112
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/CallAppBarManager;->j()V

    .line 199
    :cond_0
    iget-object p2, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->c:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/widget/CallAppToolbar;->setQuery(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 96
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "collapse, withAnimation = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "CallAppBarManager"

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->c:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/widget/CallAppToolbar;->a(Z)V

    return-void
.end method

.method public final b()V
    .locals 2

    const-string v0, "CallAppBarManager"

    .line 101
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->c:Lcom/callapp/contacts/widget/CallAppToolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/CallAppToolbar;->c(Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 231
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTextChanged: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "CallAppBarManager"

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->e:Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->c:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/CallAppToolbar;->setVisibility(I)V

    return-void
.end method

.method public final d()V
    .locals 1

    const-string v0, "CallAppBarManager"

    .line 210
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/CallAppBarManager;->j()V

    .line 212
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->e:Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;->b()V

    return-void
.end method

.method public final e()V
    .locals 2

    const-string v0, "CallAppBarManager"

    .line 217
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->e:Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;->a()V

    .line 3271
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->f:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x7f0a00e1

    .line 3272
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/16 v1, 0x17

    .line 4155
    iput v1, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->a:I

    return-void
.end method

.method public final f()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->e:Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;->d()V

    return-void
.end method

.method public final g()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->e:Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;->c()V

    return-void
.end method

.method public getBarHeight()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->c:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/CallAppToolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getCurrentSearchText()Ljava/lang/String;
    .locals 1

    const-string v0, "CallAppBarManager"

    .line 86
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->c:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/CallAppToolbar;->getCurrentSearchText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getToolbarBackground()Landroid/widget/ImageView;
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->f:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x7f0a019a

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public final h()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->f:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x800003

    .line 4722
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->c(I)V

    return-void
.end method

.method public final i()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->e:Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/manager/CallAppBarManager$CallAppBarEvents;->e()V

    return-void
.end method

.method public isInSearchMode()Z
    .locals 1

    const-string v0, "CallAppBarManager"

    .line 81
    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->c:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/CallAppToolbar;->isInSearchMode()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->f:Landroidx/drawerlayout/widget/DrawerLayout;

    const v1, 0x7f0a00e1

    .line 266
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    const/4 v1, 0x0

    .line 5155
    iput v1, v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->a:I

    return-void
.end method

.method public final k()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->g:Landroidx/appcompat/view/b;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Landroidx/appcompat/view/b;->c()V

    :cond_0
    return-void
.end method

.method public setActionModeText(Ljava/lang/String;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->g:Landroidx/appcompat/view/b;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/b;->b(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setHasImageDrawable(Z)V
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/callapp/contacts/manager/CallAppBarManager;->getToolbarBackground()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Z)V

    .line 261
    iget-object p1, p0, Lcom/callapp/contacts/manager/CallAppBarManager;->c:Lcom/callapp/contacts/widget/CallAppToolbar;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/CallAppToolbar;->getMainToolbar()Landroidx/appcompat/widget/Toolbar;

    move-result-object p1

    const v0, 0x7f0601f1

    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    return-void
.end method
