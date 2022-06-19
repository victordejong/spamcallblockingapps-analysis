.class Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$4;
.super Ljava/lang/Object;
.source "SpamCommentSubmitRowViewHolder.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->setupReasonSpinner()V
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

    .line 188
    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$4;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 191
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$4;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;

    invoke-static {p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->access$200(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 195
    iget-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder$4;->this$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;

    invoke-static {p1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;->access$200(Lcom/telguarder/features/postCallSpamInfo/SpamCommentSubmitRowViewHolder;)V

    return-void
.end method
