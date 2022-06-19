.class final Lcom/mp4parser/a/a/a$l;
.super Lcom/mp4parser/a/a/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mp4parser/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field final synthetic b:Lcom/mp4parser/a/a/a;

.field private c:S

.field private d:I


# direct methods
.method public constructor <init>(Lcom/mp4parser/a/a/a;IJ)V
    .locals 1

    .line 221
    iput-object p1, p0, Lcom/mp4parser/a/a/a$l;->b:Lcom/mp4parser/a/a/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mp4parser/a/a/a$a;-><init>(Lcom/mp4parser/a/a/a;Lcom/mp4parser/a/a/a$a;)V

    int-to-short p1, p2

    .line 222
    iput-short p1, p0, Lcom/mp4parser/a/a/a$l;->c:S

    long-to-int p1, p3

    .line 223
    iput p1, p0, Lcom/mp4parser/a/a/a$l;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 227
    iget-short v0, p0, Lcom/mp4parser/a/a/a$l;->c:S

    return v0
.end method

.method public final b()J
    .locals 2

    .line 231
    iget v0, p0, Lcom/mp4parser/a/a/a$l;->d:I

    int-to-long v0, v0

    return-wide v0
.end method
