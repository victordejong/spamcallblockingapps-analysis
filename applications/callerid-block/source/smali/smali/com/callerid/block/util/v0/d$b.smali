.class Lcom/callerid/block/util/v0/d$b;
.super Lcom/google/android/gms/ads/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/util/v0/d;->b(Landroid/content/Context;Ljava/lang/String;Lcom/callerid/block/util/v0/d$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/util/v0/d$c;


# direct methods
.method constructor <init>(Lcom/callerid/block/util/v0/d;Lcom/callerid/block/util/v0/d$c;)V
    .locals 0

    iput-object p2, p0, Lcom/callerid/block/util/v0/d$b;->a:Lcom/callerid/block/util/v0/d$c;

    invoke-direct {p0}, Lcom/google/android/gms/ads/b;-><init>()V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/ads/b;->k()V

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/util/v0/d$b;->a:Lcom/callerid/block/util/v0/d$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/callerid/block/util/v0/d$c;->b()V

    :cond_0
    return-void
.end method
