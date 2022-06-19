.class Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$2;
.super Ljava/lang/Object;
.source "LastPhoneCallSpamActivity.java"

# interfaces
.implements Lcom/telguarder/helpers/ui/UiHelper$LinkEffectCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->setupSpamNumberAndName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;


# direct methods
.method constructor <init>(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$2;->this$0:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionDown()V
    .locals 0

    return-void
.end method

.method public actionMove()V
    .locals 0

    return-void
.end method

.method public actionUp()V
    .locals 6

    .line 297
    iget-object v0, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$2;->this$0:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    invoke-static {v0}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->access$500(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/telguarder/features/numberLookup/PhoneEvent;->calledPhoneNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$2;->this$0:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    invoke-static {v2}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->access$500(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v2

    iget v2, v2, Lcom/telguarder/features/numberLookup/PhoneEvent;->type:I

    int-to-long v2, v2

    iget-object v4, p0, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity$2;->this$0:Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;

    invoke-static {v4}, Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;->access$500(Lcom/telguarder/features/postCallSpamInfo/LastPhoneCallSpamActivity;)Lcom/telguarder/features/numberLookup/PhoneEvent;

    move-result-object v4

    iget-wide v4, v4, Lcom/telguarder/features/numberLookup/PhoneEvent;->dateTimeInMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/telguarder/features/postCallStatistics/LastPhoneCallActivity;->openLastPhoneCall(Landroid/content/Context;Ljava/lang/String;JLjava/lang/Long;Z)V

    return-void
.end method
