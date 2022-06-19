.class public final Lcom/google/android/gms/auth/api/signin/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    .prologue
    .line 11
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/internal/o;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/o;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/c;
    .locals 2

    .prologue
    .line 3
    new-instance v1, Lcom/google/android/gms/auth/api/signin/c;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/auth/api/signin/c;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/c;
    .locals 2

    .prologue
    .line 2
    new-instance v1, Lcom/google/android/gms/auth/api/signin/c;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/auth/api/signin/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-object v1
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/g",
            "<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/internal/i;->a(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/d;

    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->a(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    .line 10
    :goto_0
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/d;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/d;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/d;->b()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/j;->a(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/tasks/j;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    goto :goto_0
.end method
