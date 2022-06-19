.class final Lcom/mopub/common/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/b;->onInitializationFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/common/b;


# direct methods
.method constructor <init>(Lcom/mopub/common/b;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/mopub/common/b$1;->a:Lcom/mopub/common/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/mopub/common/b$1;->a:Lcom/mopub/common/b;

    invoke-static {v0}, Lcom/mopub/common/b;->a(Lcom/mopub/common/b;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/mopub/common/b$1;->a:Lcom/mopub/common/b;

    invoke-static {v0}, Lcom/mopub/common/b;->a(Lcom/mopub/common/b;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V

    .line 45
    iget-object v0, p0, Lcom/mopub/common/b$1;->a:Lcom/mopub/common/b;

    invoke-static {v0}, Lcom/mopub/common/b;->b(Lcom/mopub/common/b;)Lcom/mopub/common/SdkInitializationListener;

    :cond_0
    return-void
.end method
