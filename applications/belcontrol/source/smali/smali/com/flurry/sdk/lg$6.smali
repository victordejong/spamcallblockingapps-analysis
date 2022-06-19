.class public final Lcom/flurry/sdk/lg$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/lr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lr<",
        "Lcom/flurry/sdk/lh;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/lg;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/lg;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/lg$6;->a:Lcom/flurry/sdk/lg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/flurry/sdk/lo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/flurry/sdk/lo<",
            "Lcom/flurry/sdk/lh;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/flurry/sdk/lh$a;

    invoke-direct {p1}, Lcom/flurry/sdk/lh$a;-><init>()V

    return-object p1
.end method
