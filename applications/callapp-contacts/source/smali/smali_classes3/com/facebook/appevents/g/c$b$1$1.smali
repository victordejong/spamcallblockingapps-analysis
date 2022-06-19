.class final Lcom/facebook/appevents/g/c$b$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/appevents/f/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/g/c$b$1;->a(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/appevents/g/c$b;

.field final synthetic b:Lcom/facebook/appevents/g/b;

.field final synthetic c:Lcom/facebook/appevents/g/c$b$1;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/g/c$b$1;Lcom/facebook/appevents/g/c$b;Lcom/facebook/appevents/g/b;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/facebook/appevents/g/c$b$1$1;->c:Lcom/facebook/appevents/g/c$b$1;

    iput-object p2, p0, Lcom/facebook/appevents/g/c$b$1$1;->a:Lcom/facebook/appevents/g/c$b;

    iput-object p3, p0, Lcom/facebook/appevents/g/c$b$1$1;->b:Lcom/facebook/appevents/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/facebook/appevents/g/c$b$1$1;->a:Lcom/facebook/appevents/g/c$b;

    iget-object v1, p0, Lcom/facebook/appevents/g/c$b$1$1;->b:Lcom/facebook/appevents/g/b;

    iput-object v1, v0, Lcom/facebook/appevents/g/c$b;->g:Lcom/facebook/appevents/g/b;

    .line 439
    iget-object v0, p0, Lcom/facebook/appevents/g/c$b$1$1;->a:Lcom/facebook/appevents/g/c$b;

    iput-object p1, v0, Lcom/facebook/appevents/g/c$b;->f:Ljava/io/File;

    .line 440
    iget-object p1, p0, Lcom/facebook/appevents/g/c$b$1$1;->a:Lcom/facebook/appevents/g/c$b;

    .line 1369
    iget-object p1, p1, Lcom/facebook/appevents/g/c$b;->h:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 441
    iget-object p1, p0, Lcom/facebook/appevents/g/c$b$1$1;->a:Lcom/facebook/appevents/g/c$b;

    .line 2369
    iget-object p1, p1, Lcom/facebook/appevents/g/c$b;->h:Ljava/lang/Runnable;

    .line 441
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
