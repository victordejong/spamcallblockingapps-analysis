.class public Lsz$b$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsz$b;->a(Lsz$d;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Lsz;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lsz$d;

.field public final synthetic b:Lsz$b;


# direct methods
.method public constructor <init>(Lsz$b;Lsz$d;)V
    .locals 0

    iput-object p1, p0, Lsz$b$a;->b:Lsz$b;

    iput-object p2, p0, Lsz$b$a;->a:Lsz$d;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Landroid/graphics/Bitmap;)Lsz;
    .locals 2

    :try_start_0
    iget-object p1, p0, Lsz$b$a;->b:Lsz$b;

    invoke-virtual {p1}, Lsz$b;->b()Lsz;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Palette"

    const-string v1, "Exception thrown during async generate"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lsz;)V
    .locals 1

    iget-object v0, p0, Lsz$b$a;->a:Lsz$d;

    invoke-interface {v0, p1}, Lsz$d;->a(Lsz;)V

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lsz$b$a;->a([Landroid/graphics/Bitmap;)Lsz;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lsz;

    invoke-virtual {p0, p1}, Lsz$b$a;->b(Lsz;)V

    return-void
.end method
