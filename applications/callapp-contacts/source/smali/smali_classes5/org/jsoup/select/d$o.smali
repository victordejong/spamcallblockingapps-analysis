.class public abstract Lorg/jsoup/select/d$o;
.super Lorg/jsoup/select/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "o"
.end annotation


# instance fields
.field protected final a:I

.field protected final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 446
    invoke-direct {p0, v0, p1}, Lorg/jsoup/select/d$o;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 441
    invoke-direct {p0}, Lorg/jsoup/select/d;-><init>()V

    .line 442
    iput p1, p0, Lorg/jsoup/select/d$o;->a:I

    .line 443
    iput p2, p0, Lorg/jsoup/select/d$o;->b:I

    return-void
.end method


# virtual methods
.method protected abstract a(Lorg/jsoup/nodes/h;)I
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public final a(Lorg/jsoup/nodes/h;Lorg/jsoup/nodes/h;)Z
    .locals 4

    .line 1241
    iget-object p1, p2, Lorg/jsoup/nodes/h;->g:Lorg/jsoup/nodes/m;

    check-cast p1, Lorg/jsoup/nodes/h;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 452
    instance-of p1, p1, Lorg/jsoup/nodes/f;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p0, p2}, Lorg/jsoup/select/d$o;->a(Lorg/jsoup/nodes/h;)I

    move-result p1

    .line 455
    iget p2, p0, Lorg/jsoup/select/d$o;->a:I

    const/4 v1, 0x1

    if-nez p2, :cond_2

    iget p2, p0, Lorg/jsoup/select/d$o;->b:I

    if-ne p1, p2, :cond_1

    return v1

    :cond_1
    return v0

    .line 457
    :cond_2
    iget v2, p0, Lorg/jsoup/select/d$o;->b:I

    sub-int v3, p1, v2

    mul-int v3, v3, p2

    if-ltz v3, :cond_3

    sub-int/2addr p1, v2

    rem-int/2addr p1, p2

    if-nez p1, :cond_3

    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 462
    iget v0, p0, Lorg/jsoup/select/d$o;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    .line 463
    invoke-virtual {p0}, Lorg/jsoup/select/d$o;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lorg/jsoup/select/d$o;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ":%s(%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 464
    :cond_0
    iget v0, p0, Lorg/jsoup/select/d$o;->b:I

    if-nez v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    .line 465
    invoke-virtual {p0}, Lorg/jsoup/select/d$o;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lorg/jsoup/select/d$o;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ":%s(%dn)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 466
    invoke-virtual {p0}, Lorg/jsoup/select/d$o;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    iget v2, p0, Lorg/jsoup/select/d$o;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lorg/jsoup/select/d$o;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, ":%s(%dn%+d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
