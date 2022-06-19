.class public Ld2/x3$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/x3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Ld2/x3;


# direct methods
.method public constructor <init>(Ld2/x3;Ld2/y3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/x3$g;->a:Ld2/x3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch_messages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Ld2/x3$g;->a:Ld2/x3;

    .line 2
    iget-object v0, v0, Ld2/x3;->k:Ljava/lang/String;

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Ld2/x3$g;->a:Ld2/x3;

    invoke-static {p2, p1}, Ld2/x3;->p(Ld2/x3;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public enable_reverse_messaging(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Ld2/x3$g;->a:Ld2/x3;

    .line 2
    iget-object v0, v0, Ld2/x3;->k:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Ld2/x3$g;->a:Ld2/x3;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p1, Ld2/x3;->D:Z

    :cond_0
    return-void
.end method

.method public pull_messages(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Ld2/x3$g;->a:Ld2/x3;

    .line 2
    iget-object v0, v0, Ld2/x3;->k:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "[]"

    .line 4
    iget-object v0, p0, Ld2/x3$g;->a:Ld2/x3;

    .line 5
    iget-object v0, v0, Ld2/x3;->P:Ljava/lang/Object;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Ld2/x3$g;->a:Ld2/x3;

    .line 8
    iget-object v1, v1, Ld2/x3;->I:Ld2/d4;

    .line 9
    invoke-virtual {v1}, Ld2/d4;->c()I

    move-result v1

    if-lez v1, :cond_1

    .line 10
    iget-object v1, p0, Ld2/x3$g;->a:Ld2/x3;

    .line 11
    iget-boolean v2, v1, Ld2/x3;->y:Z

    if-eqz v2, :cond_0

    .line 12
    iget-object p1, v1, Ld2/x3;->I:Ld2/d4;

    .line 13
    invoke-virtual {p1}, Ld2/d4;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    :cond_0
    iget-object v1, p0, Ld2/x3$g;->a:Ld2/x3;

    .line 15
    new-instance v2, Ld2/d4;

    invoke-direct {v2}, Ld2/d4;-><init>()V

    .line 16
    iput-object v2, v1, Ld2/x3;->I:Ld2/d4;

    .line 17
    :cond_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    const-string p1, "[]"

    return-object p1
.end method

.method public push_messages(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Ld2/x3$g;->a:Ld2/x3;

    .line 2
    iget-object v0, v0, Ld2/x3;->k:Ljava/lang/String;

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Ld2/x3$g;->a:Ld2/x3;

    invoke-static {p2, p1}, Ld2/x3;->p(Ld2/x3;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
