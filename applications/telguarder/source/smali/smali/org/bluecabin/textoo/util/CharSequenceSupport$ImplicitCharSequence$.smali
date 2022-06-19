.class public Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;
.super Ljava/lang/Object;
.source "CharSequenceSupport.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluecabin/textoo/util/CharSequenceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImplicitCharSequence$"
.end annotation


# static fields
.field public static final MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;

    invoke-direct {v0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;

    return-void
.end method


# virtual methods
.method public final allLinks$extension(Ljava/lang/CharSequence;)Lscala/collection/Seq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lscala/collection/Seq<",
            "Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->toSpanned$extension(Ljava/lang/CharSequence;)Landroid/text/Spanned;

    move-result-object p1

    .line 34
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ClickableSpan;

    const/4 v3, 0x0

    invoke-interface {p1, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    new-instance v1, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$$anonfun$allLinks$extension$1;

    invoke-direct {v1, p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$$anonfun$allLinks$extension$1;-><init>(Landroid/text/Spanned;)V

    sget-object p1, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v2, Lscala/Predef$DummyImplicit$;->MODULE$:Lscala/Predef$DummyImplicit$;

    invoke-virtual {v2}, Lscala/Predef$DummyImplicit$;->dummyImplicit()Lscala/Predef$DummyImplicit;

    move-result-object v2

    invoke-virtual {p1, v2}, Lscala/Array$;->fallbackCanBuildFrom(Lscala/Predef$DummyImplicit;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lscala/collection/mutable/ArrayOps;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    return-object p1
.end method

.method public final equals$extension(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 3

    .line 27
    instance-of v0, p2, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    check-cast p2, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence;

    invoke-virtual {p2}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence;->chars()Ljava/lang/CharSequence;

    move-result-object p2

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    return v1
.end method

.method public final hashCode$extension(Ljava/lang/CharSequence;)I
    .locals 0

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method public final toSpannable$extension(Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .locals 1

    .line 28
    sget-object v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$;

    invoke-virtual {v0, p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->toSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    return-object p1
.end method

.method public final toSpanned$extension(Ljava/lang/CharSequence;)Landroid/text/Spanned;
    .locals 1

    .line 30
    sget-object v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$;

    invoke-virtual {v0, p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->toSpanned(Ljava/lang/CharSequence;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method
