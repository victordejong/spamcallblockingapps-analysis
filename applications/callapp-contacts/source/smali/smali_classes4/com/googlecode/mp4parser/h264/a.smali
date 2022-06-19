.class public final Lcom/googlecode/mp4parser/h264/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[C

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/googlecode/mp4parser/h264/a;->a:[C

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 40
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/googlecode/mp4parser/h264/a;->a:[C

    iget v2, p0, Lcom/googlecode/mp4parser/h264/a;->b:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
