.class abstract Lcom/mp4parser/a/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mp4parser/a/a/a$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mp4parser/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mp4parser/a/a/a;


# direct methods
.method private constructor <init>(Lcom/mp4parser/a/a/a;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/mp4parser/a/a/a$a;->a:Lcom/mp4parser/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mp4parser/a/a/a;Lcom/mp4parser/a/a/a$a;)V
    .locals 0

    .line 325
    invoke-direct {p0, p1}, Lcom/mp4parser/a/a/a$a;-><init>(Lcom/mp4parser/a/a/a;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 335
    :cond_1
    check-cast p1, Lcom/mp4parser/a/a/a$j;

    .line 337
    invoke-virtual {p0}, Lcom/mp4parser/a/a/a$a;->a()I

    move-result v2

    invoke-interface {p1}, Lcom/mp4parser/a/a/a$j;->a()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    .line 340
    :cond_2
    invoke-virtual {p0}, Lcom/mp4parser/a/a/a$a;->b()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/mp4parser/a/a/a$j;->b()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "P("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mp4parser/a/a/a$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mp4parser/a/a/a$a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
