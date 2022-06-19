.class public final synthetic Lnp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lqp$a;

.field public final b:Lqp;

.field public final c:Lqp$b;

.field public final d:Lqp$c;

.field public final f:Ljava/io/IOException;

.field public final g:Z


# direct methods
.method public constructor <init>(Lqp$a;Lqp;Lqp$b;Lqp$c;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnp;->a:Lqp$a;

    iput-object p2, p0, Lnp;->b:Lqp;

    iput-object p3, p0, Lnp;->c:Lqp$b;

    iput-object p4, p0, Lnp;->d:Lqp$c;

    iput-object p5, p0, Lnp;->f:Ljava/io/IOException;

    iput-boolean p6, p0, Lnp;->g:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lnp;->a:Lqp$a;

    iget-object v1, p0, Lnp;->b:Lqp;

    iget-object v2, p0, Lnp;->c:Lqp$b;

    iget-object v3, p0, Lnp;->d:Lqp$c;

    iget-object v4, p0, Lnp;->f:Ljava/io/IOException;

    iget-boolean v5, p0, Lnp;->g:Z

    invoke-virtual/range {v0 .. v5}, Lqp$a;->h(Lqp;Lqp$b;Lqp$c;Ljava/io/IOException;Z)V

    return-void
.end method
