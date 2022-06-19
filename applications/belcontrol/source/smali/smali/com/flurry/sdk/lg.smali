.class public abstract Lcom/flurry/sdk/lg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/lg$a;
    }
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/kp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kp<",
            "Lcom/flurry/sdk/jy;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/flurry/sdk/li;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "defaultDataKey_"

    iput-object v0, p0, Lcom/flurry/sdk/lg;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/lg;->d:Ljava/util/Set;

    new-instance v0, Lcom/flurry/sdk/lg$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lg$1;-><init>(Lcom/flurry/sdk/lg;)V

    iput-object v0, p0, Lcom/flurry/sdk/lg;->a:Lcom/flurry/sdk/kp;

    iput-object p2, p0, Lcom/flurry/sdk/lg;->b:Ljava/lang/String;

    invoke-static {}, Lcom/flurry/sdk/kq;->a()Lcom/flurry/sdk/kq;

    move-result-object p2

    iget-object v0, p0, Lcom/flurry/sdk/lg;->a:Lcom/flurry/sdk/kp;

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    invoke-virtual {p2, v1, v0}, Lcom/flurry/sdk/kq;->a(Ljava/lang/String;Lcom/flurry/sdk/kp;)V

    new-instance p2, Lcom/flurry/sdk/lg$2;

    invoke-direct {p2, p0, p1}, Lcom/flurry/sdk/lg$2;-><init>(Lcom/flurry/sdk/lg;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/flurry/sdk/lg$8;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/lg$8;-><init>(Lcom/flurry/sdk/lg;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    new-instance p3, Lcom/flurry/sdk/lg$7;

    invoke-direct {p3, p0, p1, p2}, Lcom/flurry/sdk/lg$7;-><init>(Lcom/flurry/sdk/lg;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract a([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method public final b()V
    .locals 2

    new-instance v0, Lcom/flurry/sdk/lg$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/lg$4;-><init>(Lcom/flurry/sdk/lg;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/lg$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/flurry/sdk/lg$3;-><init>(Lcom/flurry/sdk/lg;[BLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/sdk/kg;->a()Lcom/flurry/sdk/kg;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/kg;->b(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/flurry/sdk/lg;->b()V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x6

    iget-object p2, p0, Lcom/flurry/sdk/lg;->b:Ljava/lang/String;

    const-string p3, "Report that has to be sent is EMPTY or NULL"

    invoke-static {p1, p2, p3}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/flurry/sdk/lg;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
