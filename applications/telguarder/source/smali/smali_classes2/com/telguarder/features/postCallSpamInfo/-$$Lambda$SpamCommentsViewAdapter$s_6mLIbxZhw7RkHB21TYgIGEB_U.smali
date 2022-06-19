.class public final synthetic Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$s_6mLIbxZhw7RkHB21TYgIGEB_U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$s_6mLIbxZhw7RkHB21TYgIGEB_U;->f$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    iput-boolean p2, p0, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$s_6mLIbxZhw7RkHB21TYgIGEB_U;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$s_6mLIbxZhw7RkHB21TYgIGEB_U;->f$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    iget-boolean v1, p0, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$s_6mLIbxZhw7RkHB21TYgIGEB_U;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->lambda$initData$3$SpamCommentsViewAdapter(Z)V

    return-void
.end method
