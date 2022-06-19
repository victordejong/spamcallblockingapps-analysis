.class public final Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$c;
.super Lcom/lb/video_trimmer_library/b/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/lb/video_trimmer_library/BaseVideoTrimmerView$initiateTrimming$1",
        "Lcom/lb/video_trimmer_library/utils/BackgroundExecutor$Task;",
        "execute",
        "",
        "video_trimmer_library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;


# direct methods
.method public constructor <init>(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$c;->a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/lb/video_trimmer_library/b/a$a;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$c;->a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;

    invoke-virtual {v0}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$c;->a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;

    invoke-static {v0}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->g(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/p;->a()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$c;->a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;

    invoke-static {v0}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->h(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/p;->a()V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$c;->a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;

    invoke-static {v0}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->i(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;)I

    move-result v0

    int-to-long v4, v0

    .line 192
    iget-object v0, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$c;->a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;

    invoke-static {v0}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->j(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;)I

    move-result v0

    int-to-long v6, v0

    .line 193
    iget-object v0, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$c;->a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;

    invoke-static {v0}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->k(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;)I

    move-result v0

    int-to-long v8, v0

    .line 194
    iget-object v0, p0, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$c;->a:Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;

    invoke-static {v0}, Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;->d(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;)Lcom/lb/video_trimmer_library/a/c;

    move-result-object v10

    if-nez v10, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/p;->a()V

    .line 187
    :cond_2
    invoke-static/range {v1 .. v10}, Lcom/lb/video_trimmer_library/b/c;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;JJJLcom/lb/video_trimmer_library/a/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 197
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
