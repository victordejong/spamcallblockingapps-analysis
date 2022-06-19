.class Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;->c(Lcom/google/android/gms/ads/z/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;


# direct methods
.method constructor <init>(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n$b;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/z/a;)V
    .locals 1

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "wbb"

    const-string v0, "onUserEarnedReward"

    invoke-static {p1, v0}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n$b;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->j0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;Z)Z

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n$b;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->k0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n$b;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object v0, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->y:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;

    invoke-static {p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->i0(Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;->a(Z)V

    iget-object p1, p0, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n$b;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$n;->a:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;

    iget-object p1, p1, Lcom/callerid/block/mvc/controller/EZSearchNumberActivity;->y:Lcom/callerid/block/mvc/controller/EZSearchNumberActivity$r;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
