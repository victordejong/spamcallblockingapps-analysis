.class Lcom/callapp/contacts/loader/api/ContactLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/loader/api/ContactLoader;->removeWebview(Lcom/callapp/contacts/loader/api/ContactDataLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/loader/api/ContactDataLoader;

.field final synthetic b:Lcom/callapp/contacts/loader/api/ContactLoader;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/loader/api/ContactLoader;Lcom/callapp/contacts/loader/api/ContactDataLoader;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/callapp/contacts/loader/api/ContactLoader$1;->b:Lcom/callapp/contacts/loader/api/ContactLoader;

    iput-object p2, p0, Lcom/callapp/contacts/loader/api/ContactLoader$1;->a:Lcom/callapp/contacts/loader/api/ContactDataLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/loader/api/ContactLoader$1;->b:Lcom/callapp/contacts/loader/api/ContactLoader;

    invoke-static {v0}, Lcom/callapp/contacts/loader/api/ContactLoader;->access$000(Lcom/callapp/contacts/loader/api/ContactLoader;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/loader/api/ContactLoader$1;->a:Lcom/callapp/contacts/loader/api/ContactDataLoader;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 134
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 137
    throw v0

    :cond_0
    return-void
.end method
