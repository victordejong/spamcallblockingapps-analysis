.class public Lcom/hp/hpl/sparta/DOMException;
.super Ljava/lang/Exception;
.source "DOMException.java"


# instance fields
.field public code:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput-short p1, p0, Lcom/hp/hpl/sparta/DOMException;->code:S

    return-void
.end method
