.class public final Lb70;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La70;


# instance fields
.field public final a:Lz00;

.field public final b:Ls00;


# direct methods
.method public constructor <init>(Lz00;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb70;->a:Lz00;

    new-instance v0, Lb70$a;

    invoke-direct {v0, p0, p1}, Lb70$a;-><init>(Lb70;Lz00;)V

    iput-object v0, p0, Lb70;->b:Ls00;

    return-void
.end method


# virtual methods
.method public a(Lz60;)V
    .locals 1

    iget-object v0, p0, Lb70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->b()V

    iget-object v0, p0, Lb70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->c()V

    :try_start_0
    iget-object v0, p0, Lb70;->b:Ls00;

    invoke-virtual {v0, p1}, Ls00;->h(Ljava/lang/Object;)V

    iget-object p1, p0, Lb70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lb70;->a:Lz00;

    invoke-virtual {p1}, Lz00;->g()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lb70;->a:Lz00;

    invoke-virtual {v0}, Lz00;->g()V

    throw p1
.end method
