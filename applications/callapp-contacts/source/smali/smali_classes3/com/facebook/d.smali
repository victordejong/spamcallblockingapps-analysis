.class public abstract Lcom/facebook/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "d"


# instance fields
.field private final b:Landroid/content/BroadcastReceiver;

.field private final c:Landroidx/i/a/a;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/facebook/d;->d:Z

    .line 55
    invoke-static {}, Lcom/facebook/internal/af;->a()V

    .line 57
    new-instance v0, Lcom/facebook/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/d$a;-><init>(Lcom/facebook/d;Lcom/facebook/d$1;)V

    iput-object v0, p0, Lcom/facebook/d;->b:Landroid/content/BroadcastReceiver;

    .line 58
    invoke-static {}, Lcom/facebook/g;->i()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/i/a/a;->a(Landroid/content/Context;)Landroidx/i/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/d;->c:Landroidx/i/a/a;

    .line 1065
    iget-boolean v2, p0, Lcom/facebook/d;->d:Z

    if-nez v2, :cond_0

    .line 1110
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    .line 1111
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v1, v0, v2}, Landroidx/i/a/a;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x1

    .line 1071
    iput-boolean v0, p0, Lcom/facebook/d;->d:Z

    :cond_0
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/facebook/d;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Lcom/facebook/AccessToken;)V
.end method
