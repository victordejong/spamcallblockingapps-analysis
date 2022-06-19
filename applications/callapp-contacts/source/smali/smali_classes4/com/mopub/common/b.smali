.class final Lcom/mopub/common/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/SdkInitializationListener;


# instance fields
.field private a:Lcom/mopub/common/SdkInitializationListener;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/mopub/common/SdkInitializationListener;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    iput-object p1, p0, Lcom/mopub/common/b;->a:Lcom/mopub/common/SdkInitializationListener;

    .line 33
    iput p2, p0, Lcom/mopub/common/b;->b:I

    return-void
.end method

.method static synthetic a(Lcom/mopub/common/b;)Lcom/mopub/common/SdkInitializationListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/mopub/common/b;->a:Lcom/mopub/common/SdkInitializationListener;

    return-object p0
.end method

.method static synthetic b(Lcom/mopub/common/b;)Lcom/mopub/common/SdkInitializationListener;
    .locals 1

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/mopub/common/b;->a:Lcom/mopub/common/SdkInitializationListener;

    return-object v0
.end method


# virtual methods
.method public final onInitializationFinished()V
    .locals 2

    .line 38
    iget v0, p0, Lcom/mopub/common/b;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mopub/common/b;->b:I

    if-gtz v0, :cond_0

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mopub/common/b$1;

    invoke-direct {v1, p0}, Lcom/mopub/common/b$1;-><init>(Lcom/mopub/common/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
