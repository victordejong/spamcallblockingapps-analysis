.class Lcom/unknownphone/callblocker/e/c$a;
.super Landroid/os/AsyncTask;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unknownphone/callblocker/e/c;
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
            "Lcom/unknownphone/callblocker/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/unknownphone/callblocker/e/a;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/e/c;Lcom/unknownphone/callblocker/e/a;)V
    .locals 1

    .prologue
    .line 689
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 690
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/unknownphone/callblocker/e/c$a;->a:Ljava/lang/ref/WeakReference;

    .line 691
    iput-object p2, p0, Lcom/unknownphone/callblocker/e/c$a;->b:Lcom/unknownphone/callblocker/e/a;

    .line 692
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 701
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unknownphone/callblocker/e/c;

    .line 703
    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->B()Z

    move-result v1

    if-nez v1, :cond_0

    .line 705
    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-object v2

    .line 709
    :cond_1
    :try_start_0
    new-instance v1, Lcom/unknownphone/callblocker/d/b;

    invoke-virtual {v0}, Lcom/unknownphone/callblocker/e/c;->p()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/unknownphone/callblocker/d/b;-><init>(Landroid/content/Context;)V

    .line 710
    iget-object v0, p0, Lcom/unknownphone/callblocker/e/c$a;->b:Lcom/unknownphone/callblocker/e/a;

    invoke-virtual {v1, v0}, Lcom/unknownphone/callblocker/d/b;->b(Lcom/unknownphone/callblocker/e/a;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 721
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 684
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/e/c$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 684
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unknownphone/callblocker/e/c$a;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 696
    return-void
.end method
