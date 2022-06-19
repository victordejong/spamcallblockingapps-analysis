.class public Lv9/j;
.super Lq9/b;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lv9/f;


# direct methods
.method public varargs constructor <init>(Lv9/f;Ljava/lang/String;[Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv9/j;->c:Lv9/f;

    iput p4, p0, Lv9/j;->b:I

    invoke-direct {p0, p2, p3}, Lq9/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lv9/j;->c:Lv9/f;

    iget-object v0, v0, Lv9/f;->j:Lv9/r;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lv9/j;->c:Lv9/f;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lv9/j;->c:Lv9/f;

    iget-object v1, v1, Lv9/f;->t:Ljava/util/Set;

    iget v2, p0, Lv9/j;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
