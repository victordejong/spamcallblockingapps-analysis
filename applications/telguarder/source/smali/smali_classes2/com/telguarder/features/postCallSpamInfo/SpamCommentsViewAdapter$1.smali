.class Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;
.super Ljava/lang/Object;
.source "SpamCommentsViewAdapter.java"

# interfaces
.implements Lcom/telguarder/features/postCallSpamInfo/SpamCommentDataProvider$SpamCommentDataProviderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->lambda$initData$3(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;


# direct methods
.method constructor <init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAddCommentListItem$1$SpamCommentsViewAdapter$1()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$200(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public synthetic lambda$onStartRequest$0$SpamCommentsViewAdapter$1()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-virtual {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAddAdvertItem()V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    iget-object v0, v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$300(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$200(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;

    iget-object v2, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$000(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    iget-object v3, v3, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-direct {v1, v2, v3}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/telguarder/features/advertisements/Advert;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$302(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;Z)Z

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    iget-object v0, v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/Advert;->backupNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    iget-object v1, v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/Advert;->getAdvertForBackupNetwork()Lcom/telguarder/features/advertisements/Advert;

    move-result-object v1

    iput-object v1, v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    .line 281
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$200(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;

    iget-object v2, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$000(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    iget-object v3, v3, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-direct {v1, v2, v3}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/telguarder/features/advertisements/Advert;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    iget-object v1, v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mAdvertFromCache:Lcom/telguarder/features/advertisements/Advert;

    iput-object v1, v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    .line 284
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$200(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;

    iget-object v2, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$000(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    iget-object v3, v3, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-direct {v1, v2, v3}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentAdData;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/telguarder/features/advertisements/Advert;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onAddCommentListItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$200(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-virtual {v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->getSpamCommentProgressData()Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$200(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentListItemData;

    invoke-direct {v1, p1, p2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentListItemData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$000(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$000(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    new-instance p2, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$1$juvBQsCqVNd-qvaXd0rJ0xC4Yc0;

    invoke-direct {p2, p0}, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$1$juvBQsCqVNd-qvaXd0rJ0xC4Yc0;-><init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onEndRequest()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$200(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-virtual {v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->getSpamCommentProgressData()Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-virtual {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->getSpamCommentProgressData()Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData$ProgressState;->NO_COMMENTS_FOUND:Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData$ProgressState;

    iput-object v1, v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;->mProgressState:Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData$ProgressState;

    .line 293
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$200(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-virtual {v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->getSpamCommentProgressData()Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$200(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-virtual {v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->getSpamCommentHeaderData()Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-virtual {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onStartRequest()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-virtual {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->getSpamCommentHeaderData()Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$000(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$100(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamCommunityOrange()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f050119

    goto :goto_0

    :cond_0
    const v2, 0x7f050118

    :goto_0
    invoke-static {v1, v2}, Lcom/telguarder/helpers/ui/UiHelper;->getColorWrapper(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;->headerTextColor:I

    .line 261
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$200(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-virtual {v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->getSpamCommentHeaderData()Lcom/telguarder/features/postCallSpamInfo/SpamCommentHeaderData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-virtual {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->getSpamCommentProgressData()Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$100(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/numberLookup/PhoneEvent;->isSpamCommunityOrange()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData$ProgressState;->ORANGE_REQUEST_IN_PROGRESS:Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData$ProgressState;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData$ProgressState;->RED_REQUEST_IN_PROGRESS:Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData$ProgressState;

    :goto_1
    iput-object v1, v0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;->mProgressState:Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData$ProgressState;

    .line 263
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$200(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-virtual {v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->getSpamCommentProgressData()Lcom/telguarder/features/postCallSpamInfo/SpamCommentProgressData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$000(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    invoke-static {v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->access$000(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$1$PGOyEBYO05WblASY8Ygl5CpjXDo;

    invoke-direct {v1, p0}, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$1$PGOyEBYO05WblASY8Ygl5CpjXDo;-><init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter$1;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
