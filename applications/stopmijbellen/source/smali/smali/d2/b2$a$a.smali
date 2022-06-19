.class public Ld2/b2$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/b2$a;->a(Ld2/t0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/t0;

.field public final synthetic b:Ld2/b2$a;


# direct methods
.method public constructor <init>(Ld2/b2$a;Ld2/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/b2$a$a;->b:Ld2/b2$a;

    iput-object p2, p0, Ld2/b2$a$a;->a:Ld2/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Ld2/b2$a$a;->b:Ld2/b2$a;

    iget-object v2, v2, Ld2/b2$a;->a:Ld2/b2;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Ld2/b2$b;

    iget-object v3, p0, Ld2/b2$a$a;->a:Ld2/t0;

    invoke-direct {v2, v3, v1}, Ld2/b2$b;-><init>(Ld2/t0;Z)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v4, v1, [Ljava/lang/Void;

    .line 3
    invoke-virtual {v2, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    invoke-virtual {v2}, Ld2/f1;->p()Ld2/h0;

    move-result-object v2

    const-string v3, "StackOverflowError on info AsyncTask execution, disabling AdColony"

    .line 5
    invoke-virtual {v2, v1, v1, v3, v0}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 6
    invoke-static {}, Ld2/b;->i()Z

    goto :goto_0

    .line 7
    :catch_1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    invoke-virtual {v2}, Ld2/f1;->p()Ld2/h0;

    move-result-object v2

    const-string v3, "Error retrieving device info, disabling AdColony."

    .line 8
    invoke-virtual {v2, v1, v1, v3, v0}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 9
    invoke-static {}, Ld2/b;->i()Z

    :goto_0
    return-void
.end method
