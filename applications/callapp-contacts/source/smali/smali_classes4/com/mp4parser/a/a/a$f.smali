.class final Lcom/mp4parser/a/a/a$f;
.super Lcom/mp4parser/a/a/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mp4parser/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic b:Lcom/mp4parser/a/a/a;

.field private c:I

.field private d:B


# direct methods
.method public constructor <init>(Lcom/mp4parser/a/a/a;IJ)V
    .locals 1

    .line 257
    iput-object p1, p0, Lcom/mp4parser/a/a/a$f;->b:Lcom/mp4parser/a/a/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mp4parser/a/a/a$a;-><init>(Lcom/mp4parser/a/a/a;Lcom/mp4parser/a/a/a$a;)V

    .line 258
    iput p2, p0, Lcom/mp4parser/a/a/a$f;->c:I

    long-to-int p1, p3

    int-to-byte p1, p1

    .line 259
    iput-byte p1, p0, Lcom/mp4parser/a/a/a$f;->d:B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/mp4parser/a/a/a$f;->c:I

    return v0
.end method

.method public final b()J
    .locals 2

    .line 267
    iget-byte v0, p0, Lcom/mp4parser/a/a/a$f;->d:B

    int-to-long v0, v0

    return-wide v0
.end method
