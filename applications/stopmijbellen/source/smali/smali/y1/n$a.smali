.class public Ly1/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly1/n;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz1/c;

.field public final synthetic b:Ly1/n;


# direct methods
.method public constructor <init>(Ly1/n;Lz1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly1/n$a;->b:Ly1/n;

    iput-object p2, p0, Ly1/n$a;->a:Lz1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly1/n$a;->a:Lz1/c;

    iget-object v1, p0, Ly1/n$a;->b:Ly1/n;

    iget-object v1, v1, Ly1/n;->d:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->getForegroundInfoAsync()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz1/c;->j(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-void
.end method
