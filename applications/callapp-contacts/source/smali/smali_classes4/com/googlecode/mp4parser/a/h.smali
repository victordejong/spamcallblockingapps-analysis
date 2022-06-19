.class public final Lcom/googlecode/mp4parser/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field c:Ljava/util/Date;

.field public d:Ljava/util/Date;

.field public e:Lcom/googlecode/mp4parser/c/h;

.field public f:D

.field public g:D

.field public h:F

.field public i:J

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "eng"

    .line 26
    iput-object v0, p0, Lcom/googlecode/mp4parser/a/h;->a:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/h;->c:Ljava/util/Date;

    .line 29
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/h;->d:Ljava/util/Date;

    .line 30
    sget-object v0, Lcom/googlecode/mp4parser/c/h;->j:Lcom/googlecode/mp4parser/c/h;

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/h;->e:Lcom/googlecode/mp4parser/c/h;

    const-wide/16 v0, 0x1

    .line 34
    iput-wide v0, p0, Lcom/googlecode/mp4parser/a/h;->i:J

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/googlecode/mp4parser/a/h;->j:I

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 135
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
