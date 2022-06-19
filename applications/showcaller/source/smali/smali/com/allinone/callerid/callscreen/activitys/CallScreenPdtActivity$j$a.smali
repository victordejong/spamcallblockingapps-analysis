.class Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j$a;
.super Ljava/lang/Object;
.source "CallScreenPdtActivity.java"

# interfaces
.implements Lcom/allinone/callerid/d/e/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j;->b(Lc/d/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j$a;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenPdtActivity$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/allinone/callerid/callscreen/bean/DownloadInfo;)V
    .locals 0

    .line 1
    sget-boolean p1, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "callscreen"

    const-string p2, "\u97f3\u9891\u6570\u636e\u5e93\u6dfb\u52a0\u6210\u529f"

    .line 2
    invoke-static {p1, p2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
