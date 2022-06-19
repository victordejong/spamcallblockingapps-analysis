.class public Lse1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lre1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse1$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public final d:Lmf1;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmf1;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ltf1;->a(Ljava/lang/Object;)V

    invoke-interface {p2}, Lmf1;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Listening to Activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoatActivityState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lse1;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lse1;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lse1;->d:Lmf1;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lse1;->c:Z

    return-void
.end method

.method public static synthetic d(Lse1;)Lmf1;
    .locals 0

    iget-object p0, p0, Lse1;->d:Lmf1;

    return-object p0
.end method

.method public static synthetic e(Lse1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lse1;->e:Z

    return p1
.end method

.method public static synthetic f(Lse1;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lse1;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic g(Lse1;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lse1;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lse1;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Lse1$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lse1$b;-><init>(Lse1;Lse1$a;)V

    iget-object v1, p0, Lse1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lse1;->e:Z

    return v0
.end method

.method public c()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lse1;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method
