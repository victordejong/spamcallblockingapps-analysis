.class public Lr9/e$c$a;
.super Lr9/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr9/e$c;->d(I)Laa/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lr9/e$c;


# direct methods
.method public constructor <init>(Lr9/e$c;Laa/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr9/e$c$a;->c:Lr9/e$c;

    invoke-direct {p0, p2}, Lr9/f;-><init>(Laa/x;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lr9/e$c$a;->c:Lr9/e$c;

    iget-object p1, p1, Lr9/e$c;->d:Lr9/e;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lr9/e$c$a;->c:Lr9/e$c;

    invoke-virtual {v0}, Lr9/e$c;->c()V

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
