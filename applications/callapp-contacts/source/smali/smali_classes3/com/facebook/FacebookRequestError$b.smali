.class final Lcom/facebook/FacebookRequestError$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookRequestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/facebook/FacebookRequestError$b;->a:I

    .line 75
    iput p2, p0, Lcom/facebook/FacebookRequestError$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/facebook/FacebookRequestError$1;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/facebook/FacebookRequestError$b;-><init>(II)V

    return-void
.end method
