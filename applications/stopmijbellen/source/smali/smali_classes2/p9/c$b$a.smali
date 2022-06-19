.class public Lp9/c$b$a;
.super Laa/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp9/c$b;-><init>(Lp9/c;Lr9/e$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lr9/e$c;

.field public final synthetic c:Lp9/c$b;


# direct methods
.method public constructor <init>(Lp9/c$b;Laa/x;Lp9/c;Lr9/e$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp9/c$b$a;->c:Lp9/c$b;

    iput-object p4, p0, Lp9/c$b$a;->b:Lr9/e$c;

    invoke-direct {p0, p2}, Laa/j;-><init>(Laa/x;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp9/c$b$a;->c:Lp9/c$b;

    iget-object v0, v0, Lp9/c$b;->e:Lp9/c;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp9/c$b$a;->c:Lp9/c$b;

    iget-boolean v2, v1, Lp9/c$b;->d:Z

    if-eqz v2, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v1, Lp9/c$b;->d:Z

    .line 5
    iget-object v1, v1, Lp9/c$b;->e:Lp9/c;

    iget v3, v1, Lp9/c;->c:I

    add-int/2addr v3, v2

    iput v3, v1, Lp9/c;->c:I

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Laa/j;->a:Laa/x;

    invoke-interface {v0}, Laa/x;->close()V

    .line 8
    iget-object v0, p0, Lp9/c$b$a;->b:Lr9/e$c;

    invoke-virtual {v0}, Lr9/e$c;->b()V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
