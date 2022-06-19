.class public La7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La7/g;

.field public final b:La7/g;

.field public final c:Z

.field public final d:La7/d;

.field public final e:La7/f;


# direct methods
.method public constructor <init>(La7/d;La7/f;La7/g;La7/g;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La7/a;->d:La7/d;

    iput-object p2, p0, La7/a;->e:La7/f;

    iput-object p3, p0, La7/a;->a:La7/g;

    if-nez p4, :cond_0

    sget-object p1, La7/g;->c:La7/g;

    iput-object p1, p0, La7/a;->b:La7/g;

    goto :goto_0

    :cond_0
    iput-object p4, p0, La7/a;->b:La7/g;

    :goto_0
    iput-boolean p5, p0, La7/a;->c:Z

    return-void
.end method

.method public static a(La7/d;La7/f;La7/g;La7/g;Z)La7/a;
    .locals 9

    .line 1
    sget-object v0, La7/g;->b:La7/g;

    sget-object v1, La7/g;->c:La7/g;

    if-eq p2, v1, :cond_4

    sget-object v1, La7/d;->b:La7/d;

    const-string v2, "ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript"

    if-ne p0, v1, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v1, La7/f;->b:La7/f;

    if-ne p1, v1, :cond_3

    if-eq p2, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_3
    :goto_1
    new-instance v0, La7/a;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, La7/a;-><init>(La7/d;La7/f;La7/g;La7/g;Z)V

    return-object v0

    .line 3
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Impression owner is none"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
