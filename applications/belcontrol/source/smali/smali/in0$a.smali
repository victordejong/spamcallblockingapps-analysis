.class public Lin0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin0;->g(Lin0$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lin0$c;

.field public final synthetic b:Lin0;


# direct methods
.method public constructor <init>(Lin0;Lin0$c;)V
    .locals 0

    iput-object p1, p0, Lin0$a;->b:Lin0;

    iput-object p2, p0, Lin0$a;->a:Lin0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lin0$a;->a:Lin0$c;

    invoke-virtual {v0}, Lin0$c;->c()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lin0$a;->b:Lin0;

    iget-object v1, p0, Lin0$a;->a:Lin0$c;

    invoke-static {v0, v1}, Lin0;->a(Lin0;Lin0$c;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lin0$a;->b:Lin0;

    iget-object v2, p0, Lin0$a;->a:Lin0$c;

    invoke-static {v1, v2}, Lin0;->a(Lin0;Lin0$c;)V

    throw v0
.end method
