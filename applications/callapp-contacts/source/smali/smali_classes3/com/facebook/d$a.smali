.class final Lcom/facebook/d$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/d;


# direct methods
.method private constructor <init>(Lcom/facebook/d;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/facebook/d$a;->a:Lcom/facebook/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/d;Lcom/facebook/d$1;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/facebook/d$a;-><init>(Lcom/facebook/d;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    invoke-static {}, Lcom/facebook/d;->a()Ljava/lang/String;

    invoke-static {}, Lcom/facebook/internal/ae;->a()V

    const-string p1, "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

    .line 100
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    const-string p1, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    .line 102
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/facebook/AccessToken;

    .line 104
    iget-object p2, p0, Lcom/facebook/d$a;->a:Lcom/facebook/d;

    invoke-virtual {p2, p1}, Lcom/facebook/d;->a(Lcom/facebook/AccessToken;)V

    :cond_0
    return-void
.end method
