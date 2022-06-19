.class Lcom/callerid/block/util/v0/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/nativead/a$c;


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

    iput-object p2, p0, Lcom/callerid/block/util/v0/d$a;->a:Lcom/callerid/block/util/v0/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/nativead/a;)V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/util/v0/d$a;->a:Lcom/callerid/block/util/v0/d$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/callerid/block/util/v0/d$c;->a(Lcom/google/android/gms/ads/nativead/a;)V

    :cond_0
    return-void
.end method
