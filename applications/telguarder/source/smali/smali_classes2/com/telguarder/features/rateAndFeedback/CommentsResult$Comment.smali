.class public Lcom/telguarder/features/rateAndFeedback/CommentsResult$Comment;
.super Ljava/lang/Object;
.source "CommentsResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/rateAndFeedback/CommentsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Comment"
.end annotation


# instance fields
.field public country:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field final synthetic this$0:Lcom/telguarder/features/rateAndFeedback/CommentsResult;

.field public timeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/telguarder/features/rateAndFeedback/CommentsResult;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/telguarder/features/rateAndFeedback/CommentsResult$Comment;->this$0:Lcom/telguarder/features/rateAndFeedback/CommentsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
