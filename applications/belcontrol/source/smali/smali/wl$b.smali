.class public Lwl$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lik;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lwl;


# direct methods
.method public constructor <init>(Lwl;)V
    .locals 0

    iput-object p1, p0, Lwl$b;->a:Lwl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lwl;Lwl$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lwl$b;-><init>(Lwl;)V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 3

    iget-object v0, p0, Lwl$b;->a:Lwl;

    invoke-static {v0}, Lwl;->c(Lwl;)Lem;

    move-result-object v0

    iget-object v1, p0, Lwl$b;->a:Lwl;

    invoke-static {v1}, Lwl;->e(Lwl;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lem;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Lik$a;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    new-instance p1, Lik$a;

    new-instance p2, Ljk;

    iget-object v2, p0, Lwl$b;->a:Lwl;

    invoke-static {v2}, Lwl;->b(Lwl;)J

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Ljk;-><init>(JJ)V

    invoke-direct {p1, p2}, Lik$a;-><init>(Ljk;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lwl$b;->a:Lwl;

    invoke-static {v0}, Lwl;->c(Lwl;)Lem;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lem;->b(J)J

    move-result-wide v4

    iget-object v1, p0, Lwl$b;->a:Lwl;

    invoke-static {v1}, Lwl;->b(Lwl;)J

    move-result-wide v2

    const-wide/16 v6, 0x7530

    invoke-static/range {v1 .. v7}, Lwl;->d(Lwl;JJJ)J

    move-result-wide v0

    new-instance v2, Lik$a;

    new-instance v3, Ljk;

    invoke-direct {v3, p1, p2, v0, v1}, Ljk;-><init>(JJ)V

    invoke-direct {v2, v3}, Lik$a;-><init>(Ljk;)V

    return-object v2
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
