.class public final Lp9/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr9/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp9/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final a:Lr9/e$c;

.field public b:Laa/x;

.field public c:Laa/x;

.field public d:Z

.field public final synthetic e:Lp9/c;


# direct methods
.method public constructor <init>(Lp9/c;Lr9/e$c;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lp9/c$b;->e:Lp9/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lp9/c$b;->a:Lr9/e$c;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2, v0}, Lr9/e$c;->d(I)Laa/x;

    move-result-object v0

    iput-object v0, p0, Lp9/c$b;->b:Laa/x;

    .line 4
    new-instance v1, Lp9/c$b$a;

    invoke-direct {v1, p0, v0, p1, p2}, Lp9/c$b$a;-><init>(Lp9/c$b;Laa/x;Lp9/c;Lr9/e$c;)V

    iput-object v1, p0, Lp9/c$b;->c:Laa/x;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp9/c$b;->e:Lp9/c;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lp9/c$b;->d:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lp9/c$b;->d:Z

    .line 5
    iget-object v2, p0, Lp9/c$b;->e:Lp9/c;

    iget v3, v2, Lp9/c;->d:I

    add-int/2addr v3, v1

    iput v3, v2, Lp9/c;->d:I

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lp9/c$b;->b:Laa/x;

    invoke-static {v0}, Lq9/c;->d(Ljava/io/Closeable;)V

    .line 8
    :try_start_1
    iget-object v0, p0, Lp9/c$b;->a:Lr9/e$c;

    invoke-virtual {v0}, Lr9/e$c;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
