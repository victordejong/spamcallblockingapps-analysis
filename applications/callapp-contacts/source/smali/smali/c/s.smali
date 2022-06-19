.class public final Lc/s;
.super Lkotlin/a/d;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/s$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/a/d<",
        "Lc/i;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 \u00152\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004:\u0001\u0015B\u001f\u0008\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0011\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000eH\u0096\u0002R\u001e\u0010\u0005\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u0006X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0007\u001a\u00020\u0008X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lokio/Options;",
        "Lkotlin/collections/AbstractList;",
        "Lokio/ByteString;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/collections/RandomAccess;",
        "byteStrings",
        "",
        "trie",
        "",
        "([Lokio/ByteString;[I)V",
        "getByteStrings$okio",
        "()[Lokio/ByteString;",
        "[Lokio/ByteString;",
        "size",
        "",
        "getSize",
        "()I",
        "getTrie$okio",
        "()[I",
        "get",
        "index",
        "Companion",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final d:Lc/s$a;


# instance fields
.field final b:[Lc/i;

.field public final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/s$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lc/s;->d:Lc/s$a;

    return-void
.end method

.method private constructor <init>([Lc/i;[I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lkotlin/a/d;-><init>()V

    iput-object p1, p0, Lc/s;->b:[Lc/i;

    iput-object p2, p0, Lc/s;->c:[I

    return-void
.end method

.method public synthetic constructor <init>([Lc/i;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lc/s;-><init>([Lc/i;[I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 27
    iget-object v0, p0, Lc/s;->b:[Lc/i;

    array-length v0, v0

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 21
    instance-of v0, p1, Lc/i;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lc/i;

    .line 2021
    invoke-super {p0, p1}, Lkotlin/a/d;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 1029
    iget-object v0, p0, Lc/s;->b:[Lc/i;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 21
    instance-of v0, p1, Lc/i;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lc/i;

    .line 3021
    invoke-super {p0, p1}, Lkotlin/a/d;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 21
    instance-of v0, p1, Lc/i;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lc/i;

    .line 4021
    invoke-super {p0, p1}, Lkotlin/a/d;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
