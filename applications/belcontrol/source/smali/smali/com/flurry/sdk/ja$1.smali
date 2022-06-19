.class public final Lcom/flurry/sdk/ja$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/lr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ja;
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
        "Lcom/flurry/sdk/jb;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/ja;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ja;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/ja$1;->a:Lcom/flurry/sdk/ja;

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
            "Lcom/flurry/sdk/jb;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Lcom/flurry/sdk/ln;

    new-instance v0, Lcom/flurry/sdk/jb$a;

    invoke-direct {v0}, Lcom/flurry/sdk/jb$a;-><init>()V

    invoke-direct {p1, v0}, Lcom/flurry/sdk/ln;-><init>(Lcom/flurry/sdk/lo;)V

    return-object p1
.end method
