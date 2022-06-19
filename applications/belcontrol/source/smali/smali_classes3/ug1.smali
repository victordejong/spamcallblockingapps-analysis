.class public final synthetic Lug1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/MoPubInline;


# direct methods
.method public synthetic constructor <init>(Lcom/mopub/mobileads/MoPubInline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lug1;->a:Lcom/mopub/mobileads/MoPubInline;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lug1;->a:Lcom/mopub/mobileads/MoPubInline;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInline;->m()V

    return-void
.end method
