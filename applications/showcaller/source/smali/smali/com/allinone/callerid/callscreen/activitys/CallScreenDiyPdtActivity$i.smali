.class Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;
.super Ljava/lang/Object;
.source "CallScreenDiyPdtActivity.java"

# interfaces
.implements Lcom/allinone/callerid/i/a/e/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->p0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lcom/google/android/gms/ads/d$a;

    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ca-app-pub-5825926894918682/1530656055"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/ads/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i$a;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/d$a;->c(Lcom/google/android/gms/ads/nativead/a$c;)Lcom/google/android/gms/ads/d$a;

    .line 3
    new-instance v0, Lcom/google/android/gms/ads/t$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/t$a;-><init>()V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/t$a;->b(Z)Lcom/google/android/gms/ads/t$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/ads/t$a;->a()Lcom/google/android/gms/ads/t;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/google/android/gms/ads/formats/c$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/formats/c$a;-><init>()V

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/formats/c$a;->h(Lcom/google/android/gms/ads/t;)Lcom/google/android/gms/ads/formats/c$a;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/c$a;->a()Lcom/google/android/gms/ads/formats/c;

    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/d$a;->f(Lcom/google/android/gms/ads/formats/c;)Lcom/google/android/gms/ads/d$a;

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    new-instance v1, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i$b;-><init>(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/d$a;->e(Lcom/google/android/gms/ads/b;)Lcom/google/android/gms/ads/d$a;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object p1

    .line 12
    invoke-static {v0, p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->c0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;Lcom/google/android/gms/ads/d;)Lcom/google/android/gms/ads/d;

    .line 13
    iget-object p1, p0, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity$i;->a:Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;

    invoke-static {p1}, Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;->b0(Lcom/allinone/callerid/callscreen/activitys/CallScreenDiyPdtActivity;)Lcom/google/android/gms/ads/d;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/e$a;-><init>()V

    const-class v1, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/e$a;->b(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/e$a;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/d;->b(Lcom/google/android/gms/ads/e;)V

    :cond_0
    return-void
.end method
