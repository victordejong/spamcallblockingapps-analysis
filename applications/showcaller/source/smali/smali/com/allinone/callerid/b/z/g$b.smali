.class Lcom/allinone/callerid/b/z/g$b;
.super Ljava/lang/Object;
.source "StrangerRecordAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/z/g;->p(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/bean/recorder/RecordCall;

.field final synthetic e:I

.field final synthetic f:Lcom/allinone/callerid/b/z/g;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/g;Lcom/allinone/callerid/bean/recorder/RecordCall;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/g$b;->f:Lcom/allinone/callerid/b/z/g;

    iput-object p2, p0, Lcom/allinone/callerid/b/z/g$b;->d:Lcom/allinone/callerid/bean/recorder/RecordCall;

    iput p3, p0, Lcom/allinone/callerid/b/z/g$b;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/b/z/g$b;->f:Lcom/allinone/callerid/b/z/g;

    iget-object v0, p0, Lcom/allinone/callerid/b/z/g$b;->d:Lcom/allinone/callerid/bean/recorder/RecordCall;

    iget v1, p0, Lcom/allinone/callerid/b/z/g$b;->e:I

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/b/z/g;->E(Lcom/allinone/callerid/b/z/g;Lcom/allinone/callerid/bean/recorder/RecordCall;I)V

    const/4 p1, 0x0

    return p1
.end method
