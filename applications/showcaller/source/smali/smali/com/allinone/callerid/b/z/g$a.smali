.class Lcom/allinone/callerid/b/z/g$a;
.super Ljava/lang/Object;
.source "StrangerRecordAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic e:Lcom/allinone/callerid/b/z/g;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/g;Lcom/allinone/callerid/bean/recorder/RecordCall;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/g$a;->e:Lcom/allinone/callerid/b/z/g;

    iput-object p2, p0, Lcom/allinone/callerid/b/z/g$a;->d:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/b/z/g$a;->e:Lcom/allinone/callerid/b/z/g;

    invoke-static {p1}, Lcom/allinone/callerid/b/z/g;->D(Lcom/allinone/callerid/b/z/g;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/allinone/callerid/b/z/g$a;->d:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getFilename()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/z/g$a;->d:Lcom/allinone/callerid/bean/recorder/RecordCall;

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/recorder/RecordCall;->getFilepath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/allinone/callerid/util/recorder/f;->u(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
