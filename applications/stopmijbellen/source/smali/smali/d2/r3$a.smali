.class public Ld2/r3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/r3;->onSeekComplete(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/r3;


# direct methods
.method public constructor <init>(Ld2/r3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/r3$a;->a:Ld2/r3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x96

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 3
    :goto_0
    iget-object v0, p0, Ld2/r3$a;->a:Ld2/r3;

    .line 4
    iget-object v0, v0, Ld2/r3;->N:Ld2/t0;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    .line 6
    iget-object v1, p0, Ld2/r3$a;->a:Ld2/r3;

    .line 7
    iget v1, v1, Ld2/r3;->m:I

    const-string v2, "id"

    .line 8
    invoke-static {v0, v2, v1}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 9
    iget-object v1, p0, Ld2/r3$a;->a:Ld2/r3;

    .line 10
    iget-object v1, v1, Ld2/r3;->D:Ljava/lang/String;

    const-string v2, "ad_session_id"

    .line 11
    invoke-static {v0, v2, v1}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x1

    const-string v2, "success"

    .line 12
    invoke-static {v0, v2, v1}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    .line 13
    iget-object v1, p0, Ld2/r3$a;->a:Ld2/r3;

    .line 14
    iget-object v1, v1, Ld2/r3;->N:Ld2/t0;

    .line 15
    invoke-virtual {v1, v0}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object v0

    invoke-virtual {v0}, Ld2/t0;->b()V

    .line 16
    iget-object v0, p0, Ld2/r3$a;->a:Ld2/r3;

    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Ld2/r3;->N:Ld2/t0;

    :cond_0
    return-void
.end method
