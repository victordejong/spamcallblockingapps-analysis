.class Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$1;
.super Ljava/lang/Object;
.source "SpamCommentSubmitRowViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->setupReportingFeature()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;


# direct methods
.method constructor <init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->access$000(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;Z)V

    .line 89
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;

    invoke-virtual {p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->reportSpamCall()V

    .line 90
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$1;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;

    invoke-static {p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->access$100(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;)V

    return-void
.end method
