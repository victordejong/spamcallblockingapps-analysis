.class public Lcom/mopub/mobileads/FullscreenAdController$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/common/CloseableLayout$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/FullscreenAdController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/content/Intent;Lcom/mopub/mobileads/AdData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/FullscreenAdController;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/FullscreenAdController;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/mobileads/FullscreenAdController$c;->a:Lcom/mopub/mobileads/FullscreenAdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    iget-object v0, p0, Lcom/mopub/mobileads/FullscreenAdController$c;->a:Lcom/mopub/mobileads/FullscreenAdController;

    invoke-static {v0}, Lcom/mopub/mobileads/FullscreenAdController;->b(Lcom/mopub/mobileads/FullscreenAdController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
