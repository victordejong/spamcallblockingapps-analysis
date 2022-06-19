.class Lcom/allinone/callerid/b/z/f$e;
.super Ljava/lang/Object;
.source "RecordListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/z/f;->J(Landroid/content/Context;Lcom/allinone/callerid/bean/recorder/RecordCall;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic e:Lcom/allinone/callerid/bean/recorder/RecordCall;

.field final synthetic f:Lcom/allinone/callerid/b/z/f;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/f;ILcom/allinone/callerid/bean/recorder/RecordCall;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/f$e;->f:Lcom/allinone/callerid/b/z/f;

    iput p2, p0, Lcom/allinone/callerid/b/z/f$e;->d:I

    iput-object p3, p0, Lcom/allinone/callerid/b/z/f$e;->e:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/allinone/callerid/b/z/f$e;->d:I

    iget-object p2, p0, Lcom/allinone/callerid/b/z/f$e;->f:Lcom/allinone/callerid/b/z/f;

    iget-object p2, p2, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/b/z/f$e;->e:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getFilepath()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/allinone/callerid/b/z/f$e;->f:Lcom/allinone/callerid/b/z/f;

    iget-object p2, p2, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    iget v0, p0, Lcom/allinone/callerid/b/z/f$e;->d:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lcom/allinone/callerid/b/z/f$e;->f:Lcom/allinone/callerid/b/z/f;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object p2

    iget-object p2, p2, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/allinone/callerid/b/z/f$e$a;

    invoke-direct {v0, p0, p1}, Lcom/allinone/callerid/b/z/f$e$a;-><init>(Lcom/allinone/callerid/b/z/f$e;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "recorder_delete_click"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    return-void
.end method
