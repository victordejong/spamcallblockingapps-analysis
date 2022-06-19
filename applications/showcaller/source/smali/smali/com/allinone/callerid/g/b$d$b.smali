.class Lcom/allinone/callerid/g/b$d$b;
.super Lcom/google/android/gms/ads/b;
.source "EZBlockFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/b$d;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/b$d;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/b$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/b$d$b;->a:Lcom/allinone/callerid/g/b$d;

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

.method public r()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/b;->r()V

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/g/b$d$b;->a:Lcom/allinone/callerid/g/b$d;

    iget-object v0, v0, Lcom/allinone/callerid/g/b$d;->a:Lcom/allinone/callerid/g/b;

    invoke-static {v0}, Lcom/allinone/callerid/g/b;->r2(Lcom/allinone/callerid/g/b;)Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/g/b$d$b;->a:Lcom/allinone/callerid/g/b$d;

    iget-object v0, v0, Lcom/allinone/callerid/g/b$d;->a:Lcom/allinone/callerid/g/b;

    invoke-static {v0}, Lcom/allinone/callerid/g/b;->r2(Lcom/allinone/callerid/g/b;)Landroidx/appcompat/app/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    :cond_0
    return-void
.end method
