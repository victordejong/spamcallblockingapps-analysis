.class public Lcom/facebook/a/b/a;
.super Ljava/lang/Object;
.source "CodelessLoggingEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/a/b/a$b;,
        Lcom/facebook/a/b/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/facebook/a/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/view/View;)Lcom/facebook/a/b/a$a;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/facebook/a/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/facebook/a/b/a$a;-><init>(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/view/View;Lcom/facebook/a/b/a$1;)V

    return-object v0
.end method

.method public static a(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/widget/AdapterView;)Lcom/facebook/a/b/a$b;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/a/b/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/facebook/a/b/a$b;-><init>(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/widget/AdapterView;Lcom/facebook/a/b/a$1;)V

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lcom/facebook/a/b/a;->c(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private static c(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/facebook/a/b/a/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {p0, p1, p2}, Lcom/facebook/a/b/c;->a(Lcom/facebook/a/b/a/a;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    .line 63
    const-string/jumbo v2, "_valueToSum"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const-string/jumbo v2, "_valueToSum"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    const-string/jumbo v3, "_valueToSum"

    .line 67
    invoke-static {v2}, Lcom/facebook/a/d/b;->a(Ljava/lang/String;)D

    move-result-wide v4

    .line 65
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 70
    :cond_0
    const-string/jumbo v2, "_is_fb_codeless"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/facebook/j;->f()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/facebook/a/b/a$1;

    invoke-direct {v3, v0, v1}, Lcom/facebook/a/b/a$1;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method
