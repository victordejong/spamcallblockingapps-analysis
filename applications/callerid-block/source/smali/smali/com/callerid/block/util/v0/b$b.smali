.class Lcom/callerid/block/util/v0/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/util/v0/b;->f(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/callerid/block/util/v0/b;


# direct methods
.method constructor <init>(Lcom/callerid/block/util/v0/b;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/util/v0/b$b;->b:Lcom/callerid/block/util/v0/b;

    iput-object p2, p0, Lcom/callerid/block/util/v0/b$b;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/callerid/block/util/w0/a;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->V(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "wbb"

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "\u5c55\u793a\u63d2\u5c4f\u5e7f\u544a\u6709\u7f51"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/util/v0/b$b;->b:Lcom/callerid/block/util/v0/b;

    invoke-static {p1}, Lcom/callerid/block/util/v0/b;->a(Lcom/callerid/block/util/v0/b;)Lcom/google/android/gms/ads/w/a;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/callerid/block/util/v0/b$b;->b:Lcom/callerid/block/util/v0/b;

    invoke-static {p1}, Lcom/callerid/block/util/v0/b;->a(Lcom/callerid/block/util/v0/b;)Lcom/google/android/gms/ads/w/a;

    move-result-object p1

    iget-object v0, p0, Lcom/callerid/block/util/v0/b$b;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/w/a;->d(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_2

    const-string p1, "\u65e0\u7f51"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/callerid/block/util/d0;->f()V

    :cond_3
    return-void
.end method
