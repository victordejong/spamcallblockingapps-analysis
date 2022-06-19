.class public abstract Lcom/google/common/base/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/c$b;,
        Lcom/google/common/base/c$d;,
        Lcom/google/common/base/c$c;,
        Lcom/google/common/base/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/n<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/base/c;
    .locals 1

    .line 127
    sget-object v0, Lcom/google/common/base/c$d;->a:Lcom/google/common/base/c$d;

    return-object v0
.end method

.method public static a(C)Lcom/google/common/base/c;
    .locals 1

    .line 295
    new-instance v0, Lcom/google/common/base/c$b;

    invoke-direct {v0, p0}, Lcom/google/common/base/c$b;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;I)I
    .locals 2

    .line 560
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 561
    invoke-static {p2, v0}, Lcom/google/common/base/m;->b(II)I

    :goto_0
    if-ge p2, v0, :cond_1

    .line 563
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/c;->b(C)Z

    move-result v1

    if-eqz v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final a(Ljava/lang/Character;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 909
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/c;->b(C)Z

    move-result p1

    return p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/common/base/c;->a(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public abstract b(C)Z
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 918
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
