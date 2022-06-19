.class public final Lorg/bluecabin/textoo/util/CharSequenceSupport$;
.super Ljava/lang/Object;
.source "CharSequenceSupport.scala"


# static fields
.field public static final MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$;

    invoke-direct {v0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$;

    return-void
.end method

.method private charsToSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .locals 1

    .line 24
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public ImplicitCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    return-object p1
.end method

.method public toSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .locals 1

    .line 19
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/text/Spannable;

    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0, p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->charsToSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toSpanned(Ljava/lang/CharSequence;)Landroid/text/Spanned;
    .locals 1

    .line 13
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/text/Spanned;

    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->charsToSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    :goto_0
    return-object p1
.end method
