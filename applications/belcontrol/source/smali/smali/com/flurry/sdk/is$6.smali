.class public final Lcom/flurry/sdk/is$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/flurry/sdk/kp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/is;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kp<",
        "Lcom/flurry/sdk/jy;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/flurry/sdk/is;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/is;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/is$6;->a:Lcom/flurry/sdk/is;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/flurry/sdk/ko;)V
    .locals 0

    check-cast p1, Lcom/flurry/sdk/jy;

    iget-boolean p1, p1, Lcom/flurry/sdk/jy;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/flurry/sdk/is$6;->a:Lcom/flurry/sdk/is;

    invoke-static {p1}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/is;)V

    :cond_0
    return-void
.end method
