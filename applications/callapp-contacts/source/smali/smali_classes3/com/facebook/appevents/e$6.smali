.class final Lcom/facebook/appevents/e$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/e;->a(Lcom/facebook/appevents/a;Lcom/facebook/GraphRequest;Lcom/facebook/j;Lcom/facebook/appevents/o;Lcom/facebook/appevents/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/appevents/a;

.field final synthetic b:Lcom/facebook/appevents/o;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/a;Lcom/facebook/appevents/o;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/facebook/appevents/e$6;->a:Lcom/facebook/appevents/a;

    iput-object p2, p0, Lcom/facebook/appevents/e$6;->b:Lcom/facebook/appevents/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 305
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/e$6;->a:Lcom/facebook/appevents/a;

    iget-object v1, p0, Lcom/facebook/appevents/e$6;->b:Lcom/facebook/appevents/o;

    invoke-static {v0, v1}, Lcom/facebook/appevents/f;->a(Lcom/facebook/appevents/a;Lcom/facebook/appevents/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 306
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
