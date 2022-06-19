.class public abstract Lcom/flurry/sdk/le;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public n:J

.field public o:Z

.field public p:I

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/le;->s:I

    return v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/le;->q:Ljava/lang/String;

    iput-object p1, p0, Lcom/flurry/sdk/le;->r:Ljava/lang/String;

    return-void
.end method

.method public a_()V
    .locals 1

    iget v0, p0, Lcom/flurry/sdk/le;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/le;->p:I

    return-void
.end method
