.class Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a;
.super Ljava/lang/Object;
.source "RecordProblemActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity;->Z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/f/k/c;->b()Lcom/allinone/callerid/f/k/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/allinone/callerid/f/k/c;->c()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a;->d:Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity;

    new-instance v2, Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a$a;

    invoke-direct {v2, p0, v0}, Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a$a;-><init>(Lcom/allinone/callerid/mvc/controller/recorder/RecordProblemActivity$a;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
