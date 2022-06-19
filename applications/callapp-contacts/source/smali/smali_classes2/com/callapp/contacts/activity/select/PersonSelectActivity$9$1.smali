.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/activity/select/PersonSelectActivity$9;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity$9;Ljava/util/List;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$9$1;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity$9;

    iput-object p2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$9$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$9$1;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity$9;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$9;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$9$1;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/util/List;I)V

    .line 548
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$9$1;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity$9;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$9;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->e(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 549
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$9$1;->b:Lcom/callapp/contacts/activity/select/PersonSelectActivity$9;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$9;->a:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->e(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method
