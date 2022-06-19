.class Lcom/callerid/block/start/MissedCallActivity$f;
.super Lcom/google/android/gms/ads/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callerid/block/start/MissedCallActivity;->d0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callerid/block/start/MissedCallActivity;


# direct methods
.method constructor <init>(Lcom/callerid/block/start/MissedCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/callerid/block/start/MissedCallActivity$f;->a:Lcom/callerid/block/start/MissedCallActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/b;-><init>()V

    return-void
.end method


# virtual methods
.method public k()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/ads/b;->k()V

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/callerid/block/start/MissedCallActivity$f;->a:Lcom/callerid/block/start/MissedCallActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
