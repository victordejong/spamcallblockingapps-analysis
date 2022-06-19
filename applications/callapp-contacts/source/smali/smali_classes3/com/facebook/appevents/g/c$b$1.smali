.class final Lcom/facebook/appevents/g/c$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/appevents/f/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/g/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/facebook/appevents/g/c$b$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 5

    .line 428
    invoke-static {p1}, Lcom/facebook/appevents/g/b;->a(Ljava/io/File;)Lcom/facebook/appevents/g/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/facebook/appevents/g/c$b$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/g/c$b;

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/facebook/appevents/g/c$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/facebook/appevents/g/c$b;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_rule"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 432
    iget-object v3, v1, Lcom/facebook/appevents/g/c$b;->c:Ljava/lang/String;

    new-instance v4, Lcom/facebook/appevents/g/c$b$1$1;

    invoke-direct {v4, p0, v1, p1}, Lcom/facebook/appevents/g/c$b$1$1;-><init>(Lcom/facebook/appevents/g/c$b$1;Lcom/facebook/appevents/g/c$b;Lcom/facebook/appevents/g/b;)V

    .line 1369
    invoke-static {v3, v2, v4}, Lcom/facebook/appevents/g/c$b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/appevents/f/e$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method
