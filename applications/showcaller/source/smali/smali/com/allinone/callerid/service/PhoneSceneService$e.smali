.class Lcom/allinone/callerid/service/PhoneSceneService$e;
.super Ljava/lang/Object;
.source "PhoneSceneService.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/k/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/service/PhoneSceneService;->y(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/allinone/callerid/service/PhoneSceneService;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/service/PhoneSceneService;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$e;->c:Lcom/allinone/callerid/service/PhoneSceneService;

    iput-object p2, p0, Lcom/allinone/callerid/service/PhoneSceneService$e;->a:Ljava/lang/String;

    iput p3, p0, Lcom/allinone/callerid/service/PhoneSceneService$e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string v1, ""

    .line 1
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "outgoing_contact"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/a1;->u0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "showfloat_outgoing"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    const-string v2, "showfloat_outgoing_contact"

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v3

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v4

    iget-object v5, p0, Lcom/allinone/callerid/service/PhoneSceneService$e;->a:Ljava/lang/String;

    iget v6, p0, Lcom/allinone/callerid/service/PhoneSceneService$e;->b:I

    const/4 v7, 0x0

    move-object v8, p2

    move v9, p1

    invoke-virtual/range {v3 .. v9}, Lcom/allinone/callerid/h/c;->Q0(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;I)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/f0;->g(Landroid/content/Context;)V

    .line 9
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$e;->a:Ljava/lang/String;

    invoke-static {p1, v0, v0}, Lcom/allinone/callerid/util/recorder/f;->B(Ljava/lang/String;II)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string p2, "outgoing_unkonwn"

    invoke-virtual {p1, p2}, Lcom/allinone/callerid/util/q;->d(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/allinone/callerid/h/c;->A0()Lcom/allinone/callerid/h/c;

    move-result-object v1

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/allinone/callerid/service/PhoneSceneService$e;->a:Ljava/lang/String;

    iget v4, p0, Lcom/allinone/callerid/service/PhoneSceneService$e;->b:I

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v6, ""

    invoke-virtual/range {v1 .. v7}, Lcom/allinone/callerid/h/c;->Q0(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;I)V

    .line 12
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/f0;->P(Landroid/content/Context;)V

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/service/PhoneSceneService$e;->a:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-static {p1, p2, v0}, Lcom/allinone/callerid/util/recorder/f;->B(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method
