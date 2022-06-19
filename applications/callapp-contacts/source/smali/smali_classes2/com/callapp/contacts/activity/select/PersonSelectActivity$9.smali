.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$9;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$9;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->b(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Ljava/util/List;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$9;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    new-instance v2, Lcom/callapp/contacts/activity/select/PersonSelectActivity$9$1;

    invoke-direct {v2, p0, v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity$9$1;-><init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity$9;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->safeRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method
