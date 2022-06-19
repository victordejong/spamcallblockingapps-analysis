.class public Lcom/facebook/internal/o;
.super Ljava/lang/Object;
.source "InstallReferrerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/o$a;
    }
.end annotation


# direct methods
.method static synthetic a()V
    .locals 0

    .prologue
    .line 14
    invoke-static {}, Lcom/facebook/internal/o;->b()V

    return-void
.end method

.method public static a(Lcom/facebook/internal/o$a;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/facebook/internal/o;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    invoke-static {p0}, Lcom/facebook/internal/o;->b(Lcom/facebook/internal/o$a;)V

    .line 24
    :cond_0
    return-void
.end method

.method private static b()V
    .locals 3

    .prologue
    .line 62
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.facebook.sdk.appEventPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "is_referrer_updated"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    return-void
.end method

.method private static b(Lcom/facebook/internal/o$a;)V
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/a/a/a;->a(Landroid/content/Context;)Lcom/android/a/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/a/a/a$a;->a()Lcom/android/a/a/a;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/facebook/internal/o$1;

    invoke-direct {v1, v0, p0}, Lcom/facebook/internal/o$1;-><init>(Lcom/android/a/a/a;Lcom/facebook/internal/o$a;)V

    invoke-virtual {v0, v1}, Lcom/android/a/a/a;->a(Lcom/android/a/a/c;)V

    .line 59
    return-void
.end method

.method private static c()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.facebook.sdk.appEventPreferences"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    const-string/jumbo v1, "is_referrer_updated"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
