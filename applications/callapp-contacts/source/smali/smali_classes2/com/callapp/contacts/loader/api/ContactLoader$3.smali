.class Lcom/callapp/contacts/loader/api/ContactLoader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/api/ContactLoader;->stopLoading(Lcom/callapp/contacts/model/contact/ContactData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/loader/api/ContactLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/api/ContactLoader;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/callapp/contacts/loader/api/ContactLoader$3;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader$3;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-static {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->access$000(Lcom/callapp/contacts/loader/api/ContactLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 689
    :try_start_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 692
    throw v0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader$3;->a:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-static {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->access$000(Lcom/callapp/contacts/loader/api/ContactLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
