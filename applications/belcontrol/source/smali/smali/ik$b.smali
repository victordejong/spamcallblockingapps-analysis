.class public final Lik$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lik;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lik;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lik$a;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lik$b;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lik$b;->a:J

    new-instance p1, Lik$a;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    sget-object p2, Ljk;->c:Ljk;

    goto :goto_0

    :cond_0
    new-instance p2, Ljk;

    invoke-direct {p2, v0, v1, p3, p4}, Ljk;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2}, Lik$a;-><init>(Ljk;)V

    iput-object p1, p0, Lik$b;->b:Lik$a;

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lik$b;->a:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lik$a;
    .locals 0

    iget-object p1, p0, Lik$b;->b:Lik$a;

    return-object p1
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
