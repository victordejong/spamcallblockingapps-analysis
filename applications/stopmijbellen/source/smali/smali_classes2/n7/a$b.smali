.class public Ln7/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln7/a;->d(Ln7/h;ILn7/a$d;Lq7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln7/g$g;

.field public final synthetic b:Ln7/a$d;

.field public final synthetic c:Ln7/h;

.field public final synthetic d:Lq7/a;

.field public final synthetic e:Ln7/a;


# direct methods
.method public constructor <init>(Ln7/a;Ln7/g$g;Ln7/a$d;Ln7/h;Lq7/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln7/a$b;->e:Ln7/a;

    iput-object p2, p0, Ln7/a$b;->a:Ln7/g$g;

    iput-object p3, p0, Ln7/a$b;->b:Ln7/a$d;

    iput-object p4, p0, Ln7/a$b;->c:Ln7/h;

    iput-object p5, p0, Ln7/a$b;->d:Lq7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Ln7/a$b;->a:Ln7/g$g;

    iget-object v0, v0, Ln7/g$a;->d:Lm7/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lm7/a;->cancel()Z

    .line 3
    iget-object v0, p0, Ln7/a$b;->a:Ln7/g$g;

    iget-object v0, v0, Ln7/g$c;->e:Lk7/j;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lk7/m;->close()V

    .line 5
    :cond_0
    iget-object v1, p0, Ln7/a$b;->e:Ln7/a;

    iget-object v2, p0, Ln7/a$b;->b:Ln7/a$d;

    new-instance v3, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v3}, Ljava/util/concurrent/TimeoutException;-><init>()V

    const/4 v4, 0x0

    iget-object v5, p0, Ln7/a$b;->c:Ln7/h;

    iget-object v6, p0, Ln7/a$b;->d:Lq7/a;

    .line 6
    invoke-virtual/range {v1 .. v6}, Ln7/a;->e(Ln7/a$d;Ljava/lang/Exception;Ln7/j;Ln7/h;Lq7/a;)V

    return-void
.end method
