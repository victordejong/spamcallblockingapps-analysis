.class public Lcom/facebook/login/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/g$b;,
        Lcom/facebook/login/g$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:Lcom/facebook/login/g;


# instance fields
.field public a:Lcom/facebook/login/d;

.field public b:Lcom/facebook/login/b;

.field public c:Ljava/lang/String;

.field private final f:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7555
    new-instance v0, Lcom/facebook/login/g$2;

    invoke-direct {v0}, Lcom/facebook/login/g$2;-><init>()V

    .line 7563
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 67
    sput-object v0, Lcom/facebook/login/g;->d:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Lcom/facebook/login/d;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/d;

    iput-object v0, p0, Lcom/facebook/login/g;->a:Lcom/facebook/login/d;

    .line 72
    sget-object v0, Lcom/facebook/login/b;->FRIENDS:Lcom/facebook/login/b;

    iput-object v0, p0, Lcom/facebook/login/g;->b:Lcom/facebook/login/b;

    const-string v0, "rerequest"

    .line 74
    iput-object v0, p0, Lcom/facebook/login/g;->c:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/facebook/internal/af;->a()V

    .line 79
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.loginManager"

    const/4 v2, 0x0

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/g;->f:Landroid/content/SharedPreferences;

    .line 82
    sget-boolean v0, Lcom/facebook/g;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/facebook/internal/e;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/facebook/login/a;

    invoke-direct {v0}, Lcom/facebook/login/a;-><init>()V

    .line 87
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.chrome"

    .line 86
    invoke-static {v1, v2, v0}, Landroidx/browser/customtabs/c;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/e;)Z

    .line 89
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v0

    .line 90
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Landroidx/browser/customtabs/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static a()Lcom/facebook/login/g;
    .locals 2

    .line 100
    sget-object v0, Lcom/facebook/login/g;->e:Lcom/facebook/login/g;

    if-nez v0, :cond_1

    .line 101
    const-class v0, Lcom/facebook/login/g;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lcom/facebook/login/g;->e:Lcom/facebook/login/g;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Lcom/facebook/login/g;

    invoke-direct {v1}, Lcom/facebook/login/g;-><init>()V

    sput-object v1, Lcom/facebook/login/g;->e:Lcom/facebook/login/g;

    .line 105
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 108
    :cond_1
    :goto_0
    sget-object v0, Lcom/facebook/login/g;->e:Lcom/facebook/login/g;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V
    .locals 0

    .line 3890
    invoke-static {p0}, Lcom/facebook/login/g$b;->a(Landroid/content/Context;)Lcom/facebook/login/f;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 627
    invoke-virtual {p0, p1}, Lcom/facebook/login/f;->a(Lcom/facebook/login/LoginClient$Request;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$a;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/login/LoginClient$Result$a;",
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

    .line 4890
    invoke-static {p0}, Lcom/facebook/login/g$b;->a(Landroid/content/Context;)Lcom/facebook/login/f;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p5, :cond_1

    const-string p0, "fb_mobile_login_complete"

    const-string p1, "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest."

    .line 644
    invoke-virtual {v0, p0, p1}, Lcom/facebook/login/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 648
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p4, :cond_2

    const-string p0, "1"

    goto :goto_0

    :cond_2
    const-string p0, "0"

    :goto_0
    const-string p4, "try_login_activity"

    .line 649
    invoke-virtual {v2, p4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    invoke-virtual {p5}, Lcom/facebook/login/LoginClient$Request;->getAuthId()Ljava/lang/String;

    move-result-object v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 654
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/login/f;->a(Ljava/lang/String;Ljava/util/Map;Lcom/facebook/login/LoginClient$Result$a;Ljava/util/Map;Ljava/lang/Exception;)V

    return-void
.end method

.method public static a(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 522
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 523
    invoke-static {v0}, Lcom/facebook/login/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 524
    :cond_1
    new-instance p0, Lcom/facebook/FacebookException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    .line 525
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public static a(Lcom/facebook/login/i;Lcom/facebook/login/LoginClient$Request;)Z
    .locals 3

    .line 5684
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5685
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/facebook/FacebookActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5686
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getLoginBehavior()Lcom/facebook/login/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/login/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5689
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "request"

    .line 5690
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "com.facebook.LoginFragment:Request"

    .line 5691
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6679
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return v1

    .line 669
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/facebook/login/LoginClient;->getLoginRequestCode()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/facebook/login/i;->a(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v1
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "publish"

    .line 549
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manage"

    .line 550
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/facebook/login/g;->d:Ljava/util/Set;

    .line 551
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/facebook/login/g;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "express_login_allowed"

    .line 833
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 834
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final a(ILandroid/content/Intent;Lcom/facebook/f;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Intent;",
            "Lcom/facebook/f<",
            "Lcom/facebook/login/h;",
            ">;)Z"
        }
    .end annotation

    .line 207
    sget-object v0, Lcom/facebook/login/LoginClient$Result$a;->ERROR:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    const-string v4, "com.facebook.LoginFragment:Result"

    .line 213
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/facebook/login/LoginClient$Result;

    if-eqz p2, :cond_3

    .line 215
    iget-object v0, p2, Lcom/facebook/login/LoginClient$Result;->request:Lcom/facebook/login/LoginClient$Request;

    .line 216
    iget-object v4, p2, Lcom/facebook/login/LoginClient$Result;->code:Lcom/facebook/login/LoginClient$Result$a;

    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    .line 218
    iget-object p1, p2, Lcom/facebook/login/LoginClient$Result;->code:Lcom/facebook/login/LoginClient$Result$a;

    sget-object v5, Lcom/facebook/login/LoginClient$Result$a;->SUCCESS:Lcom/facebook/login/LoginClient$Result$a;

    if-ne p1, v5, :cond_0

    .line 219
    iget-object p1, p2, Lcom/facebook/login/LoginClient$Result;->token:Lcom/facebook/AccessToken;

    move-object v3, p1

    move-object p1, v2

    goto :goto_0

    .line 221
    :cond_0
    new-instance p1, Lcom/facebook/FacebookAuthorizationException;

    iget-object v5, p2, Lcom/facebook/login/LoginClient$Result;->errorMessage:Ljava/lang/String;

    invoke-direct {p1, v5}, Lcom/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    move-object p1, v2

    move-object v3, p1

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move-object p1, v2

    move-object v3, p1

    :goto_0
    const/4 v5, 0x0

    .line 226
    :goto_1
    iget-object p2, p2, Lcom/facebook/login/LoginClient$Result;->loggingExtras:Ljava/util/Map;

    move-object v10, v3

    move-object v3, v0

    move-object v0, v4

    move-object v4, v10

    goto :goto_2

    :cond_3
    move-object p1, v2

    move-object p2, p1

    move-object v3, p2

    move-object v4, v3

    const/4 v5, 0x0

    :goto_2
    move-object v9, v4

    move-object v4, v0

    move-object v0, v3

    move v10, v5

    move-object v5, p2

    move p2, v10

    goto :goto_3

    :cond_4
    if-nez p1, :cond_5

    .line 230
    sget-object v0, Lcom/facebook/login/LoginClient$Result$a;->CANCEL:Lcom/facebook/login/LoginClient$Result$a;

    move-object v4, v0

    move-object p1, v2

    move-object v0, p1

    move-object v5, v0

    move-object v9, v5

    const/4 p2, 0x1

    goto :goto_3

    :cond_5
    move-object v4, v0

    move-object p1, v2

    move-object v0, p1

    move-object v5, v0

    move-object v9, v5

    const/4 p2, 0x0

    :goto_3
    if-nez p1, :cond_6

    if-nez v9, :cond_6

    if-nez p2, :cond_6

    .line 234
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v3, "Unexpected call to LoginManager.onActivityResult"

    invoke-direct {p1, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    :cond_6
    const/4 v3, 0x0

    const/4 v7, 0x1

    move-object v6, p1

    move-object v8, v0

    .line 239
    invoke-static/range {v3 .. v8}, Lcom/facebook/login/g;->a(Landroid/content/Context;Lcom/facebook/login/LoginClient$Result$a;Ljava/util/Map;Ljava/lang/Exception;ZLcom/facebook/login/LoginClient$Request;)V

    if-eqz v9, :cond_7

    .line 1719
    invoke-static {v9}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 1720
    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    :cond_7
    if-eqz p3, :cond_d

    if-eqz v9, :cond_9

    .line 2698
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v2

    .line 2699
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {v9}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2703
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient$Request;->isRerequest()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2704
    invoke-interface {v3, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 2707
    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2708
    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2709
    new-instance v2, Lcom/facebook/login/h;

    invoke-direct {v2, v9, v3, v0}, Lcom/facebook/login/h;-><init>(Lcom/facebook/AccessToken;Ljava/util/Set;Ljava/util/Set;)V

    :cond_9
    if-nez p2, :cond_c

    if-eqz v2, :cond_a

    .line 3063
    iget-object p2, v2, Lcom/facebook/login/h;->a:Ljava/util/Set;

    .line 1727
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-nez p2, :cond_a

    goto :goto_4

    :cond_a
    if-eqz p1, :cond_b

    .line 1730
    invoke-interface {p3}, Lcom/facebook/f;->k()V

    goto :goto_5

    :cond_b
    if-eqz v9, :cond_d

    .line 1732
    invoke-virtual {p0, v1}, Lcom/facebook/login/g;->a(Z)V

    .line 1733
    invoke-interface {p3}, Lcom/facebook/f;->l()V

    goto :goto_5

    .line 1728
    :cond_c
    :goto_4
    invoke-interface {p3}, Lcom/facebook/f;->c()V

    :cond_d
    :goto_5
    return v1
.end method
