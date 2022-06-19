.class public final Lcom/dropbox/core/v1/DbxEntry$a$a;
.super Lcom/dropbox/core/util/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static c:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/DbxEntry$a$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:D

.field public final b:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 560
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$File$Location$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$File$Location$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry$a$a;->c:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 555
    invoke-direct {p0}, Lcom/dropbox/core/util/c;-><init>()V

    .line 556
    iput-wide p1, p0, Lcom/dropbox/core/v1/DbxEntry$a$a;->a:D

    .line 557
    iput-wide p3, p0, Lcom/dropbox/core/v1/DbxEntry$a$a;->b:D

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/core/util/b;)V
    .locals 3

    const-string v0, "latitude"

    .line 584
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object v0

    iget-wide v1, p0, Lcom/dropbox/core/v1/DbxEntry$a$a;->a:D

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/util/b;->a(D)Lcom/dropbox/core/util/b;

    const-string v0, "longitude"

    .line 585
    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/b;->b(Ljava/lang/String;)Lcom/dropbox/core/util/b;

    move-result-object p1

    iget-wide v0, p0, Lcom/dropbox/core/v1/DbxEntry$a$a;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/dropbox/core/util/b;->a(D)Lcom/dropbox/core/util/b;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 601
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p1, Lcom/dropbox/core/v1/DbxEntry$a$a;

    .line 1606
    iget-wide v1, p0, Lcom/dropbox/core/v1/DbxEntry$a$a;->a:D

    iget-wide v3, p1, Lcom/dropbox/core/v1/DbxEntry$a$a;->a:D

    const/4 v5, 0x1

    cmpl-double v6, v1, v3

    if-eqz v6, :cond_0

    :goto_0
    const/4 p1, 0x0

    goto :goto_1

    .line 1607
    :cond_0
    iget-wide v1, p0, Lcom/dropbox/core/v1/DbxEntry$a$a;->b:D

    iget-wide v3, p1, Lcom/dropbox/core/v1/DbxEntry$a$a;->b:D

    cmpl-double p1, v1, v3

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    return v5

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 590
    iget-wide v0, p0, Lcom/dropbox/core/v1/DbxEntry$a$a;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 591
    iget-wide v2, p0, Lcom/dropbox/core/v1/DbxEntry$a$a;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long v5, v0, v4

    xor-long/2addr v0, v5

    long-to-int v1, v0

    add-int/lit16 v1, v1, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method
