.class public final Lcom/vk/api/sdk/e/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/api/sdk/e/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0007J\u0010\u0010\u0003\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0003R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0005\u001a\u00060\u0006j\u0002`\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vk/api/sdk/utils/VKUtils$MD5;",
        "",
        "()V",
        "hex",
        "",
        "tmpBuilder",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "getTmpBuilder",
        "()Ljava/lang/StringBuilder;",
        "tmpBuilder$delegate",
        "Lcom/vk/api/sdk/utils/ThreadLocalDelegate;",
        "convert",
        "",
        "h",
        "",
        "b",
        "",
        "libapi-sdk-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/vk/api/sdk/e/h$a;

.field private static final c:[C

.field private static final d:Lcom/vk/api/sdk/e/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/aa;

    const-class v2, Lcom/vk/api/sdk/e/h$a;

    const-string v3, "tmpBuilder"

    const-string v4, "getTmpBuilder()Ljava/lang/StringBuilder;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vk/api/sdk/e/h$a;->a:[Lkotlin/reflect/KProperty;

    .line 144
    new-instance v0, Lcom/vk/api/sdk/e/h$a;

    invoke-direct {v0}, Lcom/vk/api/sdk/e/h$a;-><init>()V

    sput-object v0, Lcom/vk/api/sdk/e/h$a;->b:Lcom/vk/api/sdk/e/h$a;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 145
    fill-array-data v0, :array_0

    sput-object v0, Lcom/vk/api/sdk/e/h$a;->c:[C

    .line 146
    sget-object v0, Lcom/vk/api/sdk/e/h$a$a;->a:Lcom/vk/api/sdk/e/h$a$a;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lcom/vk/api/sdk/e/e;->a(Lkotlin/jvm/functions/Function0;)Lcom/vk/api/sdk/e/c;

    move-result-object v0

    sput-object v0, Lcom/vk/api/sdk/e/h$a;->d:Lcom/vk/api/sdk/e/c;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "h"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "MD5"

    .line 151
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 152
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "Charset.forName(charsetName)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 154
    sget-object v0, Lcom/vk/api/sdk/e/h$a;->b:Lcom/vk/api/sdk/e/h$a;

    invoke-direct {v0}, Lcom/vk/api/sdk/e/h$a;->a()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, "md5"

    .line 155
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1164
    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    .line 1165
    sget-object v3, Lcom/vk/api/sdk/e/h$a;->b:Lcom/vk/api/sdk/e/h$a;

    invoke-direct {v3}, Lcom/vk/api/sdk/e/h$a;->a()Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/vk/api/sdk/e/h$a;->c:[C

    and-int/lit16 v6, v2, 0xf0

    shr-int/lit8 v6, v6, 0x4

    aget-char v6, v5, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1166
    invoke-direct {v3}, Lcom/vk/api/sdk/e/h$a;->a()Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v5, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_0
    sget-object p0, Lcom/vk/api/sdk/e/h$a;->b:Lcom/vk/api/sdk/e/h$a;

    invoke-direct {p0}, Lcom/vk/api/sdk/e/h$a;->a()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "tmpBuilder.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private final a()Ljava/lang/StringBuilder;
    .locals 3

    sget-object v0, Lcom/vk/api/sdk/e/h$a;->d:Lcom/vk/api/sdk/e/c;

    sget-object v1, Lcom/vk/api/sdk/e/h$a;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Lcom/vk/api/sdk/e/c;->a(Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    return-object v0
.end method
