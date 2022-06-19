.class public Lcom/applovin/impl/sdk/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:D

.field private final b:D

.field private final c:J


# direct methods
.method public constructor <init>(DDJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/applovin/impl/sdk/r;->a:D

    iput-wide p3, p0, Lcom/applovin/impl/sdk/r;->b:D

    iput-wide p5, p0, Lcom/applovin/impl/sdk/r;->c:J

    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/r;->a:D

    return-wide v0
.end method

.method public b()D
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/r;->b:D

    return-wide v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/r;->c:J

    return-wide v0
.end method
