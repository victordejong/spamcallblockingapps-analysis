.class Lcom/facebook/a/e/a$a;
.super Landroid/os/AsyncTask;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Runnable;

.field b:Ljava/io/File;

.field c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 342
    iput-object p1, p0, Lcom/facebook/a/e/a$a;->c:Ljava/lang/String;

    .line 343
    iput-object p2, p0, Lcom/facebook/a/e/a$a;->b:Ljava/io/File;

    .line 344
    iput-object p3, p0, Lcom/facebook/a/e/a$a;->a:Ljava/lang/Runnable;

    .line 345
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 350
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/facebook/a/e/a$a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 352
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    .line 354
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 356
    new-array v0, v1, [B

    .line 357
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 358
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 360
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/facebook/a/e/a$a;->b:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 361
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 362
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 363
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 364
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    .line 365
    :catch_0
    move-exception v0

    .line 368
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 373
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/facebook/a/e/a$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 376
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 337
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/a/e/a$a;->a([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 337
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/facebook/a/e/a$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
