.class Lcom/unknownphone/callblocker/activity/MainActivity$1;
.super Lcom/google/android/gms/ads/b;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unknownphone/callblocker/activity/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unknownphone/callblocker/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/unknownphone/callblocker/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/unknownphone/callblocker/activity/MainActivity$1;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/b;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/unknownphone/callblocker/activity/MainActivity$1;->a:Lcom/unknownphone/callblocker/activity/MainActivity;

    invoke-static {v0}, Lcom/unknownphone/callblocker/activity/MainActivity;->a(Lcom/unknownphone/callblocker/activity/MainActivity;)Lcom/google/android/gms/ads/i;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/d$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/d$a;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/i;->a(Lcom/google/android/gms/ads/d;)V

    .line 153
    return-void
.end method
