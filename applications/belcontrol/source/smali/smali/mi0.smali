.class public abstract Lmi0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmi0$b;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "mi0"


# instance fields
.field public final a:Landroid/content/BroadcastReceiver;

.field public final b:Lnf;

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmi0;->c:Z

    invoke-static {}, Lgn0;->n()V

    new-instance v0, Lmi0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmi0$b;-><init>(Lmi0;Lmi0$a;)V

    iput-object v0, p0, Lmi0;->a:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lui0;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnf;->b(Landroid/content/Context;)Lnf;

    move-result-object v0

    iput-object v0, p0, Lmi0;->b:Lnf;

    invoke-virtual {p0}, Lmi0;->e()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lmi0;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lmi0;->b:Lnf;

    iget-object v2, p0, Lmi0;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lnf;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lmi0;->c:Z

    return v0
.end method

.method public abstract d(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
.end method

.method public e()V
    .locals 1

    iget-boolean v0, p0, Lmi0;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lmi0;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmi0;->c:Z

    return-void
.end method

.method public f()V
    .locals 2

    iget-boolean v0, p0, Lmi0;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmi0;->b:Lnf;

    iget-object v1, p0, Lmi0;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lnf;->e(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmi0;->c:Z

    return-void
.end method
