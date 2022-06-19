.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/x$a;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/x$b;
    }
.end annotation


# static fields
.field static final a:I = 0xb

.field static final b:I = 0xc

.field static final c:I = 0x10

.field static final d:I = 0x1a


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static a(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method static a(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static b(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method
