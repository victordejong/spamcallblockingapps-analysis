.class Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;Landroid/app/Activity;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$2;->b:Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/InterstitialAutoCloserLifecycleCallbacks$2;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
