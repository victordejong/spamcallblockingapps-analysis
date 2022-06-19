.class final Lcom/mp4parser/a/a/a$c;
.super Lcom/mp4parser/a/a/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mp4parser/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/mp4parser/a/a/a;

.field private c:B

.field private d:I


# direct methods
.method public constructor <init>(Lcom/mp4parser/a/a/a;IJ)V
    .locals 1

    .line 149
    iput-object p1, p0, Lcom/mp4parser/a/a/a$c;->b:Lcom/mp4parser/a/a/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mp4parser/a/a/a$a;-><init>(Lcom/mp4parser/a/a/a;Lcom/mp4parser/a/a/a$a;)V

    int-to-byte p1, p2

    .line 150
    iput-byte p1, p0, Lcom/mp4parser/a/a/a$c;->c:B

    long-to-int p1, p3

    .line 151
    iput p1, p0, Lcom/mp4parser/a/a/a$c;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 155
    iget-byte v0, p0, Lcom/mp4parser/a/a/a$c;->c:B

    return v0
.end method

.method public final b()J
    .locals 2

    .line 159
    iget v0, p0, Lcom/mp4parser/a/a/a$c;->d:I

    int-to-long v0, v0

    return-wide v0
.end method
