.class Lcom/facebook/e$a;
.super Landroid/content/BroadcastReceiver;
.source "AccessTokenTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/e;


# direct methods
.method private constructor <init>(Lcom/facebook/e;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/facebook/e$a;->a:Lcom/facebook/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/e;Lcom/facebook/e$1;)V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/facebook/e$a;-><init>(Lcom/facebook/e;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 102
    const-string/jumbo v0, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/facebook/e;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AccessTokenChanged"

    invoke-static {v0, v1}, Lcom/facebook/internal/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string/jumbo v0, "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

    .line 106
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/a;

    .line 107
    const-string/jumbo v1, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    .line 108
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/a;

    .line 110
    iget-object v2, p0, Lcom/facebook/e$a;->a:Lcom/facebook/e;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/e;->a(Lcom/facebook/a;Lcom/facebook/a;)V

    .line 112
    :cond_0
    return-void
.end method
