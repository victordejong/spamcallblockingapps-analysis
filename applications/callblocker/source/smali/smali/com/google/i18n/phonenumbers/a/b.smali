.class public final Lcom/google/i18n/phonenumbers/a/b;
.super Ljava/lang/Object;
.source "RegexBasedMatcher.java"

# interfaces
.implements Lcom/google/i18n/phonenumbers/a/a;


# instance fields
.field private final a:Lcom/google/i18n/phonenumbers/a/c;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/google/i18n/phonenumbers/a/c;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/a/c;-><init>(I)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/a/b;->a:Lcom/google/i18n/phonenumbers/a/c;

    .line 35
    return-void
.end method

.method public static a()Lcom/google/i18n/phonenumbers/a/a;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/google/i18n/phonenumbers/a/b;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/a/b;-><init>()V

    return-object v0
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;Z)Z
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    const/4 p2, 0x0

    .line 54
    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h$d;Z)Z
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p2}, Lcom/google/i18n/phonenumbers/h$d;->a()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/a/b;->a:Lcom/google/i18n/phonenumbers/a/c;

    invoke-virtual {v1, v0}, Lcom/google/i18n/phonenumbers/a/c;->a(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/google/i18n/phonenumbers/a/b;->a(Ljava/lang/CharSequence;Ljava/util/regex/Pattern;Z)Z

    move-result v0

    goto :goto_0
.end method
