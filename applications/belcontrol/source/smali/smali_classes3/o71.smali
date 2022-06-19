.class public Lo71;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Lm91$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo71$b;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String;

.field public static d:Lo71;

.field public static f:Ljava/util/concurrent/ScheduledExecutorService;

.field public static g:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo71$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lo71;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo71;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lo71;->d:Lo71;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo71;->a:Ljava/util/HashMap;

    invoke-static {}, Lu71;->n()Z

    move-result v0

    iput-boolean v0, p0, Lo71;->b:Z

    return-void
.end method

.method public static synthetic a(Lo71;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lo71;->c(Z)V

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lo71;->k()V

    return-void
.end method

.method public static d()V
    .locals 1

    invoke-static {}, Lo71;->f()Lo71;

    move-result-object v0

    iget-object v0, v0, Lo71;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lo71;->d:Lo71;

    invoke-virtual {v0}, Lo71;->l()V

    return-void
.end method

.method public static e(Li91;)Ln91$b;
    .locals 4

    invoke-static {}, Lu71;->n()Z

    move-result v0

    invoke-static {}, Lo71;->f()Lo71;

    move-result-object v1

    iget-boolean v1, v1, Lo71;->b:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    sget-object p0, Lo71;->d:Lo71;

    iget-boolean v0, p0, Lo71;->b:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lo71;->b:Z

    iget-object p0, p0, Lo71;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    sget-object p0, Lo71;->d:Lo71;

    invoke-virtual {p0}, Lo71;->l()V

    return-object v2

    :cond_0
    if-nez p0, :cond_1

    return-object v2

    :cond_1
    invoke-static {}, Lo71;->f()Lo71;

    move-result-object v0

    iget-object v0, v0, Lo71;->a:Ljava/util/HashMap;

    sget-object v1, Li91$b;->b:Li91$b;

    invoke-virtual {p0, v1}, Li91;->g(Li91$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo71$b;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No cached data for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Li91;->g(Li91$b;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v2

    :cond_2
    invoke-virtual {v0}, Lo71$b;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cached data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Li91;->g(Li91$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " exists but expired. Cache HIT anyway but not anymore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v2, Lo71;->d:Lo71;

    iget-object v2, v2, Lo71;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Li91;->g(Li91$b;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lo71$b;->a:Ln91$b;

    return-object p0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache HIT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Li91;->g(Li91$b;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". Decision: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lo71$b;->a:Ln91$b;

    iget-object p0, p0, Ln91$b;->a:Ln91$a;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " Block:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v0, Lo71$b;->a:Ln91$b;

    iget-boolean p0, p0, Ln91$b;->b:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Lo71$b;->b()V

    new-instance p0, Ln91$b;

    iget-object v0, v0, Lo71$b;->a:Ln91$b;

    invoke-direct {p0, v0}, Ln91$b;-><init>(Ln91$b;)V

    return-object p0
.end method

.method public static f()Lo71;
    .locals 1

    sget-object v0, Lo71;->d:Lo71;

    if-nez v0, :cond_0

    invoke-static {}, Lo71;->g()V

    :cond_0
    sget-object v0, Lo71;->d:Lo71;

    return-object v0
.end method

.method public static g()V
    .locals 3

    :try_start_0
    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v0

    const-string v1, "FilterCache"

    invoke-virtual {v0, v1}, Landroid/app/Application;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo71;

    sput-object v0, Lo71;->d:Lo71;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-instance v0, Lo71;

    invoke-direct {v0}, Lo71;-><init>()V

    sput-object v0, Lo71;->d:Lo71;

    sget-object v0, Lo71;->c:Ljava/lang/String;

    const-string v1, "Instance load failure. Defaults used"

    invoke-static {v0, v1}, Lj91;->G(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lo71;->d:Lo71;

    sget-object v1, Lm91$c;->k:Lm91$c;

    sget-object v2, Lm91$c;->m:Lm91$c;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lm91;->d(Lm91$b;Ljava/util/EnumSet;[Ljava/lang/Class;)V

    return-void
.end method

.method public static h(Li91;Ln91$b;J)V
    .locals 3

    invoke-virtual {p1}, Ln91$b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cache put: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Ln91$b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lo71;->f()Lo71;

    move-result-object v0

    iget-object v0, v0, Lo71;->a:Ljava/util/HashMap;

    sget-object v1, Li91$b;->b:Li91$b;

    invoke-virtual {p0, v1}, Li91;->g(Li91$b;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lo71$b;

    new-instance v2, Ln91$b;

    invoke-direct {v2, p1}, Ln91$b;-><init>(Ln91$b;)V

    invoke-direct {v1, v2, p2, p3}, Lo71$b;-><init>(Ln91$b;J)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lo71;->d:Lo71;

    invoke-virtual {p0}, Lo71;->l()V

    return-void
.end method

.method public static j(Li91;)V
    .locals 2

    invoke-static {}, Lo71;->f()Lo71;

    move-result-object v0

    iget-object v0, v0, Lo71;->a:Ljava/util/HashMap;

    sget-object v1, Li91$b;->b:Li91$b;

    invoke-virtual {p0, v1}, Li91;->g(Li91$b;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static k()V
    .locals 3

    sget-object v0, Lo71;->d:Lo71;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lfa1;->j()Landroid/app/Application;

    move-result-object v0

    const-string v1, "FilterCache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v0, Lo71;->d:Lo71;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lo71;->c:Ljava/lang/String;

    const-string v2, "Unable to save to FilterCache"

    invoke-static {v1, v2, v0}, Lj91;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static m()V
    .locals 2

    invoke-static {}, Lo71;->f()Lo71;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo71;->c(Z)V

    return-void
.end method


# virtual methods
.method public final c(Z)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting cache cleanup. Data updated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lo71;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lo71;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo71$b;

    if-eqz p1, :cond_1

    iget-wide v4, v3, Lo71$b;->b:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    :cond_1
    if-nez p1, :cond_0

    invoke-virtual {v3}, Lo71$b;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing cache for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lo71;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public i(Lm91$c;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm91$c;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received notification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lo71;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lm91$c;->m:Lm91$c;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lo71;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Lu71;->n()Z

    move-result p1

    iput-boolean p1, p0, Lo71;->b:Z

    return-void

    :cond_1
    sget-object v0, Lm91$c;->k:Lm91$c;

    if-eq p1, v0, :cond_2

    return-void

    :cond_2
    const-class p1, Laa1;

    const/4 v0, 0x1

    if-ne p2, p1, :cond_4

    if-eqz p3, :cond_3

    move-object p1, p3

    check-cast p1, Landroid/os/Bundle;

    sget-object v1, Laa1;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_3

    sget-object v1, Laa1;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    :cond_3
    invoke-virtual {p0, v0}, Lo71;->c(Z)V

    :cond_4
    const-class p1, Lx81;

    if-ne p2, p1, :cond_a

    if-eqz p3, :cond_9

    instance-of p1, p3, Lx81;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move-object p1, p3

    check-cast p1, Lx81;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lo71;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lo71;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo71$b;

    invoke-virtual {v4}, Lo71$b;->a()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p1, Lx81;->g:Li91;

    if-eqz v5, :cond_7

    sget-object v6, Li91$b;->b:Li91$b;

    invoke-virtual {v5, v6}, Li91;->g(Li91$b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_7
    iget-object v5, v4, Lo71$b;->a:Ln91$b;

    iget-object v5, v5, Ln91$b;->a:Ln91$a;

    sget-object v6, Ln91$a;->p:Ln91$a;

    if-ne v5, v6, :cond_6

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lo71;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lo71;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_2

    :cond_9
    :goto_1
    invoke-virtual {p0, v0}, Lo71;->c(Z)V

    :cond_a
    :goto_2
    const-class p1, Lq81;

    if-ne p2, p1, :cond_e

    if-nez p3, :cond_b

    invoke-virtual {p0, v0}, Lo71;->c(Z)V

    goto :goto_5

    :cond_b
    check-cast p3, Lq81;

    invoke-virtual {p3}, Lq81;->a0()Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    invoke-static {p1, p2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge p3, p2, :cond_d

    aget-object v2, p1, p3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_4

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping number: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lo71;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lo71;->l()V

    :cond_e
    :goto_5
    return-void
.end method

.method public final l()V
    .locals 5

    sget-object v0, Lo71;->f:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lo71;->f:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    sget-object v0, Lo71;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    sget-object v0, Lo71;->f:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lo71$a;

    invoke-direct {v1, p0}, Lo71$a;-><init>(Lo71;)V

    const-wide/16 v2, 0x1388

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    sput-object v0, Lo71;->g:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
