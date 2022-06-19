.class Lcom/allinone/callerid/b/z/e$a;
.super Ljava/lang/Object;
.source "ProblemRecordAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/z/e;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

.field final synthetic e:Lcom/allinone/callerid/b/z/e;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/e;Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/e$a;->e:Lcom/allinone/callerid/b/z/e;

    iput-object p2, p0, Lcom/allinone/callerid/b/z/e$a;->d:Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/b/z/e$a;->d:Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    invoke-virtual {p1}, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->isselected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/allinone/callerid/b/z/e$a$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/b/z/e$a$a;-><init>(Lcom/allinone/callerid/b/z/e$a;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
