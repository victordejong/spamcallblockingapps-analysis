.class public Landroidx/media/MediaBrowserServiceCompat$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaBrowserServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z

.field private c:Z

.field private d:Z

.field f:I


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    iput-object p1, p0, Landroidx/media/MediaBrowserServiceCompat$i;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 892
    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$i;->b:Z

    if-nez v0, :cond_2

    .line 896
    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$i;->c:Z

    if-nez v0, :cond_1

    .line 900
    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$i;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 904
    iput-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$i;->b:Z

    return-void

    .line 901
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "detach() called when sendError() had already been called for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$i;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "detach() called when sendResult() had already been called for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$i;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "detach() called when detach() had already been called for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$i;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Landroid/os/Bundle;)V
    .locals 2

    .line 939
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "It is not supported to send an error for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$i;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public final b()V
    .locals 3

    .line 879
    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$i;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$i;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 883
    iput-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$i;->d:Z

    const/4 v0, 0x0

    .line 884
    invoke-virtual {p0, v0}, Landroidx/media/MediaBrowserServiceCompat$i;->a(Landroid/os/Bundle;)V

    return-void

    .line 880
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendError() called when either sendResult() or sendError() had already been called for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/media/MediaBrowserServiceCompat$i;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 849
    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$i;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$i;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 853
    iput-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$i;->c:Z

    .line 854
    invoke-virtual {p0, p1}, Landroidx/media/MediaBrowserServiceCompat$i;->a(Ljava/lang/Object;)V

    return-void

    .line 850
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendResult() called when either sendResult() or sendError() had already been called for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media/MediaBrowserServiceCompat$i;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final c()Z
    .locals 1

    .line 908
    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$i;->b:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$i;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media/MediaBrowserServiceCompat$i;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
