.class public final Lcom/flurry/sdk/iu$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/lr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/iu;->a()Lcom/flurry/sdk/kn;
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
        "Lcom/flurry/sdk/iv;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/iu;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/iu;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/iu$1;->a:Lcom/flurry/sdk/iu;

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
            "Lcom/flurry/sdk/iv;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Lcom/flurry/sdk/ln;

    new-instance v0, Lcom/flurry/sdk/iv$a;

    invoke-direct {v0}, Lcom/flurry/sdk/iv$a;-><init>()V

    invoke-direct {p1, v0}, Lcom/flurry/sdk/ln;-><init>(Lcom/flurry/sdk/lo;)V

    return-object p1
.end method
