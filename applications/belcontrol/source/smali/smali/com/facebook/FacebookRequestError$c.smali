.class public Lcom/facebook/FacebookRequestError$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookRequestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/FacebookRequestError$c;->a:I

    iput p2, p0, Lcom/facebook/FacebookRequestError$c;->b:I

    return-void
.end method

.method public synthetic constructor <init>(IILcom/facebook/FacebookRequestError$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/FacebookRequestError$c;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    iget v0, p0, Lcom/facebook/FacebookRequestError$c;->a:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/facebook/FacebookRequestError$c;->b:I

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
