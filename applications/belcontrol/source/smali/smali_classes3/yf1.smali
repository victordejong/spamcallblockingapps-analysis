.class public Lyf1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/common/SdkInitializationListener;


# instance fields
.field public a:Lcom/mopub/common/SdkInitializationListener;

.field public b:I


# direct methods
.method public constructor <init>(Lcom/mopub/common/SdkInitializationListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lyf1;->a:Lcom/mopub/common/SdkInitializationListener;

    iput p2, p0, Lyf1;->b:I

    return-void
.end method

.method public static synthetic a(Lyf1;)Lcom/mopub/common/SdkInitializationListener;
    .locals 0

    iget-object p0, p0, Lyf1;->a:Lcom/mopub/common/SdkInitializationListener;

    return-object p0
.end method

.method public static synthetic b(Lyf1;Lcom/mopub/common/SdkInitializationListener;)Lcom/mopub/common/SdkInitializationListener;
    .locals 0

    iput-object p1, p0, Lyf1;->a:Lcom/mopub/common/SdkInitializationListener;

    return-object p1
.end method


# virtual methods
.method public onInitializationFinished()V
    .locals 2

    iget v0, p0, Lyf1;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lyf1;->b:I

    if-gtz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lyf1$a;

    invoke-direct {v1, p0}, Lyf1$a;-><init>(Lyf1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
