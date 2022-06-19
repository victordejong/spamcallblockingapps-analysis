.class Lcom/allinone/callerid/b/z/e$a$a;
.super Ljava/lang/Object;
.source "ProblemRecordAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/b/z/e$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/b/z/e$a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/b/z/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/b/z/e$a$a;->d:Lcom/allinone/callerid/b/z/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/allinone/callerid/f/k/c;->b()Lcom/allinone/callerid/f/k/c;

    move-result-object v0

    iget-object v1, p0, Lcom/allinone/callerid/b/z/e$a$a;->d:Lcom/allinone/callerid/b/z/e$a;

    iget-object v1, v1, Lcom/allinone/callerid/b/z/e$a;->d:Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    invoke-virtual {v1}, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->getShowname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/f/k/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/b/z/e$a$a;->d:Lcom/allinone/callerid/b/z/e$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/z/e$a;->d:Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    invoke-virtual {v0}, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->getAudiosource()I

    move-result v0

    invoke-static {v0}, Lcom/allinone/callerid/util/recorder/b;->m(I)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/b/z/e$a$a;->d:Lcom/allinone/callerid/b/z/e$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/z/e$a;->e:Lcom/allinone/callerid/b/z/e;

    iget-object v0, v0, Lcom/allinone/callerid/b/z/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->setIsselected(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/b/z/e$a$a;->d:Lcom/allinone/callerid/b/z/e$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/z/e$a;->d:Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/recorder/AudioSourceInfo;->setIsselected(Z)V

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/b/z/e$a$a;->d:Lcom/allinone/callerid/b/z/e$a;

    iget-object v0, v0, Lcom/allinone/callerid/b/z/e$a;->e:Lcom/allinone/callerid/b/z/e;

    invoke-static {v0}, Lcom/allinone/callerid/b/z/e;->E(Lcom/allinone/callerid/b/z/e;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/b/z/e$a$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/b/z/e$a$a$a;-><init>(Lcom/allinone/callerid/b/z/e$a$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
