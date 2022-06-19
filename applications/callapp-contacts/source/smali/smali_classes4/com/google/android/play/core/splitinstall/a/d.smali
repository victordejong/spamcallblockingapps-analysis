.class final synthetic Lcom/google/android/play/core/splitinstall/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/play/core/splitinstall/a/a;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/a/a;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/a/d;->a:Lcom/google/android/play/core/splitinstall/a/a;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/a/d;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/a/d;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/a/d;->a:Lcom/google/android/play/core/splitinstall/a/a;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/a/d;->b:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/play/core/splitinstall/a/d;->c:Ljava/util/List;

    .line 1000
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-static {v2}, Lcom/google/android/play/core/internal/x;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/google/android/play/core/splitinstall/a/a;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x1

    invoke-virtual {v8, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v3}, Lcom/google/android/play/core/splitinstall/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "module_name"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "split_id"

    invoke-virtual {v8, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/google/android/play/core/internal/x;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/play/core/splitinstall/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/a/a;->b()Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/c;->e()J

    move-result-wide v2

    iget-object v7, v1, Lcom/google/android/play/core/splitinstall/a/a;->e:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/google/android/play/core/splitinstall/a/h;

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/core/splitinstall/a/h;-><init>(Lcom/google/android/play/core/splitinstall/a/a;JLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
