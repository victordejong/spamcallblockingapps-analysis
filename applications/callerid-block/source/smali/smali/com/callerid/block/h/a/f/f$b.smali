.class Lcom/callerid/block/h/a/f/f$b;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callerid/block/h/a/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
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
.field private a:Lcom/callerid/block/h/a/f/e;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/callerid/block/h/a/f/e;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/callerid/block/h/a/f/f$b;->a:Lcom/callerid/block/h/a/f/e;

    iput-object p1, p0, Lcom/callerid/block/h/a/f/f$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/h/a/f/f$b;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/callerid/block/util/t0;->J(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/callerid/block/h/a/f/f$b;->a:Lcom/callerid/block/h/a/f/e;

    invoke-interface {v0, p1}, Lcom/callerid/block/h/a/f/e;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/f/f$b;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/callerid/block/h/a/f/f$b;->b(Landroid/graphics/Bitmap;)V

    return-void
.end method
