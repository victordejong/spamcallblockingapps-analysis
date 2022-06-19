.class public Ly1/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ly1/j;

.field public final b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ly1/j;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly1/j$a;->a:Ly1/j;

    .line 3
    iput-object p2, p0, Ly1/j$a;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ly1/j$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Ly1/j$a;->a:Ly1/j;

    invoke-virtual {v0}, Ly1/j;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ly1/j$a;->a:Ly1/j;

    invoke-virtual {v1}, Ly1/j;->a()V

    .line 3
    throw v0
.end method
