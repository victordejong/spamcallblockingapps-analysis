.class Lcom/allinone/callerid/g/e$l$b;
.super Lcom/google/android/gms/ads/b;
.source "EZSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/e$l;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/e$l;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/e$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/e$l$b;->a:Lcom/allinone/callerid/g/e$l;

    invoke-direct {p0}, Lcom/google/android/gms/ads/b;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Lcom/google/android/gms/ads/j;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/b;->n(Lcom/google/android/gms/ads/j;)V

    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/b;->q()V

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "AdLoaded"

    const-string v1, "onAdLoaded"

    .line 3
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/b;->r()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/e$l$b;->a:Lcom/allinone/callerid/g/e$l;

    iget-object v1, v0, Lcom/allinone/callerid/g/e$l;->b:Lcom/allinone/callerid/g/e;

    iget-object v0, v0, Lcom/allinone/callerid/g/e$l;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/allinone/callerid/g/e;->Y2(Lcom/allinone/callerid/g/e;Landroid/content/Context;)V

    return-void
.end method
