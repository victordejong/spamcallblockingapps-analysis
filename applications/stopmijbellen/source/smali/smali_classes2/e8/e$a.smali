.class public Le8/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le8/e;->c(Lw7/e;Ln7/h;Lm7/d;)Lm7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln7/h;

.field public final synthetic b:Lw7/e;

.field public final synthetic c:Le8/e$b;

.field public final synthetic d:Lm7/d;


# direct methods
.method public constructor <init>(Le8/e;Ln7/h;Lw7/e;Le8/e$b;Lm7/d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le8/e$a;->a:Ln7/h;

    iput-object p3, p0, Le8/e$a;->b:Lw7/e;

    iput-object p4, p0, Le8/e$a;->c:Le8/e$b;

    iput-object p5, p0, Le8/e$a;->d:Lm7/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Le8/e$a;->a:Ln7/h;

    .line 2
    iget-object v1, v1, Ln7/h;->c:Landroid/net/Uri;

    .line 3
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 4
    new-instance v3, Lk7/q;

    iget-object v1, p0, Le8/e$a;->b:Lw7/e;

    .line 5
    iget-object v1, v1, Lw7/e;->a:Ln7/a;

    .line 6
    iget-object v1, v1, Ln7/a;->d:Lk7/h;

    .line 7
    invoke-direct {v3, v1, v0}, Lk7/q;-><init>(Lk7/h;Ljava/io/File;)V

    .line 8
    iget-object v1, p0, Le8/e$a;->c:Le8/e$b;

    const/4 v9, 0x0

    .line 9
    invoke-virtual {v1, v9, v3, v9}, Lm7/g;->p(Ljava/lang/Exception;Ljava/lang/Object;Lm7/g$b;)Z

    .line 10
    iget-object v1, p0, Le8/e$a;->d:Lm7/d;

    new-instance v10, Lw7/q$a;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v0, v4

    int-to-long v4, v0

    iget-object v8, p0, Le8/e$a;->a:Ln7/h;

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v8}, Lw7/q$a;-><init>(Lk7/m;JILo7/b;Ln7/h;)V

    invoke-interface {v1, v9, v10}, Lm7/d;->a(Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method
