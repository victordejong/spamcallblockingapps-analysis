.class public final Lcom/flurry/sdk/is$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/lr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/is;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lr<",
        "Lcom/flurry/sdk/iq;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/is;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/is;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/is$7;->a:Lcom/flurry/sdk/is;

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
            "Lcom/flurry/sdk/iq;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/flurry/sdk/iq$a;

    invoke-direct {p1}, Lcom/flurry/sdk/iq$a;-><init>()V

    return-object p1
.end method
