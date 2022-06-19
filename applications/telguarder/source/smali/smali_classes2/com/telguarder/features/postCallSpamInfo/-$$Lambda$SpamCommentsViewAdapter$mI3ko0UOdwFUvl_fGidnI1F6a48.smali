.class public final synthetic Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$mI3ko0UOdwFUvl_fGidnI1F6a48;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$mI3ko0UOdwFUvl_fGidnI1F6a48;->f$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    iput p2, p0, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$mI3ko0UOdwFUvl_fGidnI1F6a48;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$mI3ko0UOdwFUvl_fGidnI1F6a48;->f$0:Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;

    iget v1, p0, Lcom/telguarder/features/postCallSpamInfo/-$$Lambda$SpamCommentsViewAdapter$mI3ko0UOdwFUvl_fGidnI1F6a48;->f$1:I

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallSpamInfo/SpamCommentsViewAdapter;->lambda$insertListItem$2$SpamCommentsViewAdapter(I)V

    return-void
.end method
