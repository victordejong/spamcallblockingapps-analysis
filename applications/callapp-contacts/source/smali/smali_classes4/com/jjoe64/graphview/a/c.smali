.class public final Lcom/jjoe64/graphview/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jjoe64/graphview/a/d;
.implements Ljava/io/Serializable;


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/jjoe64/graphview/a/c;->a:D

    .line 38
    iput-wide p3, p0, Lcom/jjoe64/graphview/a/c;->b:D

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;D)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/jjoe64/graphview/a/c;->a:D

    .line 43
    iput-wide p2, p0, Lcom/jjoe64/graphview/a/c;->b:D

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/jjoe64/graphview/a/c;->a:D

    return-wide v0
.end method

.method public final b()D
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/jjoe64/graphview/a/c;->b:D

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/jjoe64/graphview/a/c;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jjoe64/graphview/a/c;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
