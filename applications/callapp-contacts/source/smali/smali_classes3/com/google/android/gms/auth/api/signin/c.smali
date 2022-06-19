.class public final Lcom/google/android/gms/auth/api/signin/c;
.super Lcom/google/android/gms/common/api/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/signin/c$b;,
        Lcom/google/android/gms/auth/api/signin/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/f<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final h:Lcom/google/android/gms/auth/api/signin/c$b;

.field private static i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/google/android/gms/auth/api/signin/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/c$b;-><init>(Lcom/google/android/gms/auth/api/signin/j;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/c;->h:Lcom/google/android/gms/auth/api/signin/c$b;

    .line 42
    sget v0, Lcom/google/android/gms/auth/api/signin/c$a;->a:I

    sput v0, Lcom/google/android/gms/auth/api/signin/c;->i:I

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    .line 3
    sget-object v0, Lcom/google/android/gms/auth/api/a;->e:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/a;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/f;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/internal/q;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/auth/api/a;->e:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/a;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/internal/q;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 4

    monitor-enter p0

    .line 5
    :try_start_0
    sget v0, Lcom/google/android/gms/auth/api/signin/c;->i:I

    sget v1, Lcom/google/android/gms/auth/api/signin/c$a;->a:I

    if-ne v0, v1, :cond_2

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->a:Landroid/content/Context;

    .line 7
    invoke-static {}, Lcom/google/android/gms/common/b;->a()Lcom/google/android/gms/common/b;

    move-result-object v1

    const v2, 0xbdfcb8

    .line 9
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/b;->b(Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 11
    sget v0, Lcom/google/android/gms/auth/api/signin/c$a;->d:I

    sput v0, Lcom/google/android/gms/auth/api/signin/c;->i:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.gms.auth.api.fallback"

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    sget v0, Lcom/google/android/gms/auth/api/signin/c$a;->c:I

    sput v0, Lcom/google/android/gms/auth/api/signin/c;->i:I

    goto :goto_0

    .line 15
    :cond_1
    sget v0, Lcom/google/android/gms/auth/api/signin/c$a;->b:I

    sput v0, Lcom/google/android/gms/auth/api/signin/c;->i:I

    .line 16
    :cond_2
    :goto_0
    sget v0, Lcom/google/android/gms/auth/api/signin/c;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Landroid/content/Intent;
    .locals 4

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->a:Landroid/content/Context;

    .line 18
    sget-object v1, Lcom/google/android/gms/auth/api/signin/j;->a:[I

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/c;->a()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    if-eq v1, v3, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 5000
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->b:Lcom/google/android/gms/common/api/a$d;

    .line 21
    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/j;->c(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 4000
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->b:Lcom/google/android/gms/common/api/a$d;

    .line 20
    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/j;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 3000
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->b:Lcom/google/android/gms/common/api/a$d;

    .line 19
    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/j;->b(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/tasks/h;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;"
        }
    .end annotation

    .line 6000
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->f:Lcom/google/android/gms/common/api/g;

    .line 7000
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->a:Landroid/content/Context;

    .line 8000
    iget-object v2, p0, Lcom/google/android/gms/common/api/f;->b:Lcom/google/android/gms/common/api/a$d;

    .line 25
    check-cast v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/c;->a()I

    move-result v3

    sget v4, Lcom/google/android/gms/auth/api/signin/c$a;->c:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 27
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/auth/api/signin/internal/j;->a(Lcom/google/android/gms/common/api/g;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Z)Lcom/google/android/gms/common/api/i;

    move-result-object v0

    .line 28
    sget-object v1, Lcom/google/android/gms/auth/api/signin/c;->h:Lcom/google/android/gms/auth/api/signin/c$b;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/api/j;Lcom/google/android/gms/common/internal/n$a;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/tasks/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 9000
    iget-object v0, p0, Lcom/google/android/gms/common/api/f;->f:Lcom/google/android/gms/common/api/g;

    .line 10000
    iget-object v1, p0, Lcom/google/android/gms/common/api/f;->a:Landroid/content/Context;

    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/c;->a()I

    move-result v2

    sget v3, Lcom/google/android/gms/auth/api/signin/c$a;->c:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 33
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/internal/j;->a(Lcom/google/android/gms/common/api/g;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    return-object v0
.end method
