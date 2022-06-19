.class public Lcom/callapp/contacts/activity/contact/list/search/CommonCallViewHolder;
.super Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/calllog/CallLogViewHolder;-><init>(Lcom/callapp/contacts/activity/base/CallAppRow;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Date;I)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 23
    invoke-static {p1}, Lcom/callapp/contacts/util/date/DateUtils;->b(Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const p1, 0x7f12087a

    .line 25
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p1}, Lcom/callapp/contacts/util/CallLogUtils;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
