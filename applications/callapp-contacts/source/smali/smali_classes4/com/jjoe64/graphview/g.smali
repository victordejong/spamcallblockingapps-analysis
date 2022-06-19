.class public final Lcom/jjoe64/graphview/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual/range {p0 .. p8}, Lcom/jjoe64/graphview/g;->a(DDDD)V

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 4

    .line 38
    iget-wide v0, p0, Lcom/jjoe64/graphview/g;->b:D

    iget-wide v2, p0, Lcom/jjoe64/graphview/g;->a:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public final a(DDDD)V
    .locals 0

    .line 46
    iput-wide p1, p0, Lcom/jjoe64/graphview/g;->a:D

    .line 47
    iput-wide p5, p0, Lcom/jjoe64/graphview/g;->b:D

    .line 48
    iput-wide p3, p0, Lcom/jjoe64/graphview/g;->c:D

    .line 49
    iput-wide p7, p0, Lcom/jjoe64/graphview/g;->d:D

    return-void
.end method

.method public final b()D
    .locals 4

    .line 42
    iget-wide v0, p0, Lcom/jjoe64/graphview/g;->d:D

    iget-wide v2, p0, Lcom/jjoe64/graphview/g;->c:D

    sub-double/2addr v0, v2

    return-wide v0
.end method
