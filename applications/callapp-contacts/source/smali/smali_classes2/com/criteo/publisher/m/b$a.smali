.class public final Lcom/criteo/publisher/m/b$a;
.super Lcom/criteo/publisher/m/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/m/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/m/b;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/m/b;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/criteo/publisher/m/b$a;->a:Lcom/criteo/publisher/m/b;

    invoke-direct {p0}, Lcom/criteo/publisher/m/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/criteo/publisher/m/b$a;->a:Lcom/criteo/publisher/m/b;

    invoke-static {v0}, Lcom/criteo/publisher/m/b;->a(Lcom/criteo/publisher/m/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/criteo/publisher/m/b$a;->a:Lcom/criteo/publisher/m/b;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/criteo/publisher/m/b;->a(Lcom/criteo/publisher/m/b;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/criteo/publisher/m/b$a;->a:Lcom/criteo/publisher/m/b;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/criteo/publisher/m/b;->a(Lcom/criteo/publisher/m/b;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    return-void
.end method
