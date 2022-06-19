.class final Lcom/lb/video_trimmer_library/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lb/video_trimmer_library/b/c;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;JJJLcom/lb/video_trimmer_library/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/lb/video_trimmer_library/a/c;

.field final synthetic b:Lkotlin/jvm/internal/ab$a;

.field final synthetic c:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/lb/video_trimmer_library/a/c;Lkotlin/jvm/internal/ab$a;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/lb/video_trimmer_library/b/c$a;->a:Lcom/lb/video_trimmer_library/a/c;

    iput-object p2, p0, Lcom/lb/video_trimmer_library/b/c$a;->b:Lkotlin/jvm/internal/ab$a;

    iput-object p3, p0, Lcom/lb/video_trimmer_library/b/c$a;->c:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/lb/video_trimmer_library/b/c$a;->a:Lcom/lb/video_trimmer_library/a/c;

    iget-object v1, p0, Lcom/lb/video_trimmer_library/b/c$a;->b:Lkotlin/jvm/internal/ab$a;

    iget-boolean v1, v1, Lkotlin/jvm/internal/ab$a;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lb/video_trimmer_library/b/c$a;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/lb/video_trimmer_library/a/c;->a(Landroid/net/Uri;)V

    return-void
.end method
