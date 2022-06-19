.class public Lf/a/a/c;
.super Ljava/lang/Object;
.source "PinyinHelper.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sput-object v0, Lf/a/a/c;->a:[Ljava/lang/String;

    return-void
.end method

.method private static a(CLf/a/a/e/b;)[Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lf/a/a/c;->b(C)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 3
    aget-object v1, p0, v0

    invoke-static {v1, p1}, Lf/a/a/b;->b(Ljava/lang/String;Lf/a/a/e/b;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    .line 4
    :cond_1
    sget-object p0, Lf/a/a/c;->a:[Ljava/lang/String;

    return-object p0
.end method

.method private static b(C)[Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lf/a/a/a;->c()Lf/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lf/a/a/a;->b(C)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(CLf/a/a/e/b;)[Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lf/a/a/c;->a(CLf/a/a/e/b;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
