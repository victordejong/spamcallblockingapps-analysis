.class public final Lcom/flurry/sdk/is$11$1;
.super Lcom/flurry/sdk/mf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/is$11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:Lcom/flurry/sdk/is$11;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/is$11;[B)V
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/is$11$1;->b:Lcom/flurry/sdk/is$11;

    iput-object p2, p0, Lcom/flurry/sdk/is$11$1;->a:[B

    invoke-direct {p0}, Lcom/flurry/sdk/mf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/flurry/sdk/is$11$1;->b:Lcom/flurry/sdk/is$11;

    iget-object v1, v0, Lcom/flurry/sdk/is$11;->c:Lcom/flurry/sdk/is;

    iget-wide v2, v0, Lcom/flurry/sdk/is$11;->a:J

    iget-boolean v0, v0, Lcom/flurry/sdk/is$11;->b:Z

    iget-object v4, p0, Lcom/flurry/sdk/is$11$1;->a:[B

    invoke-static {v1, v2, v3, v0, v4}, Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/is;JZ[B)V

    return-void
.end method
