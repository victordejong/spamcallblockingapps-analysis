.class public Lcom/google/firebase/datatransport/TransportRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/g;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lz4/d;)Lr2/g;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$0(Lz4/d;)Lr2/g;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lz4/d;)Lr2/g;
    .locals 1

    .line 1
    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Lz4/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lu2/m;->b(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lu2/m;->a()Lu2/m;

    move-result-object p0

    sget-object v0, Ls2/a;->e:Ls2/a;

    invoke-virtual {p0, v0}, Lu2/m;->c(Lu2/d;)Lr2/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz4/c<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lr2/g;

    .line 2
    invoke-static {v0}, Lz4/c;->a(Ljava/lang/Class;)Lz4/c$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 3
    new-instance v2, Lz4/m;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lz4/m;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v0, v2}, Lz4/c$b;->a(Lz4/m;)Lz4/c$b;

    sget-object v1, Lcom/google/android/gms/internal/ads/a;->a:Lcom/google/android/gms/internal/ads/a;

    .line 5
    invoke-virtual {v0, v1}, Lz4/c$b;->d(Lz4/f;)Lz4/c$b;

    .line 6
    invoke-virtual {v0}, Lz4/c$b;->b()Lz4/c;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
