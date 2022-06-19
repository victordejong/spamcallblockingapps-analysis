.class Lcom/callapp/contacts/recorder/CallRecorderManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/recorder/CallRecorderManager;->a(Ljava/util/List;Lcom/callapp/contacts/action/ActionDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/action/ActionDoneListener;

.field final synthetic c:Lcom/callapp/contacts/recorder/CallRecorderManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/recorder/CallRecorderManager;Ljava/util/List;Lcom/callapp/contacts/action/ActionDoneListener;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$4;->c:Lcom/callapp/contacts/recorder/CallRecorderManager;

    iput-object p2, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$4;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$4;->b:Lcom/callapp/contacts/action/ActionDoneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$4;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/objectbox/CallRecorder;

    .line 494
    invoke-static {v1}, Lcom/callapp/contacts/recorder/CallRecorderManager;->d(Lcom/callapp/contacts/model/objectbox/CallRecorder;)V

    .line 495
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/callapp/contacts/model/objectbox/CallRecorder;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/callapp/contacts/util/IoUtils;->b(Ljava/io/File;)Z

    goto :goto_0

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/recorder/CallRecorderManager$4;->b:Lcom/callapp/contacts/action/ActionDoneListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 498
    invoke-interface {v0, v1}, Lcom/callapp/contacts/action/ActionDoneListener;->a(Z)V

    :cond_1
    return-void
.end method
