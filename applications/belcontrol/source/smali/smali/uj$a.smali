.class public Luj$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lik;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Luj$e;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(Luj$e;JJJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luj$a;->a:Luj$e;

    iput-wide p2, p0, Luj$a;->b:J

    iput-wide p4, p0, Luj$a;->c:J

    iput-wide p6, p0, Luj$a;->d:J

    iput-wide p8, p0, Luj$a;->e:J

    iput-wide p10, p0, Luj$a;->f:J

    iput-wide p12, p0, Luj$a;->g:J

    return-void
.end method

.method public static synthetic a(Luj$a;)J
    .locals 2

    iget-wide v0, p0, Luj$a;->c:J

    return-wide v0
.end method

.method public static synthetic b(Luj$a;)J
    .locals 2

    iget-wide v0, p0, Luj$a;->d:J

    return-wide v0
.end method

.method public static synthetic c(Luj$a;)J
    .locals 2

    iget-wide v0, p0, Luj$a;->e:J

    return-wide v0
.end method

.method public static synthetic e(Luj$a;)J
    .locals 2

    iget-wide v0, p0, Luj$a;->f:J

    return-wide v0
.end method

.method public static synthetic f(Luj$a;)J
    .locals 2

    iget-wide v0, p0, Luj$a;->g:J

    return-wide v0
.end method


# virtual methods
.method public g(J)J
    .locals 1

    iget-object v0, p0, Luj$a;->a:Luj$e;

    invoke-interface {v0, p1, p2}, Luj$e;->a(J)J

    return-wide p1
.end method

.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Luj$a;->b:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lik$a;
    .locals 13

    iget-object v0, p0, Luj$a;->a:Luj$e;

    invoke-interface {v0, p1, p2}, Luj$e;->a(J)J

    iget-wide v3, p0, Luj$a;->c:J

    iget-wide v5, p0, Luj$a;->d:J

    iget-wide v7, p0, Luj$a;->e:J

    iget-wide v9, p0, Luj$a;->f:J

    iget-wide v11, p0, Luj$a;->g:J

    move-wide v1, p1

    invoke-static/range {v1 .. v12}, Luj$d;->h(JJJJJJ)J

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
