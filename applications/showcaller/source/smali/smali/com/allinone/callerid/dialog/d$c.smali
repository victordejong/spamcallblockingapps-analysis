.class Lcom/allinone/callerid/dialog/d$c;
.super Lcom/google/android/gms/ads/b;
.source "DialogLiwuhe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/dialog/d;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/dialog/d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/dialog/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/dialog/d$c;->a:Lcom/allinone/callerid/dialog/d;

    invoke-direct {p0}, Lcom/google/android/gms/ads/b;-><init>()V

    return-void
.end method


# virtual methods
.method public n(Lcom/google/android/gms/ads/j;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/b;->n(Lcom/google/android/gms/ads/j;)V

    .line 2
    iget-object p1, p0, Lcom/allinone/callerid/dialog/d$c;->a:Lcom/allinone/callerid/dialog/d;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public r()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/b;->r()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/dialog/d$c;->a:Lcom/allinone/callerid/dialog/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
