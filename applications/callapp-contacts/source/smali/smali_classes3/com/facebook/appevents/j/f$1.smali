.class final Lcom/facebook/appevents/j/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/j/f;->a(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/facebook/appevents/j/f$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/appevents/j/f$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/j/f$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/appevents/j/f$1;->b:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [F

    invoke-static {v0, v1, v2}, Lcom/facebook/appevents/j/f;->a(Ljava/lang/String;Ljava/lang/String;[F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 127
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
