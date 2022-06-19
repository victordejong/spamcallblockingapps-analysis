.class Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a$a;
.super Ljava/lang/Object;
.source "RecordProblemActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a;

    iput-object p2, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a$a;->d:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a$a;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity;)Lcom/allinone/callerid/b/z/e;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a$a;->d:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/b/z/b;->A(Ljava/util/ArrayList;Z)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a$a;->e:Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a;

    iget-object v0, v0, Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity;

    invoke-static {v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity;->X(Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity;)Lcom/allinone/callerid/b/z/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->i()V

    :cond_0
    return-void
.end method
