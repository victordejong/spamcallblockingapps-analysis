.class public final Lcom/google/zxing/FormatException;
.super Lcom/google/zxing/ReaderException;
.source "FormatException.java"


# static fields
.field private static final c:Lcom/google/zxing/FormatException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/google/zxing/FormatException;

    invoke-direct {v0}, Lcom/google/zxing/FormatException;-><init>()V

    .line 30
    sput-object v0, Lcom/google/zxing/FormatException;->c:Lcom/google/zxing/FormatException;

    sget-object v1, Lcom/google/zxing/FormatException;->b:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Lcom/google/zxing/FormatException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/zxing/ReaderException;-><init>()V

    .line 34
    return-void
.end method

.method public static a()Lcom/google/zxing/FormatException;
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/google/zxing/FormatException;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/zxing/FormatException;

    invoke-direct {v0}, Lcom/google/zxing/FormatException;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/zxing/FormatException;->c:Lcom/google/zxing/FormatException;

    goto :goto_0
.end method
