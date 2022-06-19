.class Lcom/allinone/callerid/util/gg/c$b;
.super Lcom/google/android/gms/ads/b;
.source "AdmobPDT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/util/gg/c;->d(Landroid/content/Context;Ljava/lang/String;Lcom/allinone/callerid/util/gg/c$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/util/gg/c$c;

.field final synthetic b:Lcom/allinone/callerid/util/gg/c;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/util/gg/c;Lcom/allinone/callerid/util/gg/c$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/c$b;->b:Lcom/allinone/callerid/util/gg/c;

    iput-object p2, p0, Lcom/allinone/callerid/util/gg/c$b;->a:Lcom/allinone/callerid/util/gg/c$c;

    invoke-direct {p0}, Lcom/google/android/gms/ads/b;-><init>()V

    return-void
.end method


# virtual methods
.method public m()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/b;->m()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/c$b;->a:Lcom/allinone/callerid/util/gg/c$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/allinone/callerid/util/gg/c$c;->b()V

    :cond_0
    return-void
.end method

.method public n(Lcom/google/android/gms/ads/j;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/b;->n(Lcom/google/android/gms/ads/j;)V

    .line 2
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFailedToLoad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/j;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tony"

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
