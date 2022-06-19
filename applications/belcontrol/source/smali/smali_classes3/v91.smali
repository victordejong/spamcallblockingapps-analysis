.class public abstract Lv91;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv91$b;,
        Lv91$a;
    }
.end annotation


# static fields
.field public static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lv91$a;",
            "Lv91;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:[Ljava/lang/String;

.field public b:Landroid/app/Activity;

.field public c:Lv91$b;

.field public d:Lv91$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lv91;->e:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lv91;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lv91;->b:Landroid/app/Activity;

    iput-object v0, p0, Lv91;->c:Lv91$b;

    iput-object v0, p0, Lv91;->d:Lv91$a;

    return-void
.end method

.method public static c(Lv91$a;Lv91$b;)Lv91;
    .locals 3

    sget-object v0, Lv91;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv91;

    invoke-static {}, Lcom/kedlin/cca/receivers/ScreenLockReceiver;->a()Landroid/app/Activity;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v2, v0, Lv91;->b:Landroid/app/Activity;

    if-eq v2, v1, :cond_1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lv91$a;->a(Lv91$a;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv91;

    iput-object p0, v0, Lv91;->d:Lv91$a;

    iput-object v1, v0, Lv91;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Lv91;->i()V

    sget-object v1, Lv91;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v0, p1}, Lv91;->j(Lv91$b;)V

    return-object v0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(IILandroid/content/Intent;)V
    .locals 3

    sget-object v0, Lv91;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv91$a;

    sget-object v2, Lv91;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv91;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0, p1, p2}, Lv91;->h(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static k()V
    .locals 1

    sget-object v0, Lv91;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static n()V
    .locals 3

    sget-object v0, Lv91;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv91$a;

    sget-object v2, Lv91;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv91;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lv91;->m()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public e()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lv91;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public f()Lv91$a;
    .locals 1

    iget-object v0, p0, Lv91;->d:Lv91$a;

    return-object v0
.end method

.method public h(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j(Lv91$b;)V
    .locals 0

    iput-object p1, p0, Lv91;->c:Lv91$b;

    return-void
.end method

.method public abstract l()V
.end method

.method public abstract m()V
.end method
