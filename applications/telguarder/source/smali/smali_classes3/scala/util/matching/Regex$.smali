.class public final Lscala/util/matching/Regex$;
.super Ljava/lang/Object;
.source "Regex.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/util/matching/Regex$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/matching/Regex$;

    invoke-direct {v0}, Lscala/util/matching/Regex$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/util/matching/Regex$;->MODULE$:Lscala/util/matching/Regex$;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 574
    sget-object v0, Lscala/util/matching/Regex$;->MODULE$:Lscala/util/matching/Regex$;

    return-object v0
.end method


# virtual methods
.method public quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 813
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public quoteReplacement(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 827
    invoke-static {p1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
