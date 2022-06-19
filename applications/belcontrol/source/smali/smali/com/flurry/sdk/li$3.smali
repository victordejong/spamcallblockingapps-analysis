.class public final Lcom/flurry/sdk/li$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/lr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/li;->a(Ljava/lang/String;[B)V
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
.field public final synthetic a:Lcom/flurry/sdk/li;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/li;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/li$3;->a:Lcom/flurry/sdk/li;

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
