.class public final Lcom/flurry/sdk/iy$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/lr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/iy;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lr<",
        "Ljava/util/List<",
        "Lcom/flurry/sdk/iz;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/flurry/sdk/lo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/lo<",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/iz;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Lcom/flurry/sdk/ln;

    new-instance v0, Lcom/flurry/sdk/iz$a;

    invoke-direct {v0}, Lcom/flurry/sdk/iz$a;-><init>()V

    invoke-direct {p1, v0}, Lcom/flurry/sdk/ln;-><init>(Lcom/flurry/sdk/lo;)V

    return-object p1
.end method
