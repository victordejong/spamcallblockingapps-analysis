.class public final synthetic Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$oYtmqAKitz725mAvo7FR2vSmKV4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$oYtmqAKitz725mAvo7FR2vSmKV4;->f$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    iput-object p2, p0, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$oYtmqAKitz725mAvo7FR2vSmKV4;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$oYtmqAKitz725mAvo7FR2vSmKV4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$oYtmqAKitz725mAvo7FR2vSmKV4;->f$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    iget-object v1, p0, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$oYtmqAKitz725mAvo7FR2vSmKV4;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v2, p0, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$oYtmqAKitz725mAvo7FR2vSmKV4;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->lambda$onBindViewHolder$0$SpamCommentsViewAdapter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method
