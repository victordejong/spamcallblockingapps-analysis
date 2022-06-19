.class public Lt7/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Exception;

.field public final synthetic b:Lt7/c;


# direct methods
.method public constructor <init>(Lt7/c;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt7/b;->b:Lt7/c;

    iput-object p2, p0, Lt7/b;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt7/b;->a:Ljava/lang/Exception;

    .line 2
    :try_start_0
    iget-object v1, p0, Lt7/b;->b:Lt7/c;

    iget-object v1, v1, Lt7/c;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    :goto_0
    iget-object v1, p0, Lt7/b;->b:Lt7/c;

    iget-object v1, v1, Lt7/c;->g:Ll7/a;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, v0}, Ll7/a;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
