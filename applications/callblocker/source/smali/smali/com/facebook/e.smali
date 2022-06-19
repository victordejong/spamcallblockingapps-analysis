.class public abstract Lcom/facebook/e;
.super Ljava/lang/Object;
.source "AccessTokenTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/BroadcastReceiver;

.field private final c:Landroidx/h/a/a;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/facebook/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/e;->d:Z

    .line 57
    invoke-static {}, Lcom/facebook/internal/y;->a()V

    .line 59
    new-instance v0, Lcom/facebook/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/e$a;-><init>(Lcom/facebook/e;Lcom/facebook/e$1;)V

    iput-object v0, p0, Lcom/facebook/e;->b:Landroid/content/BroadcastReceiver;

    .line 61
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroidx/h/a/a;->a(Landroid/content/Context;)Landroidx/h/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/e;->c:Landroidx/h/a/a;

    .line 63
    invoke-virtual {p0}, Lcom/facebook/e;->a()V

    .line 64
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/facebook/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 117
    const-string/jumbo v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/facebook/e;->c:Landroidx/h/a/a;

    iget-object v2, p0, Lcom/facebook/e;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/h/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 120
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/facebook/e;->d:Z

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/facebook/e;->e()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/e;->d:Z

    goto :goto_0
.end method

.method protected abstract a(Lcom/facebook/a;Lcom/facebook/a;)V
.end method

.method public b()V
    .locals 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/facebook/e;->d:Z

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/facebook/e;->c:Landroidx/h/a/a;

    iget-object v1, p0, Lcom/facebook/e;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/h/a/a;->a(Landroid/content/BroadcastReceiver;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/e;->d:Z

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/facebook/e;->d:Z

    return v0
.end method
