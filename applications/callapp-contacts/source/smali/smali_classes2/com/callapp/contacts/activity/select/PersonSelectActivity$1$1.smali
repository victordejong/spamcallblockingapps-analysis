.class Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:I

.field final synthetic e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;ZLjava/util/List;Ljava/util/List;I)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iput-boolean p2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->a:Z

    iput-object p3, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->c:Ljava/util/List;

    iput p5, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-boolean v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->a:Z

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->d(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/util/List;I)V

    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->e(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 240
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->e(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->setSearchText(Ljava/lang/String;)V

    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->e(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 245
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->e(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->setSearchText(Ljava/lang/String;)V

    return-void

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    const v3, 0x7f1204d0

    invoke-virtual {v2, v3}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/callapp/contacts/manager/FeedbackManager;->b(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    iget-object v2, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->c:Ljava/util/List;

    iget v3, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->d:I

    invoke-static {v0, v2, v3}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->a(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/util/List;I)V

    .line 253
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->f(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getBaseListFunctions()Lcom/callapp/contacts/activity/base/BaseListFunctions;

    move-result-object v0

    invoke-interface {v0}, Lcom/callapp/contacts/activity/base/BaseListFunctions;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 254
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->g(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Z

    .line 255
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->h(Lcom/callapp/contacts/activity/select/PersonSelectActivity;)Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getBaseListFunctions()Lcom/callapp/contacts/activity/base/BaseListFunctions;

    move-result-object v1

    invoke-interface {v1}, Lcom/callapp/contacts/activity/base/BaseListFunctions;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/model/PersonData;

    invoke-interface {v0, v1}, Lcom/callapp/contacts/activity/select/BasePersonAdapter$ItemSelectListener;->a(Lcom/callapp/contacts/model/PersonData;)V

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1$1;->e:Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/select/PersonSelectActivity$1;->c:Lcom/callapp/contacts/activity/select/PersonSelectActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->getSearchText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/select/PersonSelectActivity;->b(Lcom/callapp/contacts/activity/select/PersonSelectActivity;Ljava/lang/String;)V

    return-void
.end method
