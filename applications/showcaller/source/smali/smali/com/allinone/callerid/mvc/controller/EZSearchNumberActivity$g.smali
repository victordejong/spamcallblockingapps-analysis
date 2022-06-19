.class Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$g;
.super Ljava/lang/Object;
.source "EZSearchNumberActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity$g;->d:Lcom/allinone/callerid/mvc/controller/EZSearchNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/a1;->X()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2, v3}, Lcom/allinone/callerid/util/i;->r(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/a1;->j0()I

    move-result v0

    const-string v2, "tony"

    if-nez v0, :cond_1

    .line 4
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_0

    const-string v3, "\u5f53\u5929\u67e5\u8be2\u4e00\u6b21"

    .line 5
    invoke-static {v2, v3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    const-string v3, "search_number_once"

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_3

    .line 7
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_2

    const-string v3, "\u5f53\u5929\u67e5\u8be2\u4e24\u6b21"

    .line 8
    invoke-static {v2, v3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    const-string v3, "search_number_twice"

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_3
    sget-boolean v3, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v3, :cond_4

    const-string v3, "\u5f53\u5929\u67e5\u8be2\u4e09\u6b21\u53ca\u4ee5\u4e0a"

    .line 11
    invoke-static {v2, v3}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v2

    const-string v3, "search_number_more"

    invoke-virtual {v2, v3}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :goto_0
    add-int/2addr v0, v1

    .line 13
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->O1(I)V

    goto :goto_1

    .line 14
    :cond_5
    invoke-static {v1}, Lcom/allinone/callerid/util/a1;->O1(I)V

    .line 15
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/allinone/callerid/util/a1;->B1(J)V

    return-void
.end method
