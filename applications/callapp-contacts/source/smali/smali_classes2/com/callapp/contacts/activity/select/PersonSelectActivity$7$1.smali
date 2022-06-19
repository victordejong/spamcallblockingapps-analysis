.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/callapp/contacts/activity/select/PersonSelectActivity$7;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity$7;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$7$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity$7;

    iput-object p2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$7$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$7$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 518
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$7$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity$7;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$7;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$7$1;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$7$1;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/util/List;I)V

    return-void
.end method
