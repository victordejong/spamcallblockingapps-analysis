.class public Lk7/h$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk7/h;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk7/u;

.field public final synthetic b:Ljava/util/PriorityQueue;

.field public final synthetic c:Lk7/h;


# direct methods
.method public constructor <init>(Lk7/h;Ljava/lang/String;Lk7/u;Ljava/util/PriorityQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk7/h$c;->c:Lk7/h;

    iput-object p3, p0, Lk7/h$c;->a:Lk7/u;

    iput-object p4, p0, Lk7/h$c;->b:Ljava/util/PriorityQueue;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lk7/h;->i:Ljava/lang/ThreadLocal;

    .line 2
    iget-object v1, p0, Lk7/h$c;->c:Lk7/h;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lk7/h$c;->c:Lk7/h;

    iget-object v2, p0, Lk7/h$c;->a:Lk7/u;

    iget-object v3, p0, Lk7/h$c;->b:Ljava/util/PriorityQueue;

    invoke-static {v1, v2, v3}, Lk7/h;->a(Lk7/h;Lk7/u;Ljava/util/PriorityQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    sget-object v1, Lk7/h;->i:Ljava/lang/ThreadLocal;

    .line 6
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    throw v0
.end method
