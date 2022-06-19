.class public Lcom/facebook/appevents/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/b/a$b;,
        Lcom/facebook/appevents/b/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "com.facebook.appevents.b.a"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Landroid/view/View;)Lcom/facebook/appevents/b/a$a;
    .locals 3

    const-class v0, Lcom/facebook/appevents/b/a;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 46
    :cond_0
    :try_start_0
    new-instance v1, Lcom/facebook/appevents/b/a$a;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/facebook/appevents/b/a$a;-><init>(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Landroid/view/View;Lcom/facebook/appevents/b/a$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static a(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Landroid/widget/AdapterView;)Lcom/facebook/appevents/b/a$b;
    .locals 3

    const-class v0, Lcom/facebook/appevents/b/a;

    invoke-static {v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 51
    :cond_0
    :try_start_0
    new-instance v1, Lcom/facebook/appevents/b/a$b;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/facebook/appevents/b/a$b;-><init>(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Landroid/widget/AdapterView;Lcom/facebook/appevents/b/a$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    invoke-static {p0, v0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method static synthetic b(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const-string v0, "_valueToSum"

    const-class v1, Lcom/facebook/appevents/b/a;

    invoke-static {v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 41
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_3

    .line 1123
    :try_start_1
    iget-object v2, p0, Lcom/facebook/appevents/b/a/a;->a:Ljava/lang/String;

    .line 1057
    invoke-static {p0, p1, p2}, Lcom/facebook/appevents/b/c;->a(Lcom/facebook/appevents/b/a/a;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object p0

    .line 1059
    invoke-static {v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_2

    .line 2074
    :try_start_2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2077
    invoke-static {p1}, Lcom/facebook/appevents/f/b;->a(Ljava/lang/String;)D

    move-result-wide p1

    .line 2076
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_1
    const-string p1, "_is_fb_codeless"

    const-string p2, "1"

    .line 2079
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2080
    :try_start_3
    invoke-static {p1, v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 1061
    :cond_2
    :goto_0
    invoke-static {}, Lcom/facebook/g;->f()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/facebook/appevents/b/a$1;

    invoke-direct {p2, v2, p0}, Lcom/facebook/appevents/b/a$1;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1062
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    .line 1071
    :try_start_4
    invoke-static {p0, v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_3
    return-void

    :catchall_2
    move-exception p0

    .line 41
    invoke-static {p0, v1}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
