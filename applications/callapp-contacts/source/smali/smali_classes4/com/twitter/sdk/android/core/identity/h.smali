.class public final Lcom/twitter/sdk/android/core/identity/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/identity/h$b;,
        Lcom/twitter/sdk/android/core/identity/h$a;
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/sdk/android/core/r;

.field public final b:Lcom/twitter/sdk/android/core/identity/b;

.field final c:Lcom/twitter/sdk/android/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/m<",
            "Lcom/twitter/sdk/android/core/t;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 61
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object v0

    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object v1

    .line 1099
    iget-object v1, v1, Lcom/twitter/sdk/android/core/r;->e:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 62
    invoke-static {}, Lcom/twitter/sdk/android/core/r;->a()Lcom/twitter/sdk/android/core/r;

    move-result-object v2

    .line 1127
    iget-object v2, v2, Lcom/twitter/sdk/android/core/r;->b:Lcom/twitter/sdk/android/core/m;

    .line 62
    invoke-static {}, Lcom/twitter/sdk/android/core/identity/h$a;->a()Lcom/twitter/sdk/android/core/identity/b;

    move-result-object v3

    .line 61
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/identity/h;-><init>(Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/m;Lcom/twitter/sdk/android/core/identity/b;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/m;Lcom/twitter/sdk/android/core/identity/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/r;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Lcom/twitter/sdk/android/core/m<",
            "Lcom/twitter/sdk/android/core/t;",
            ">;",
            "Lcom/twitter/sdk/android/core/identity/b;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/h;->a:Lcom/twitter/sdk/android/core/r;

    .line 68
    iput-object p4, p0, Lcom/twitter/sdk/android/core/identity/h;->b:Lcom/twitter/sdk/android/core/identity/b;

    .line 69
    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/h;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 70
    iput-object p3, p0, Lcom/twitter/sdk/android/core/identity/h;->c:Lcom/twitter/sdk/android/core/m;

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/h$b;)Z
    .locals 4

    .line 112
    invoke-static {p1}, Lcom/twitter/sdk/android/core/identity/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/f;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Using SSO"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/h;->b:Lcom/twitter/sdk/android/core/identity/b;

    new-instance v1, Lcom/twitter/sdk/android/core/identity/g;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/h;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 115
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->getRequestCode()I

    move-result v3

    invoke-direct {v1, v2, p2, v3}, Lcom/twitter/sdk/android/core/identity/g;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/b;I)V

    .line 114
    invoke-virtual {v0, p1, v1}, Lcom/twitter/sdk/android/core/identity/b;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/a;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroid/app/Activity;Lcom/twitter/sdk/android/core/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/t;",
            ">;)V"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/twitter/sdk/android/core/identity/h$b;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/h;->c:Lcom/twitter/sdk/android/core/m;

    invoke-direct {v0, v1, p2}, Lcom/twitter/sdk/android/core/identity/h$b;-><init>(Lcom/twitter/sdk/android/core/m;Lcom/twitter/sdk/android/core/b;)V

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/identity/h;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/h$b;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/core/identity/h;->b(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/h$b;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 100
    new-instance p1, Lcom/twitter/sdk/android/core/TwitterAuthException;

    const-string p2, "Authorize failed."

    invoke-direct {p1, p2}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/identity/h$b;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/h$b;)Z
    .locals 4

    .line 122
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/f;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Using OAuth"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/h;->b:Lcom/twitter/sdk/android/core/identity/b;

    new-instance v1, Lcom/twitter/sdk/android/core/identity/d;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/h;->d:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 124
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->getRequestCode()I

    move-result v3

    invoke-direct {v1, v2, p2, v3}, Lcom/twitter/sdk/android/core/identity/d;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/b;I)V

    .line 123
    invoke-virtual {v0, p1, v1}, Lcom/twitter/sdk/android/core/identity/b;->a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/identity/a;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/sdk/android/core/b<",
            "Lcom/twitter/sdk/android/core/t;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 88
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lcom/twitter/sdk/android/core/n;->c()Lcom/twitter/sdk/android/core/f;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "Twitter"

    const-string v1, "Cannot authorize, activity is finishing."

    .line 90
    invoke-interface {p1, v0, v1, p2}, Lcom/twitter/sdk/android/core/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 92
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/twitter/sdk/android/core/identity/h;->b(Landroid/app/Activity;Lcom/twitter/sdk/android/core/b;)V

    return-void

    .line 85
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Activity must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
