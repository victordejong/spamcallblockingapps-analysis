.class Lcom/callerid/block/util/v0/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/callerid/block/h/a/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/util/v0/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/util/v0/b;


# direct methods
.method constructor <init>(Lcom/callerid/block/util/v0/b;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/util/v0/b$a;->a:Lcom/callerid/block/util/v0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/callerid/block/util/w0/a;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object p1

    invoke-static {p1}, Lcom/callerid/block/util/t0;->V(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "wbb"

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "\u6709\u7f51"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/callerid/block/util/v0/b$a;->a:Lcom/callerid/block/util/v0/b;

    invoke-static {p1}, Lcom/callerid/block/util/v0/b;->a(Lcom/callerid/block/util/v0/b;)Lcom/google/android/gms/ads/w/a;

    move-result-object p1

    if-nez p1, :cond_2

    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "\u8bf7\u6c42\u5e7f\u544a"

    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p1, Lcom/google/android/gms/ads/e$a;

    invoke-direct {p1}, Lcom/google/android/gms/ads/e$a;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object p1

    invoke-static {}, Lcom/callerid/block/main/EZCallApplication;->c()Lcom/callerid/block/main/EZCallApplication;

    move-result-object v1

    new-instance v2, Lcom/callerid/block/util/v0/b$a$a;

    invoke-direct {v2, p0}, Lcom/callerid/block/util/v0/b$a$a;-><init>(Lcom/callerid/block/util/v0/b$a;)V

    const-string v3, "ca-app-pub-5825926894918682/2202978006"

    invoke-static {v1, v3, p1, v2}, Lcom/google/android/gms/ads/w/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/e;Lcom/google/android/gms/ads/w/b;)V

    :cond_2
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_4

    const-string p1, "\u7ed3\u675f"

    goto :goto_0

    :cond_3
    sget-boolean p1, Lcom/callerid/block/util/w;->a:Z

    if-eqz p1, :cond_4

    const-string p1, "\u65e0\u7f51"

    :goto_0
    invoke-static {v0, p1}, Lcom/callerid/block/util/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
