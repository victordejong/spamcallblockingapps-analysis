.class Lcom/callapp/contacts/CallAppApplication$20;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/CallAppApplication;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/callapp/contacts/CallAppApplication;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication;Ljava/util/Set;)V
    .locals 0

    .line 1040
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$20;->b:Lcom/callapp/contacts/CallAppApplication;

    iput-object p2, p0, Lcom/callapp/contacts/CallAppApplication$20;->a:Ljava/util/Set;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 1043
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$20;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1044
    new-instance v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    invoke-direct {v2, v1}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/CallAppApplication$20;->b:Lcom/callapp/contacts/CallAppApplication;

    .line 1432
    iput-object v1, v2, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->e:Landroid/content/Context;

    .line 1044
    invoke-virtual {v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method
