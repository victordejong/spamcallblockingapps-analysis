.class public Lwn0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwn0$f;,
        Lwn0$e;,
        Lwn0$d;
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile f:Lwn0;


# instance fields
.field public a:Ltn0;

.field public b:Lqn0;

.field public final c:Landroid/content/SharedPreferences;

.field public d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lwn0;->f()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lwn0;->e:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ltn0;->h:Ltn0;

    iput-object v0, p0, Lwn0;->a:Ltn0;

    sget-object v0, Lqn0;->d:Lqn0;

    iput-object v0, p0, Lwn0;->b:Lqn0;

    const-string v0, "rerequest"

    iput-object v0, p0, Lwn0;->d:Ljava/lang/String;

    invoke-static {}, Lgn0;->n()V

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.loginManager"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lwn0;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lxn0;
    .locals 3

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->h()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/facebook/AccessToken;->n()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/facebook/login/LoginClient$Request;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    new-instance v0, Lxn0;

    invoke-direct {v0, p1, v1, p0}, Lxn0;-><init>(Lcom/facebook/AccessToken;Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public static e()Lwn0;
    .locals 2

    sget-object v0, Lwn0;->f:Lwn0;

    if-nez v0, :cond_1

    const-class v0, Lwn0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lwn0;->f:Lwn0;

    if-nez v1, :cond_0

    new-instance v1, Lwn0;

    invoke-direct {v1}, Lwn0;-><init>()V

    sput-object v1, Lwn0;->f:Lwn0;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lwn0;->f:Lwn0;

    return-object v0
.end method

.method public static f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lwn0$b;

    invoke-direct {v0}, Lwn0$b;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "publish"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lwn0;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public b(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    new-instance v7, Lcom/facebook/login/LoginClient$Request;

    iget-object v1, p0, Lwn0;->a:Ltn0;

    new-instance v0, Ljava/util/HashSet;

    if-eqz p1, :cond_0

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lwn0;->b:Lqn0;

    iget-object v4, p0, Lwn0;->d:Ljava/lang/String;

    invoke-static {}, Lui0;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/facebook/login/LoginClient$Request;-><init>(Ltn0;Ljava/util/Set;Lqn0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/AccessToken;->s()Z

    move-result p1

    invoke-virtual {v7, p1}, Lcom/facebook/login/LoginClient$Request;->n(Z)V

    return-object v7
.end method

.method public final c(Lcom/facebook/AccessToken;Lcom/facebook/login/LoginClient$Request;Lri0;ZLpi0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            "Lcom/facebook/login/LoginClient$Request;",
            "Lri0;",
            "Z",
            "Lpi0<",
            "Lxn0;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/facebook/AccessToken;->u(Lcom/facebook/AccessToken;)V

    invoke-static {}, Lcom/facebook/Profile;->b()V

    :cond_0
    if-eqz p5, :cond_5

    if-eqz p1, :cond_1

    invoke-static {p2, p1}, Lwn0;->a(Lcom/facebook/login/LoginClient$Request;Lcom/facebook/AccessToken;)Lxn0;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p4, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lxn0;->b()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p4

    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p5, p3}, Lpi0;->b(Lri0;)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_5

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lwn0;->v(Z)V

    invoke-interface {p5, p2}, Lpi0;->onSuccess(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-interface {p5}, Lpi0;->a()V

    :cond_5
    :goto_2
    return-void
.end method

.method public d(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->g()Ltn0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "com.facebook.LoginFragment:Request"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public final h(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$b;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/login/LoginClient$Result$b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            "Z",
            "Lcom/facebook/login/LoginClient$Request;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lwn0$f;->a(Landroid/content/Context;)Lvn0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p6, :cond_1

    const-string p1, "fb_mobile_login_complete"

    const-string p2, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    invoke-virtual {v0, p1, p2}, Lvn0;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p5, :cond_2

    const-string p1, "1"

    goto :goto_0

    :cond_2
    const-string p1, "0"

    :goto_0
    const-string p5, "try_login_activity"

    invoke-virtual {v2, p5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p6}, Lcom/facebook/login/LoginClient$Request;->b()Ljava/lang/String;

    move-result-object v1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lvn0;->e(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/LoginClient$Result$b;Ljava/util/Map;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public i(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lwn0;->b(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p2

    new-instance v0, Lwn0$d;

    invoke-direct {v0, p1}, Lwn0$d;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0, p2}, Lwn0;->x(Lfo0;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public j(Landroid/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lpm0;

    invoke-direct {v0, p1}, Lpm0;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v0, p2}, Lwn0;->l(Lpm0;Ljava/util/Collection;)V

    return-void
.end method

.method public k(Landroidx/fragment/app/Fragment;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lpm0;

    invoke-direct {v0, p1}, Lpm0;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0, p2}, Lwn0;->l(Lpm0;Ljava/util/Collection;)V

    return-void
.end method

.method public l(Lpm0;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpm0;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lwn0;->b(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p2

    new-instance v0, Lwn0$e;

    invoke-direct {v0, p1}, Lwn0$e;-><init>(Lpm0;)V

    invoke-virtual {p0, v0, p2}, Lwn0;->x(Lfo0;Lcom/facebook/login/LoginClient$Request;)V

    return-void
.end method

.method public m(Landroid/app/Activity;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lwn0;->z(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, p2}, Lwn0;->i(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/AccessToken;->u(Lcom/facebook/AccessToken;)V

    invoke-static {v0}, Lcom/facebook/Profile;->e(Lcom/facebook/Profile;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lwn0;->v(Z)V

    return-void
.end method

.method public final o(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V
    .locals 0

    invoke-static {p1}, Lwn0$f;->a(Landroid/content/Context;)Lvn0;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lvn0;->f(Lcom/facebook/login/LoginClient$Request;)V

    :cond_0
    return-void
.end method

.method public p(ILandroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lwn0;->q(ILandroid/content/Intent;Lpi0;)Z

    move-result p1

    return p1
.end method

.method public q(ILandroid/content/Intent;Lpi0;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Lpi0<",
            "Lxn0;",
            ">;)Z"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    sget-object v2, Lcom/facebook/login/LoginClient$Result$b;->d:Lcom/facebook/login/LoginClient$Result$b;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    const-string v6, "com.facebook.LoginFragment:Result"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/login/LoginClient$Result;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/facebook/login/LoginClient$Result;->f:Lcom/facebook/login/LoginClient$Request;

    iget-object v6, v1, Lcom/facebook/login/LoginClient$Result;->a:Lcom/facebook/login/LoginClient$Result$b;

    const/4 v7, -0x1

    if-ne v0, v7, :cond_1

    sget-object v0, Lcom/facebook/login/LoginClient$Result$b;->b:Lcom/facebook/login/LoginClient$Result$b;

    if-ne v6, v0, :cond_0

    iget-object v0, v1, Lcom/facebook/login/LoginClient$Result;->b:Lcom/facebook/AccessToken;

    goto :goto_0

    :cond_0
    new-instance v0, Loi0;

    iget-object v7, v1, Lcom/facebook/login/LoginClient$Result;->c:Ljava/lang/String;

    invoke-direct {v0, v7}, Loi0;-><init>(Ljava/lang/String;)V

    move-object v14, v4

    move-object v4, v0

    move-object v0, v14

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    move-object v0, v4

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v4

    :goto_0
    iget-object v1, v1, Lcom/facebook/login/LoginClient$Result;->g:Ljava/util/Map;

    move v14, v5

    move-object v5, v2

    move-object v2, v6

    move v6, v14

    goto :goto_1

    :cond_3
    move-object v0, v4

    move-object v1, v0

    move-object v5, v1

    const/4 v6, 0x0

    :goto_1
    move-object v8, v1

    move-object v7, v2

    move-object v1, v5

    move v12, v6

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    sget-object v2, Lcom/facebook/login/LoginClient$Result$b;->c:Lcom/facebook/login/LoginClient$Result$b;

    move-object v7, v2

    move-object v0, v4

    move-object v1, v0

    move-object v8, v1

    const/4 v12, 0x1

    goto :goto_2

    :cond_5
    move-object v7, v2

    move-object v0, v4

    move-object v1, v0

    move-object v8, v1

    const/4 v12, 0x0

    :goto_2
    if-nez v4, :cond_6

    if-nez v0, :cond_6

    if-nez v12, :cond_6

    new-instance v4, Lri0;

    const-string v2, "Unexpected call to LoginManager.onActivityResult"

    invoke-direct {v4, v2}, Lri0;-><init>(Ljava/lang/String;)V

    :cond_6
    const/4 v10, 0x1

    const/4 v6, 0x0

    move-object v5, p0

    move-object v9, v4

    move-object v11, v1

    invoke-virtual/range {v5 .. v11}, Lwn0;->h(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$b;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    move-object v8, p0

    move-object v9, v0

    move-object v10, v1

    move-object v11, v4

    move-object/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Lwn0;->c(Lcom/facebook/AccessToken;Lcom/facebook/login/LoginClient$Request;Lri0;ZLpi0;)V

    return v3
.end method

.method public r(Lni0;Lpi0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lni0;",
            "Lpi0<",
            "Lxn0;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Lbm0;

    if-eqz v0, :cond_0

    check-cast p1, Lbm0;

    sget-object v0, Lbm0$b;->b:Lbm0$b;

    invoke-virtual {v0}, Lbm0$b;->a()I

    move-result v0

    new-instance v1, Lwn0$a;

    invoke-direct {v1, p0, p2}, Lwn0$a;-><init>(Lwn0;Lpi0;)V

    invoke-virtual {p1, v0, v1}, Lbm0;->b(ILbm0$a;)V

    return-void

    :cond_0
    new-instance p1, Lri0;

    const-string p2, "Unexpected CallbackManager, please use the provided Factory."

    invoke-direct {p1, p2}, Lri0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final s(Landroid/content/Intent;)Z
    .locals 2

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public t(Ljava/lang/String;)Lwn0;
    .locals 0

    iput-object p1, p0, Lwn0;->d:Ljava/lang/String;

    return-object p0
.end method

.method public u(Lqn0;)Lwn0;
    .locals 0

    iput-object p1, p0, Lwn0;->b:Lqn0;

    return-object p0
.end method

.method public final v(Z)V
    .locals 2

    iget-object v0, p0, Lwn0;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "express_login_allowed"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public w(Ltn0;)Lwn0;
    .locals 0

    iput-object p1, p0, Lwn0;->a:Ltn0;

    return-object p0
.end method

.method public final x(Lfo0;Lcom/facebook/login/LoginClient$Request;)V
    .locals 8

    invoke-interface {p1}, Lfo0;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lwn0;->o(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V

    sget-object v0, Lbm0$b;->b:Lbm0$b;

    invoke-virtual {v0}, Lbm0$b;->a()I

    move-result v0

    new-instance v1, Lwn0$c;

    invoke-direct {v1, p0}, Lwn0$c;-><init>(Lwn0;)V

    invoke-static {v0, v1}, Lbm0;->c(ILbm0$a;)V

    invoke-virtual {p0, p1, p2}, Lwn0;->y(Lfo0;Lcom/facebook/login/LoginClient$Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lri0;

    const-string v1, "Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest."

    invoke-direct {v0, v1}, Lri0;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-interface {p1}, Lfo0;->a()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/facebook/login/LoginClient$Result$b;->d:Lcom/facebook/login/LoginClient$Result$b;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, v0

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lwn0;->h(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$b;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    throw v0
.end method

.method public final y(Lfo0;Lcom/facebook/login/LoginClient$Request;)Z
    .locals 2

    invoke-virtual {p0, p2}, Lwn0;->d(Lcom/facebook/login/LoginClient$Request;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p2}, Lwn0;->s(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/login/LoginClient;->p()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lfo0;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method public final z(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lwn0;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lri0;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lri0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method
