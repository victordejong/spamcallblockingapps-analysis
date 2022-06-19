.class public final Lcom/flurry/sdk/lu$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/kp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kp<",
        "Lcom/flurry/sdk/lw;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/lu;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/lu;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/lu$1;->a:Lcom/flurry/sdk/lu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/ko;)V
    .locals 0

    iget-object p1, p0, Lcom/flurry/sdk/lu$1;->a:Lcom/flurry/sdk/lu;

    invoke-static {p1}, Lcom/flurry/sdk/lu;->a(Lcom/flurry/sdk/lu;)V

    return-void
.end method
