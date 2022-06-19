.class Lcom/callerid/block/util/v0/b$a$a$a;
.super Lcom/google/android/gms/ads/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/util/v0/b$a$a;->c(Lcom/google/android/gms/ads/w/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/callerid/block/util/v0/b$a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/ads/i;->a()V

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    const-class v2, Lcom/callerid/block/main/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/ads/a;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/i;->b(Lcom/google/android/gms/ads/a;)V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/ads/i;->c()V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/ads/i;->d()V

    return-void
.end method
