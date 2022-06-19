.class public Lcom/callerid/block/util/s0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/lang/String; = "hangup_incoming_answer"

.field public static b:Ljava/lang/String; = "hangup_outgoing_notanswer"

.field public static c:Ljava/lang/String; = "hangup_incoming_notanswer"

.field public static d:Ljava/lang/String; = "recommend_incoming_answer"

.field public static e:Ljava/lang/String; = "recommend_outgoing_notanswer"

.field public static f:Ljava/lang/String; = "recommend_incoming_notanswer"

.field public static g:Ljava/lang/String; = "hangup_incoming_notanswer_click_close"

.field public static h:Ljava/lang/String; = "download_by_english"

.field public static i:Ljava/lang/String; = "downloadb_by_hi"

.field public static j:Ljava/lang/String; = "downloadb_by_ar"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 5

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/callerid/block/main/EZCallApplication;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "hi"

    const-string v3, "ar"

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const-string v0, "testdownloadlang"

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {v0, v2}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    sget-object v1, Lcom/callerid/block/util/s0;->i:Ljava/lang/String;

    goto :goto_1

    :pswitch_1
    const-string v1, "english"

    invoke-static {v0, v1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    sget-object v1, Lcom/callerid/block/util/s0;->h:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/callerid/block/util/k;->g(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    invoke-static {v0, v3}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/callerid/block/util/k;->c()Lcom/callerid/block/util/k;

    move-result-object v0

    sget-object v1, Lcom/callerid/block/util/s0;->j:Ljava/lang/String;

    goto :goto_1

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0xc31 -> :sswitch_2
        0xca9 -> :sswitch_1
        0xd01 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
