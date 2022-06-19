.class Lcom/allinone/callerid/g/b$d;
.super Ljava/lang/Object;
.source "EZBlockFragment.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/b;->u2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/b;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/b$d;->a:Lcom/allinone/callerid/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/allinone/callerid/g/b$d;->a:Lcom/allinone/callerid/g/b;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/allinone/callerid/g/b;->e2(Lcom/allinone/callerid/g/b;Z)Z

    .line 2
    new-instance p1, Lcom/google/android/gms/ads/d$a;

    iget-object v1, p0, Lcom/allinone/callerid/g/b$d;->a:Lcom/allinone/callerid/g/b;

    invoke-static {v1}, Lcom/allinone/callerid/g/b;->o2(Lcom/allinone/callerid/g/b;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "ca-app-pub-5825926894918682/1530656055"

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/ads/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/allinone/callerid/g/b$d$a;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/b$d$a;-><init>(Lcom/allinone/callerid/g/b$d;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/d$a;->c(Lcom/google/android/gms/ads/nativead/a$c;)Lcom/google/android/gms/ads/d$a;

    .line 4
    new-instance v1, Lcom/google/android/gms/ads/t$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/t$a;-><init>()V

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/t$a;->b(Z)Lcom/google/android/gms/ads/t$a;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/t$a;->a()Lcom/google/android/gms/ads/t;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/ads/formats/c$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/formats/c$a;-><init>()V

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/formats/c$a;->h(Lcom/google/android/gms/ads/t;)Lcom/google/android/gms/ads/formats/c$a;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/c$a;->a()Lcom/google/android/gms/ads/formats/c;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/d$a;->f(Lcom/google/android/gms/ads/formats/c;)Lcom/google/android/gms/ads/d$a;

    .line 11
    iget-object v0, p0, Lcom/allinone/callerid/g/b$d;->a:Lcom/allinone/callerid/g/b;

    new-instance v1, Lcom/allinone/callerid/g/b$d$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/g/b$d$b;-><init>(Lcom/allinone/callerid/g/b$d;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/d$a;->e(Lcom/google/android/gms/ads/b;)Lcom/google/android/gms/ads/d$a;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object p1

    .line 13
    invoke-static {v0, p1}, Lcom/allinone/callerid/g/b;->j2(Lcom/allinone/callerid/g/b;Lcom/google/android/gms/ads/d;)Lcom/google/android/gms/ads/d;

    .line 14
    iget-object p1, p0, Lcom/allinone/callerid/g/b$d;->a:Lcom/allinone/callerid/g/b;

    invoke-static {p1}, Lcom/allinone/callerid/g/b;->i2(Lcom/allinone/callerid/g/b;)Lcom/google/android/gms/ads/d;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/e$a;-><init>()V

    const-class v1, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/e$a;->b(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/e$a;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/d;->b(Lcom/google/android/gms/ads/e;)V

    :cond_0
    return-void
.end method
