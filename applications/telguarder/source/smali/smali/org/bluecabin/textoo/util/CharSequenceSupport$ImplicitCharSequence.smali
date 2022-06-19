.class public final Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence;
.super Ljava/lang/Object;
.source "CharSequenceSupport.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluecabin/textoo/util/CharSequenceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImplicitCharSequence"
.end annotation


# instance fields
.field private final chars:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence;->chars:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allLinks()Lscala/collection/Seq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;",
            ">;"
        }
    .end annotation

    .line 32
    sget-object v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;

    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence;->chars()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->allLinks$extension(Ljava/lang/CharSequence;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public chars()Ljava/lang/CharSequence;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence;->chars:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 27
    sget-object v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;

    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence;->chars()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->equals$extension(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 27
    sget-object v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;

    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence;->chars()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->hashCode$extension(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public toSpannable()Landroid/text/Spannable;
    .locals 2

    .line 28
    sget-object v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;

    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence;->chars()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->toSpannable$extension(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public toSpanned()Landroid/text/Spanned;
    .locals 2

    .line 30
    sget-object v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;

    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence;->chars()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->toSpanned$extension(Ljava/lang/CharSequence;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method
