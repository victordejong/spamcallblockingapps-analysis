.class Lcom/allinone/callerid/start/AnsweredActivity$b;
.super Ljava/lang/Object;
.source "AnsweredActivity.java"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/start/AnsweredActivity;->j0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/start/AnsweredActivity;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/start/AnsweredActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/start/AnsweredActivity$b;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/nativead/a;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/gg/a;->a()Lcom/allinone/callerid/util/gg/a;

    move-result-object v0

    iput-object p1, v0, Lcom/allinone/callerid/util/gg/a;->b:Lcom/google/android/gms/ads/nativead/a;

    const-string p1, "wjjj"

    const-string v0, "\u6210\u529f"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    const-class v1, Lcom/allinone/callerid/dialog/DialogMissed;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/start/AnsweredActivity$b;->a:Lcom/allinone/callerid/start/AnsweredActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
