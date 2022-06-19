.class Lcom/allinone/callerid/d/d/a$a;
.super Ljava/lang/Object;
.source "LatestFragment.java"

# interfaces
.implements Lc/b/a/g/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/d/d/a;->s2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/d/d/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/d/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/d/d/a$a;->a:Lcom/allinone/callerid/d/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/d/d/a$a;->a:Lcom/allinone/callerid/d/d/a;

    invoke-static {v0}, Lcom/allinone/callerid/d/d/a;->a2(Lcom/allinone/callerid/d/d/a;)I

    move-result v0

    new-instance v1, Lcom/allinone/callerid/d/d/a$a$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/d/d/a$a$a;-><init>(Lcom/allinone/callerid/d/d/a$a;)V

    const-string v2, "publish_time"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/allinone/callerid/d/e/c;->a(ILjava/lang/String;ZLcom/allinone/callerid/d/e/c$a;)V

    return-void
.end method
