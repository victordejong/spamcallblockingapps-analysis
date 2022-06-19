.class public final synthetic Lkp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lqp$a;

.field public final b:Lqp;

.field public final c:Lqp$b;

.field public final d:Lqp$c;


# direct methods
.method public constructor <init>(Lqp$a;Lqp;Lqp$b;Lqp$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkp;->a:Lqp$a;

    iput-object p2, p0, Lkp;->b:Lqp;

    iput-object p3, p0, Lkp;->c:Lqp$b;

    iput-object p4, p0, Lkp;->d:Lqp$c;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lkp;->a:Lqp$a;

    iget-object v1, p0, Lkp;->b:Lqp;

    iget-object v2, p0, Lkp;->c:Lqp$b;

    iget-object v3, p0, Lkp;->d:Lqp$c;

    invoke-virtual {v0, v1, v2, v3}, Lqp$a;->i(Lqp;Lqp$b;Lqp$c;)V

    return-void
.end method
