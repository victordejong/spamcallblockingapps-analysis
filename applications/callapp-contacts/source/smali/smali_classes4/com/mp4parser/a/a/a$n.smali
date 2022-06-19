.class final Lcom/mp4parser/a/a/a$n;
.super Lcom/mp4parser/a/a/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mp4parser/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "n"
.end annotation


# instance fields
.field final synthetic b:Lcom/mp4parser/a/a/a;

.field private c:S

.field private d:S


# direct methods
.method public constructor <init>(Lcom/mp4parser/a/a/a;IJ)V
    .locals 1

    .line 203
    iput-object p1, p0, Lcom/mp4parser/a/a/a$n;->b:Lcom/mp4parser/a/a/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mp4parser/a/a/a$a;-><init>(Lcom/mp4parser/a/a/a;Lcom/mp4parser/a/a/a$a;)V

    int-to-short p1, p2

    .line 204
    iput-short p1, p0, Lcom/mp4parser/a/a/a$n;->c:S

    long-to-int p1, p3

    int-to-short p1, p1

    .line 205
    iput-short p1, p0, Lcom/mp4parser/a/a/a$n;->d:S

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 209
    iget-short v0, p0, Lcom/mp4parser/a/a/a$n;->c:S

    return v0
.end method

.method public final b()J
    .locals 2

    .line 213
    iget-short v0, p0, Lcom/mp4parser/a/a/a$n;->d:S

    int-to-long v0, v0

    return-wide v0
.end method
