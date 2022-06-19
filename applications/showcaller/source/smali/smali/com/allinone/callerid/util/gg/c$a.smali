.class Lcom/allinone/callerid/util/gg/c$a;
.super Ljava/lang/Object;
.source "AdmobPDT.java"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/a$c;


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
    iput-object p1, p0, Lcom/allinone/callerid/util/gg/c$a;->b:Lcom/allinone/callerid/util/gg/c;

    iput-object p2, p0, Lcom/allinone/callerid/util/gg/c$a;->a:Lcom/allinone/callerid/util/gg/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/nativead/a;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "tony"

    const-string v1, "onNativeAdLoaded"

    .line 2
    invoke-static {v0, v1}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/c$a;->b:Lcom/allinone/callerid/util/gg/c;

    invoke-static {v0, p1}, Lcom/allinone/callerid/util/gg/c;->a(Lcom/allinone/callerid/util/gg/c;Lcom/google/android/gms/ads/nativead/a;)Lcom/google/android/gms/ads/nativead/a;

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/util/gg/c$a;->a:Lcom/allinone/callerid/util/gg/c$c;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Lcom/allinone/callerid/util/gg/c$c;->a(Lcom/google/android/gms/ads/nativead/a;)V

    :cond_1
    return-void
.end method
