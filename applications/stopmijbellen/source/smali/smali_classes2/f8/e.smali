.class public final synthetic Lf8/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ls6/k;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls6/k;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf8/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lf8/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lf8/e;->c:Ljava/lang/String;

    iput-object p4, p0, Lf8/e;->d:Ljava/lang/String;

    iput-object p5, p0, Lf8/e;->e:Ls6/k;

    iput-object p6, p0, Lf8/e;->f:Ljava/lang/String;

    iput-object p7, p0, Lf8/e;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lf8/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lf8/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lf8/e;->c:Ljava/lang/String;

    iget-object v3, p0, Lf8/e;->d:Ljava/lang/String;

    iget-object v4, p0, Lf8/e;->e:Ls6/k;

    iget-object v5, p0, Lf8/e;->f:Ljava/lang/String;

    iget-object v6, p0, Lf8/e;->g:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Lw7/e;->b(Landroid/content/Context;)Lz7/c;

    move-result-object v7

    const-string v8, "get.php"

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/a;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    check-cast v7, Lw7/p;

    invoke-virtual {v7, v1}, Lw7/p;->j(Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "android_id"

    invoke-static {v1, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "deviceid"

    .line 4
    invoke-virtual {v7, v8, v1}, Lw7/p;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    const-string v1, "data"

    .line 5
    invoke-virtual {v7, v1, v2}, Lw7/p;->f(Ljava/lang/String;Ljava/lang/String;)Lz7/a;

    .line 6
    invoke-virtual {v4}, Ls6/i;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-static {v3, v2, v1}, Lg8/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ls6/k;

    move-result-object v1

    invoke-virtual {v7, v1}, Lw7/p;->b(Ls6/k;)Ljava/lang/Object;

    .line 7
    invoke-interface {v7}, Lz7/b;->d()Lc8/a;

    move-result-object v1

    new-instance v2, Lx2/a;

    invoke-direct {v2, v5, v6, v0}, Lx2/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    check-cast v1, Lm7/g;

    invoke-virtual {v1, v2}, Lm7/g;->k(Lm7/d;)V

    return-void
.end method
