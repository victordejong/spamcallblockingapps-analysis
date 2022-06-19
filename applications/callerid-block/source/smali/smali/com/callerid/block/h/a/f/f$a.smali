.class Lcom/callerid/block/h/a/f/f$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/h/a/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/callerid/block/h/a/f/n;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/callerid/block/h/a/f/n;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/callerid/block/h/a/f/f$a;->a:Lcom/callerid/block/h/a/f/n;

    iput-object p1, p0, Lcom/callerid/block/h/a/f/f$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {}, Lcom/callerid/block/g/a;->b()Lcom/callerid/block/g/a;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/h/a/f/f$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/g/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/callerid/block/g/a;->b()Lcom/callerid/block/g/a;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/h/a/f/f$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/callerid/block/g/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/h/a/f/f$a;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callerid/block/util/t0;->J(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/callerid/block/g/a;->b()Lcom/callerid/block/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/h/a/f/f$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/callerid/block/g/a;->c(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/h/a/f/f$a;->a:Lcom/callerid/block/h/a/f/n;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/callerid/block/h/a/f/f$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/callerid/block/h/a/f/n;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/f/f$a;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/f/f$a;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method
