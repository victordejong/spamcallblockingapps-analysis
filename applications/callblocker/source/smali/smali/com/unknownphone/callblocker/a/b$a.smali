.class Lcom/unknownphone/callblocker/a/b$a;
.super Landroid/os/AsyncTask;
.source "BlockedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/unknownphone/callblocker/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/unknownphone/callblocker/a/c;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/a/b;Lcom/unknownphone/callblocker/a/c;)V
    .locals 1

    .prologue
    .line 723
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 724
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/a/b$a;->a:Ljava/lang/ref/WeakReference;

    .line 725
    iput-object p2, p0, Lcom/unknownphone/callblocker/a/b$a;->b:Lcom/unknownphone/callblocker/a/c;

    .line 726
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 735
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/a/b;

    .line 737
    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/b;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 739
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/b;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-object v2

    .line 743
    :cond_1
    :try_start_0
    new-instance v1, Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/a/b;->p()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    .line 744
    iget-object v0, p0, Lcom/unknownphone/callblocker/a/b$a;->b:Lcom/unknownphone/callblocker/a/c;

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/d/b;->b(Lcom/unknownphone/callblocker/a/c;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 746
    :catch_0
    move-exception v0

    .line 747
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 755
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 718
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/a/b$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 718
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/a/b$a;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 730
    return-void
.end method
