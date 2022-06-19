.class public Lyf1$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyf1;->onInitializationFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lyf1;


# direct methods
.method public constructor <init>(Lyf1;)V
    .locals 0

    iput-object p1, p0, Lyf1$a;->a:Lyf1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lyf1$a;->a:Lyf1;

    invoke-static {v0}, Lyf1;->a(Lyf1;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyf1$a;->a:Lyf1;

    invoke-static {v0}, Lyf1;->a(Lyf1;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V

    iget-object v0, p0, Lyf1$a;->a:Lyf1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lyf1;->b(Lyf1;Lcom/mopub/common/SdkInitializationListener;)Lcom/mopub/common/SdkInitializationListener;

    :cond_0
    return-void
.end method
