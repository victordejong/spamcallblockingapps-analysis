.class final Lio/a/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lio/a/a;


# direct methods
.method constructor <init>(Lio/a/a;Ljava/lang/Runnable;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lio/a/a$1;->b:Lio/a/a;

    iput-object p2, p0, Lio/a/a$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 630
    iget-object v0, p0, Lio/a/a$1;->b:Lio/a/a;

    invoke-virtual {v0}, Lio/a/a;->c()Lio/a/a;

    move-result-object v0

    .line 632
    :try_start_0
    iget-object v1, p0, Lio/a/a$1;->a:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    iget-object v1, p0, Lio/a/a$1;->b:Lio/a/a;

    invoke-virtual {v1, v0}, Lio/a/a;->a(Lio/a/a;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/a/a$1;->b:Lio/a/a;

    invoke-virtual {v2, v0}, Lio/a/a;->a(Lio/a/a;)V

    throw v1
.end method
