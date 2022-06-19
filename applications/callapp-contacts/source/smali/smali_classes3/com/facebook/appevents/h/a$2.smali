.class final Lcom/facebook/appevents/h/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/h/a;->a(Ljava/lang/String;Lcom/facebook/appevents/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/appevents/c;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/appevents/c;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/facebook/appevents/h/a$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/appevents/h/a$2;->b:Lcom/facebook/appevents/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 91
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/appevents/h/a$2;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/appevents/c;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/appevents/h/a$2;->b:Lcom/facebook/appevents/c;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/appevents/h/c;->a(Ljava/lang/String;Ljava/util/List;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 92
    invoke-static {v0, p0}, Lcom/facebook/internal/b/b/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
