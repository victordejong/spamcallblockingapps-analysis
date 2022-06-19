.class public final Landroidx/core/f/f;
.super Ljava/lang/Object;
.source "TextUtilsCompat.java"


# static fields
.field private static final a:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/core/f/f;->a:Ljava/util/Locale;

    return-void
.end method

.method public static a(Ljava/util/Locale;)I
    .locals 2

    .prologue
    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 91
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 104
    :goto_0
    return v0

    .line 93
    :cond_0
    if-eqz p0, :cond_3

    sget-object v0, Landroidx/core/f/f;->a:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    invoke-static {p0}, Landroidx/core/f/b;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 95
    if-nez v0, :cond_1

    invoke-static {p0}, Landroidx/core/f/f;->b(Ljava/util/Locale;)I

    move-result v0

    goto :goto_0

    .line 99
    :cond_1
    const-string/jumbo v1, "Arab"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "Hebr"

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/util/Locale;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 126
    :goto_0
    return v0

    .line 122
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
