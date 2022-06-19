.class Lcom/callerid/block/main/BaseActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/main/BaseActivity;->O(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/callerid/block/main/BaseActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/main/BaseActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/main/BaseActivity$a;->c:Lcom/callerid/block/main/BaseActivity;

    iput-object p2, p0, Lcom/callerid/block/main/BaseActivity$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/callerid/block/main/BaseActivity$a;->c:Lcom/callerid/block/main/BaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callerid/block/main/BaseActivity$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/callerid/block/util/n0;->s1(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
