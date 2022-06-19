.class public final synthetic Ln7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln7/d;

.field public final synthetic b:Ln7/h;

.field public final synthetic c:I

.field public final synthetic d:Ln7/a$d;

.field public final synthetic e:Lq7/a;


# direct methods
.method public synthetic constructor <init>(Ln7/d;Ln7/h;ILn7/a$d;Lq7/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln7/b;->a:Ln7/d;

    iput-object p2, p0, Ln7/b;->b:Ln7/h;

    iput p3, p0, Ln7/b;->c:I

    iput-object p4, p0, Ln7/b;->d:Ln7/a$d;

    iput-object p5, p0, Ln7/b;->e:Lq7/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ln7/b;->a:Ln7/d;

    iget-object v1, p0, Ln7/b;->b:Ln7/h;

    iget v2, p0, Ln7/b;->c:I

    iget-object v3, p0, Ln7/b;->d:Ln7/a$d;

    iget-object v4, p0, Ln7/b;->e:Lq7/a;

    .line 1
    iget-object v0, v0, Ln7/d;->v:Ln7/a;

    .line 2
    invoke-virtual {v0, v1, v2, v3, v4}, Ln7/a;->c(Ln7/h;ILn7/a$d;Lq7/a;)V

    return-void
.end method
