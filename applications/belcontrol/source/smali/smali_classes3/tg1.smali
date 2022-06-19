.class public final synthetic Ltg1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/MoPubFullscreen;


# direct methods
.method public synthetic constructor <init>(Lcom/mopub/mobileads/MoPubFullscreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltg1;->a:Lcom/mopub/mobileads/MoPubFullscreen;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ltg1;->a:Lcom/mopub/mobileads/MoPubFullscreen;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubFullscreen;->k()V

    return-void
.end method
