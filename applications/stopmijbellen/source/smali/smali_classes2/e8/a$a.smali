.class public Le8/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le8/a;->c(Lw7/e;Ln7/h;Lm7/d;)Lm7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw7/e;

.field public final synthetic b:Ln7/h;

.field public final synthetic c:Le8/g;

.field public final synthetic d:Lm7/d;

.field public final synthetic e:Le8/a;


# direct methods
.method public constructor <init>(Le8/a;Lw7/e;Ln7/h;Le8/g;Lm7/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le8/a$a;->e:Le8/a;

    iput-object p2, p0, Le8/a$a;->a:Lw7/e;

    iput-object p3, p0, Le8/a$a;->b:Ln7/h;

    iput-object p4, p0, Le8/a$a;->c:Le8/g;

    iput-object p5, p0, Le8/a$a;->d:Lm7/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le8/a$a;->e:Le8/a;

    iget-object v2, p0, Le8/a$a;->a:Lw7/e;

    .line 2
    iget-object v2, v2, Lw7/e;->g:Landroid/content/Context;

    .line 3
    iget-object v3, p0, Le8/a$a;->b:Ln7/h;

    .line 4
    iget-object v3, v3, Ln7/h;->c:Landroid/net/Uri;

    .line 5
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^/android_asset/"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 8
    new-instance v4, Lt7/c;

    iget-object v3, p0, Le8/a$a;->a:Lw7/e;

    .line 9
    iget-object v3, v3, Lw7/e;->a:Ln7/a;

    .line 10
    iget-object v3, v3, Ln7/a;->d:Lk7/h;

    .line 11
    invoke-direct {v4, v3, v1}, Lt7/c;-><init>(Lk7/h;Ljava/io/InputStream;)V

    .line 12
    iget-object v1, p0, Le8/a$a;->c:Le8/g;

    .line 13
    invoke-virtual {v1, v0, v4, v0}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    .line 14
    iget-object v1, p0, Le8/a$a;->d:Lm7/d;

    new-instance v10, Lw7/q$a;

    int-to-long v5, v2

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lw7/q$a;-><init>(Lk7/m;JILo7/b;Ln7/h;)V

    invoke-interface {v1, v0, v10}, Lm7/d;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Unable to load content stream"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 16
    iget-object v2, p0, Le8/a$a;->c:Le8/g;

    .line 17
    invoke-virtual {v2, v1, v0, v0}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    .line 18
    iget-object v2, p0, Le8/a$a;->d:Lm7/d;

    invoke-interface {v2, v1, v0}, Lm7/d;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
