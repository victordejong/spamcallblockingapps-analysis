.class public Lcom/firebase/jobdispatcher/SimpleJobService$b;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/jobdispatcher/SimpleJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/firebase/jobdispatcher/SimpleJobService;

.field public final b:Lzp0;


# direct methods
.method public constructor <init>(Lcom/firebase/jobdispatcher/SimpleJobService;Lzp0;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/firebase/jobdispatcher/SimpleJobService$b;->a:Lcom/firebase/jobdispatcher/SimpleJobService;

    iput-object p2, p0, Lcom/firebase/jobdispatcher/SimpleJobService$b;->b:Lzp0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/firebase/jobdispatcher/SimpleJobService;Lzp0;Lcom/firebase/jobdispatcher/SimpleJobService$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/firebase/jobdispatcher/SimpleJobService$b;-><init>(Lcom/firebase/jobdispatcher/SimpleJobService;Lzp0;)V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    iget-object p1, p0, Lcom/firebase/jobdispatcher/SimpleJobService$b;->a:Lcom/firebase/jobdispatcher/SimpleJobService;

    iget-object v0, p0, Lcom/firebase/jobdispatcher/SimpleJobService$b;->b:Lzp0;

    invoke-virtual {p1, v0}, Lcom/firebase/jobdispatcher/SimpleJobService;->i(Lzp0;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/firebase/jobdispatcher/SimpleJobService$b;->a:Lcom/firebase/jobdispatcher/SimpleJobService;

    iget-object v1, p0, Lcom/firebase/jobdispatcher/SimpleJobService$b;->b:Lzp0;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/firebase/jobdispatcher/SimpleJobService;->g(Lcom/firebase/jobdispatcher/SimpleJobService;Lzp0;Z)V

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/firebase/jobdispatcher/SimpleJobService$b;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/firebase/jobdispatcher/SimpleJobService$b;->b(Ljava/lang/Integer;)V

    return-void
.end method
