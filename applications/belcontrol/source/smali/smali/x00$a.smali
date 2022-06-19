.class public Lx00$a;
.super Lt00$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx00;


# direct methods
.method public constructor <init>(Lx00;)V
    .locals 0

    iput-object p1, p0, Lx00$a;->a:Lx00;

    invoke-direct {p0}, Lt00$a;-><init>()V

    return-void
.end method


# virtual methods
.method public e([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lx00$a;->a:Lx00;

    iget-object v0, v0, Lx00;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lx00$a$a;

    invoke-direct {v1, p0, p1}, Lx00$a$a;-><init>(Lx00$a;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
