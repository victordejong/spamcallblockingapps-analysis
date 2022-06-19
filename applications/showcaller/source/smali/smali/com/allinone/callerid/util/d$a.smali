.class Lcom/allinone/callerid/util/d$a;
.super Ljava/lang/Object;
.source "CallerUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/d;->h(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/d$a;->d:Ljava/lang/String;

    iput-wide p2, p0, Lcom/allinone/callerid/util/d$a;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->H2(Ljava/lang/Boolean;)V

    .line 2
    new-instance v0, Lcom/allinone/callerid/bean/BlockCall;

    invoke-direct {v0}, Lcom/allinone/callerid/bean/BlockCall;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/allinone/callerid/util/d$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/bean/BlockCall;->setNumber(Ljava/lang/String;)V

    .line 4
    iget-wide v1, p0, Lcom/allinone/callerid/util/d$a;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/allinone/callerid/bean/BlockCall;->setTime(J)V

    .line 5
    invoke-static {}, Lcom/allinone/callerid/f/b;->a()Lcom/allinone/callerid/f/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/allinone/callerid/f/b;->c(Lcom/allinone/callerid/bean/BlockCall;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
